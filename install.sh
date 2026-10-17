#!/usr/bin/env bash

# Installer to install or update the NerdFonts [1] from the
# GitHub releases [2].
#
# Usage:
#
#   $ curl -s https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh -o install.sh
#   $ chmod ugo+x install.sh
#   $ ./install.sh --help
#
# Developer notes:
#
#   $ shfmt -i 4 -w install.sh
#   $ shellcheck install.sh
#
# [1] https://www.nerdfonts.com/
# [2] https://github.com/ryanoasis/nerd-fonts/releases

# SPDX-License-Identifier: MIT
# Author: Markus Heiser <markus.heiser@darmarit.de>
# Keywords: NerdFonts
#
scriptversion="2.2.5"
# Nerd Fonts Version: 3.5.1

# shellcheck enable=require-variable-braces

# This script must run with bash 3
# In fact it is checked against `checkbashisms` and no bashisms are
# used, except (because the workarounds are too involved):
# - Regexes
# - FUNCNAME
#
# Note that some tools on MacOS behave differently or have unfamiliar options
# and that also needs to be checked

set -euo pipefail
shopt -s nocasematch
if shopt | grep -q inherit_errexit; then
    shopt -s inherit_errexit
fi

# environment
# -----------

VERBOSE="${VERBOSE:-1}"
TERM="${TERM:-}"
# https://docs.github.com/de/rest/releases/releases?#get-a-release-by-tag-name
GH_API_VERSION="${GH_API_VERSION:-2022-11-28}"
GH_RELEASE_TAG="${GH_RELEASE_TAG:-latest}"
GH_OWNER="${GH_OWNER:-ryanoasis}"
GH_REPO="${GH_REPO:-nerd-fonts}"
GH_TOKEN="${GH_TOKEN:-}"
FONT_FORMATS="${FONT_FORMATS:-ttf|otf}"

# Get target font directory
if [ "$(uname)" = "Darwin" ]; then
    # MacOS
    sys_share_dir="/Library"
    usr_share_dir="${HOME}/Library"
    font_subdir="Fonts"
else
    # Linux
    sys_share_dir="/usr/local/share"
    usr_share_dir="${HOME}/.local/share"
    font_subdir="fonts"
fi
XDG_DATA_HOME="${XDG_DATA_HOME:-}"
if [ -n "${XDG_DATA_HOME}" ]; then
    usr_share_dir="${XDG_DATA_HOME}"
fi
if [ ${EUID:-0} -ne 0 ] || [ "$(id -u)" -ne 0 ]; then
    FONT_DIR="${FONT_DIR:-${usr_share_dir}/${font_subdir}/NerdFonts}"
else
    FONT_DIR="${FONT_DIR:-${sys_share_dir}/${font_subdir}/NerdFonts}"
fi

_REQUIREMENTS="curl mktemp sed tar wc"
_GH_RELEASE_DATA=
_GH_ASSET_DATA=
invoke_help=
dry_run=
archive_suffix=.tar.xz

# command line interface
# ----------------------

options_help() {
    cat <<EOF
options:
  -d, --dry             do not execute, show what would happen (pair with -v)
  -r, --release TAG     specify release tag, default is 'latest'
  -s, --silent          give no progress messages
  -t, --token TOKEN     specify Github token used to avoid rate limits
  -v, --verbose         increase verbosity level (can be used multiple times)
  -z, --zip             use zip archive (needed for older releases)
  -h, --help            show this help message
      --version         show version information
EOF
}

fetch_option_argument() {
    local option=$1
    shift
    [ "${OPTIND}" -gt "$#" ] && sh_die_err 2 "Option --${option} requires an argument"
    echo "${*:OPTIND:1}"
}

process_options() {
    while getopts ":dhr:st:vz-:" option; do
        case "${option}" in
            \?) sh_die_err 2 "Invalid option -${OPTARG}";;
            :) sh_die_err 2 "Option -${OPTARG} requires an argument";;
            d) dry_run=TRUE;;
            h) invoke_help=TRUE;;
            r) GH_RELEASE_TAG=$OPTARG;;
            s) VERBOSE=0;;
            t) GH_TOKEN=$OPTARG;;
            v) VERBOSE=$(( VERBOSE + 1 ));;
            z) archive_suffix=.zip;;
            -) case "${OPTARG}" in
                dry) dry_run=TRUE;;
                help) invoke_help=TRUE;;
                release=*) GH_RELEASE_TAG=${OPTARG#release=};;
                release) GH_RELEASE_TAG=$(fetch_option_argument "${OPTARG}" "$@"); OPTIND=$(( OPTIND + 1 ));;
                silent) VERBOSE=0;;
                token=*) GH_TOKEN=${OPTARG#token=};;
                token) GH_TOKEN=$(fetch_option_argument "${OPTARG}" "$@"); OPTIND=$(( OPTIND + 1 ));;
                verbose) VERBOSE=$(( VERBOSE + 1 ));;
                version) printf "Nerd Fonts installer %s\n" "${scriptversion}"; exit 0;;
                zip) archive_suffix=.zip;;
                *) sh_die_err 2 "Invalid option --${OPTARG}";;
            esac;;
        esac
    done
}

cmd_help() {
    cat <<EOF
Usage: $(basename "$0") [<options>] <cmd> [<args>]

Install and update Nerd Fonts [1] from the GitHub releases [2].
See \`$(basename "$0") install --help\` for details.

[1] https://www.nerdfonts.com/
[2] https://github.com/${GH_OWNER}/${GH_REPO}/releases

cmd:
  help      : show this help message
  env       : show environment
  list      : list released fonts
  install   : selectively install (or update) a font, a list of fonts or *all* fonts
  remove    : uninstall all Nerd Fonts

$(options_help)

required tools:
  ${_REQUIREMENTS}
EOF
}

cmd_install_help() {
    cat <<EOF
Usage: $(basename "$0") install [<options>] [<fontname>|all]...

Selectively install font(s) or *all* fonts to FONT_DIR.

fontname:
  The name of the font to be installed can be specified, or 'all' can be
  specified to install all fonts.

$(options_help)

If no argument is given a list of available fonts will be displayed,
and a font can be selected from the list.

By default the user font directory is used; run script as root for a
system wide install.

The target directory is determined to be
  ${FONT_DIR}
EOF
}

cmd_install() {
    local tmp_folder
    local font_list
    local font_list_size

    font_list=$(nerd_font_list)
    # shellcheck disable=SC2086 # We actually need word splitting of font_list here
    font_list_size=$(sh_count ${font_list})

    if [ "${font_list_size}" -eq 0 ]; then
        sh_die_err 5 "No fonts to install"
    fi

    if sh_in_array "all" "$@"; then
        msg_info "Install all ${font_list_size} fonts"
        msg_warn "Installing all fonts will take its time / time for a coffee break"
    elif [ "$#" -eq 0 ]; then
        PS3="Enter a number (or q to quit): "
        select font_name in ${font_list} "all"; do
            # shellcheck disable=SC2086 # We actually need word splitting of font_list here in the else
            if [ "${font_name}" = "all" ]; then
                msg_info "Install all ${font_list_size} fonts"
                msg_warn "Installing all fonts will take its time / time for a coffee break"
                break
            elif [ -n "${font_name}" ]; then
                msg_debug "User selected font ${font_name}"
                font_list="${font_name}"
                break
            elif sh_in_array "${REPLY}" "q" "quit"; then
                msg_debug "User aborted"
                return
            else
                msg_err "Invalid choice"
            fi
        done
    else
        font_list=$*
    fi
    msg_info "Install fonts into folder: ${FONT_DIR}"
    tmp_folder="$(mktemp -d)"
    # shellcheck disable=SC2064 # We want to expand tmp_folder now, it's a local variable
    trap "rm -rf -- '${tmp_folder}'" 0
    msg_debug "Workdir ${tmp_folder}"
    cd -- "${tmp_folder}" >/dev/null 2>&1 || sh_die_err 42 "Can't cd ${tmp_folder}"
    for font in ${font_list}; do
        nerd_install_font "${font}"
    done
    cd - >/dev/null 2>&1
    if command fc-cache; then
        msg_info "fontconfig: Build font information cache files"
        [ -z "${dry_run}" ] && fc-cache
    fi
}

cmd_remove_help() {
    cat <<EOF
Usage: $(basename "$0") remove [<options>]

Uninstall all previous installed Nerd Fonts.
In fact purging the directory ${FONT_DIR}

$(options_help)
EOF
}

cmd_remove() {
    [ "$#" -ne 0 ] && sh_die_err 42 "${FUNCNAME#"cmd."}: unknown arguments $*"
    if [ -d "${FONT_DIR}" ]; then
        # shellcheck disable=SC2010 # We can not use a glob, we want to count with grep
        msg_debug "Removing $(cd -- "${FONT_DIR}" && ls -R1 . | grep -cEv "^$|^\.:$|^\./") files"
        msg_info "Remove font folder ${FONT_DIR}"
        [ -z "${dry_run}" ] && rm -rf -- "${FONT_DIR}"
        if command fc-cache; then
            msg_info "fontconfig: Build font information cache files"
            [ -z "${dry_run}" ] && fc-cache
        fi
    else
        msg_err "Nerd Fonts not installed at ${FONT_DIR}"
    fi
}

cmd_list_help() {
    cat <<EOF
Usage: $(basename "$0") list [<options>]

Fetch the name of all fonts for the given release.

$(options_help)
EOF
}

cmd_list() {
    [ "$#" -ne 0 ] && sh_die_err 42 "${FUNCNAME#"cmd."}: unknown arguments $*"
    if [ "${GH_RELEASE_TAG}" = "latest" ]; then
        GH_RELEASE_TAG="$(gh_latest_release)"
        msg_info "${GH_OWNER}/${GH_REPO}: latest (${GH_RELEASE_TAG})"
    else
        msg_info "${GH_OWNER}/${GH_REPO}: ${GH_RELEASE_TAG}"
    fi
    nerd_font_list
}

cmd_env_help() {
    cat <<EOF
Usage: $(basename "$0") env [<options>]

Show all relevant/used environment variable values.

$(options_help)
EOF
}

cmd_env() {
    [ "$#" -ne 0 ] && sh_die_err 42 "${FUNCNAME#"cmd."}: unknown arguments $*"
    cat <<EOF
You can set these variables, and the current values are:
VERBOSE=${VERBOSE}
GH_API_VERSION=${GH_API_VERSION}
GH_RELEASE_TAG=${GH_RELEASE_TAG}
GH_OWNER=${GH_OWNER}
GH_REPO=${GH_REPO}
GH_TOKEN=${GH_TOKEN}
FONT_DIR=${FONT_DIR}
FONT_FORMATS=${FONT_FORMATS}
XDG_DATA_HOME=${XDG_DATA_HOME}
TERM=${TERM}

VERBOSE can be set to
 0 : silent          # --quiet
 1 : info
 2 : debug           # --verbose
 3 : deep debug      # --verbose --verbose
EOF
}

# Nerd Fonts
# ----------

nerd_assemble_released_archives() {
    # Returns pairs of "Archive-basename|asset-ID"
    # or "Archive-basename|download-url" depending on
    # GH_TOKEN usage
    local assets_regex="^ *\"assets\":"
    local aid_regex="^ *\"id\":"
    local browser_regex="^ *\"browser_download_url\":"
    local name_regex="^ *\"name\":"
    local end1_regex="^ *},$"
    local end2_regex="^ *],$"
    local extract_id='s/[^:]*: *\([0-9a-zA-Z]*\).*/\1/'
    local extract_string='s/[^:]*[^"]*"\([^"]*\).*/\1/'
    local assets_started=
    local aid=
    local name=
    msg_debug "nerd_assemble_released_archives() for ${archive_suffix}"
    gh_release_data |
        while IFS= read -r line; do
            [ -z "${assets_started}" ] && [[ ! "${line}" =~ ${assets_regex} ]] && continue
            assets_started=true
            [[ "${line}" =~ ${end2_regex} ]] && break # end of assets

            if [ -z "${GH_TOKEN}" ]; then
                if [[ "${line}" =~ ${browser_regex} ]] && [ -z "${aid}" ]; then
                    aid=$(echo "${line}" | sed "${extract_string}")
                fi
            else
                if [[ "${line}" =~ ${aid_regex} ]] && [ -z "${aid}" ]; then
                    aid=$(echo "${line}" | sed "${extract_id}")
                fi
            fi
            if [[ "${line}" =~ ${name_regex} ]]; then
                name=$(echo "${line}" | sed "${extract_string}")
            fi
            if [[ "${line}" =~ ${end1_regex} ]] && [ -n "${aid}" ]; then
                # Select only one suffix
                if [[ "${name}" == *"${archive_suffix}" ]]; then
                    printf "%s|%s\n" "${name%"${archive_suffix}"}" "${aid}"
                fi
                aid=
            fi
        done
}

nerd_released_archives() {
    _GH_ASSET_DATA="${_GH_ASSET_DATA:-$(nerd_assemble_released_archives)}"
    if [ "${archive_suffix}" != ".zip" ] && [ -z "${_GH_ASSET_DATA}" ]; then
        sh_die_err 5 "No .xz archives found, maybe use --zip"
    fi
    printf "%s\n" "${_GH_ASSET_DATA}"
}

nerd_font_list() {
    nerd_released_archives |
        while IFS= read -r line; do
            if [[ "${line}" == *FontPatcher* ]]; then
                continue
            fi
            echo "${line%%|*}"
        done
}

nerd_find_spelling() {
    nerd_released_archives |
        while IFS= read -r line; do
            if [[ "${1}" == "${line%%|*}" ]]; then
                echo "${line%%|*}"
                return
            fi
        done
}

nerd_find_asset_id() {
    nerd_released_archives |
        while IFS= read -r line; do
            if [ "${line%%|*}" = "${1}" ]; then
                echo "${line#*|}"
            fi
        done
}

nerd_install_font() {
    # usage:  nerd_install_font <font name>

    local aid
    local fontname
    fontname=$(nerd_find_spelling "${1}")
    if [ -z "${fontname}" ]; then
        sh_die_err 3 "Font ${1} does not exists in release ${GH_RELEASE_TAG}"
    fi
    aid=$(nerd_find_asset_id "${fontname}")
    if [ -z "${aid}" ]; then
        sh_die_err 42 "Can not find asset ID/URL of ${fontname}"
    fi
    if [[ "${aid}" == https://* ]]; then
        msg_info "Download & install font: ${fontname} (${GH_RELEASE_TAG})"
    else
        msg_info "Download & install font: ${fontname} (${GH_RELEASE_TAG}, asset ${aid})"
    fi
    (
        set -e
        local dst
        gh_download_asset "${fontname}${archive_suffix}" "${aid}"
        mkdir -p "${fontname}"
        if [ "${archive_suffix}" != ".zip" ]; then
            tar xf "${fontname}${archive_suffix}" -C "${fontname}"
        else
            unzip -j -q "${fontname}${archive_suffix}" -d "${fontname}"
        fi
        [ -z "${dry_run}" ] && mkdir -p -- "${FONT_DIR}"
        local found_one=
        for filename in "${fontname}"/*; do
            if [[ "${filename##*.}" =~ ${FONT_FORMATS} ]]; then
                dst="${FONT_DIR}/$(basename "${filename}")"
                msg_debug "Install font: ${dst}"
                [ -z "${dry_run}" ] && mv -- "${filename}" "${dst}"
                found_one=true
            fi
        done
        if [ -z "${found_one}" ]; then
            msg_warn "No font file matching \"${FONT_FORMATS}\" for ${fontname}"
        fi
    )
    sh_prompt_err $?
}

# github tools
# ------------

gh_latest_release() {
    msg_debug "gh_latest_release() URL https://github.com/${GH_OWNER}/${GH_REPO}/releases/latest"
    basename "$(curl -H "${AUTH}" -fs -o/dev/null -w "%{redirect_url}" "https://github.com/${GH_OWNER}/${GH_REPO}/releases/latest")"
}

gh_release_data() {
    gh_release_tag
    if [ "${_GH_RELEASE_DATA}" = "" ]; then
        _GH_RELEASE_DATA="$(gh_get_release_data)"
    fi
    if echo "${_GH_RELEASE_DATA}" | grep -q '"message": "Not Found"' >/dev/null 2>&1; then
        msg_debug "Release data: ${_GH_RELEASE_DATA}"
        sh_die_err 42 "Release tag ${GH_RELEASE_TAG} does not exists"
    fi
    if echo "${_GH_RELEASE_DATA}" | grep -q '"message":"API rate limit exceeded' >/dev/null 2>&1; then
        msg_debug "Release data: ${_GH_RELEASE_DATA}"
        sh_die_err 42 "GitHub API rate limit exceeded. Wait or use GH_TOKEN."
    fi
    echo "${_GH_RELEASE_DATA}"
}

gh_release_tag() {
    if [ "${GH_RELEASE_TAG}" = "latest" ]; then
        GH_RELEASE_TAG="$(gh_latest_release)"
    fi
    echo "${GH_RELEASE_TAG}"
}

gh_get_release_data() {
    local url
    url="https://api.github.com/repos/${GH_OWNER}/${GH_REPO}/releases/tags/$(gh_release_tag)"
    msg_debug "gh_get_release_data() URL ${url}"
    curl --silent -L \
        -H "Accept: application/vnd.github+json" \
        -H "X-GitHub-Api-Version: ${GH_API_VERSION}" \
        -H "${AUTH}" \
        "${url}"
}

gh_download_asset() {
    # usage: gh_download_asset <target file name> <asset id/url>

    local fname="${1}"
    local aid="${2}"
    local url
    local filesize

    if [[ "${aid}" == https://* ]]; then
        url=$aid
    else
        url="https://api.github.com/repos/${GH_OWNER}/${GH_REPO}/releases/assets/${aid}"
    fi
    msg_debug "gh_download_asset URL ${url}"
    curl --silent -L \
        -H "Accept: application/octet-stream" \
        -H "X-GitHub-Api-Version: ${GH_API_VERSION}" \
        -H "${AUTH}" \
        "${url}" -o "${fname}" || sh_die_err $? "Can't download ${url}"

    # check if the response from GH is just a "Not Found"
    filesize=$(wc -c <"${fname}")
    if [ "${filesize}" -ge 40 ]; then
        if head -c 40 "${fname}" | grep -q "Not Found"; then
            msg_err "Asset Not Found: ${url}"
            return 42
        fi
        if head -c 40 "${fname}" | grep -q '"message":"API rate limit exceeded' >/dev/null 2>&1; then
            sh_die_err 42 "GitHub API rate limit exceeded. Wait or use GH_TOKEN."
        fi
    fi
}

# script helpers
# --------------

msg_err() {
    printf "${_BRed}ERROR:${_creset} %s\n" "$*" >&2
    return 0
}
msg_warn() {
    printf "${_BBlue}WARN:${_creset}  %s\n" "$*" >&2
    return 0
}
msg_info() {
    if [ "${VERBOSE}" -ge 1 ]; then
        printf "${_BGreen}INFO:${_creset}  %s\n" "$*" >&2
    fi
    return 0
}
msg_debug() {
    if [ "${VERBOSE}" -ge 2 ]; then
        printf "${_BYellow}DEBUG:${_creset} %s\n" "$*" >&2
    fi
    return 0
}

sh_die_err() {
    msg_err "(${1-1}) ${2-died} "
    exit "${1-1}"
}

sh_prompt_err() {
    ## Use this as last command in your function to prompt an ERROR message if
    ## the exit code is not zero.
    local err=${1}
    [ "${err}" -ne 0 ] && msg_err "${FUNCNAME[1]} exit with error (${err})"
    return "${err}"
}

sh_in_array() {
    local word="${1}"
    shift
    for e in "$@"; do [ "${e}" = "${word}" ] && return 0; done
    return 1
}

sh_count() {
    echo $#
}

scripts_requires() {
    local exit_val=0
    while [ -n "${1-}" ]; do
        if ! command -v "${1}" >/dev/null 2>&1; then
            msg_err "Missing tool: ${1}"
            exit_val=42
        fi
        shift
    done
    return "${exit_val}"
}

main() {
    process_options "$@"
    shift $((OPTIND - 1))
    OPTIND=1

    local cmd="${1:-help}"
    shift || true

    # Same options after command
    process_options "$@"
    shift $((OPTIND - 1))

    if [ "${archive_suffix}" = ".zip" ]; then
        _REQUIREMENTS="${_REQUIREMENTS} unzip"
    fi
    # shellcheck disable=SC2086 # We actually need word splitting of _REQUIREMENTS here
    scripts_requires ${_REQUIREMENTS} || sh_die_err $? "First install missing required tools"

    if [ -n "${GH_TOKEN}" ]; then
        msg_debug "Using Github token to avoid rate limits and allow draft downloads"
        AUTH="Authorization: Bearer ${GH_TOKEN}"
    else
        AUTH="X-noop;"
    fi

    if [ "${cmd}" = "help" ]; then
        cmd_help
    else
        if [ -z "${invoke_help}" ]; then
            printf "Nerd Fonts installer -- Version %s\n                     -- Bash %s\n\n" \
                "${scriptversion}" "${BASH_VERSION}" >&2
            if [ -n "${dry_run}" ]; then
                msg_warn "Dry run: No files will be created or removed"
            fi
        fi
        if [ "${cmd}" = "list" ] || [ "${cmd}" = "install" ]; then
            if [ -z "${invoke_help}" ]; then
                # Needed to fill 'cache' environment variables:
                gh_release_data >/dev/null
                nerd_released_archives >/dev/null
            fi
        fi
        _type="$(type -t "cmd_${cmd}")" || true
        if [ "${_type}" != "function" ]; then
            sh_die_err 42 "Unknown command: ${cmd} / use --help"
        fi

        if [ -n "${invoke_help}" ]; then
            _type="$(type -t "cmd_${cmd}_help")" || true
            if [ "${_type}" = 'function' ]; then
                "cmd_${cmd}_help"
            else
                "cmd_help"
            fi
        else
            [ "${VERBOSE}" -ge 3 ] && set -x
            "cmd_${cmd}" "$@"
        fi
    fi
}

if [ ! -t 2 ] ||
    [ "${TERM:-unknown}" = "unknown" ] ||
    [ "${TERM}" = "dumb" ] ||
    [ -n "${NO_COLOR:-}" ]; then
    _BYellow=''
    _BBlue=''
    _BRed=''
    _BGreen=''
    _creset=''
else
    _BYellow='\e[1;33m'
    _BBlue='\e[1;94m'
    _BRed='\e[1;31m'
    _BGreen='\e[1;32m'
    _creset='\e[0m'
fi

main "$@"
