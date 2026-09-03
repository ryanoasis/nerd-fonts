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
scriptversion="2.0.0"
# Nerd Fonts Version: 3.5.0

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
if shopt | grep -s inherit_errexit; then
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

# command line interface
# ----------------------

cmd_help() {
    cat <<EOF
Usage: $(basename "$0") <cmd>

Install and update Nerd Fonts [1] from the GitHub releases [2].
See \`$(basename "$0") install --help\` for details.

[1] https://www.nerdfonts.com/
[2] https://github.com/${GH_OWNER}/${GH_REPO}/releases

cmd:
  help      : show this help message
  env       : show environment
  list      : list released fonts
  install   : selectively install (or update) a font or *all* fonts
  remove    : uninstall all Nerd Fonts

required tools:
  ${_REQUIREMENTS}
EOF
}

cmd_install_help() {
    cat <<EOF
Usage: $(basename "$0") install [<fontname>|all]

fontname:
  The name of the font to be installed can be specified, or 'all' can be
  specified to install all fonts.

Selectively install one font or *all* fonts to FONT_DIR.

If no argument is given a list of available fonts will be displayed,
and a font can be selected from the list.

By default the user font directory is used; run script as root for a
system wide install.

The target directory is determined to be
  ${FONT_DIR}
EOF
}
cmd_install() {
    local font_name="${1-}"
    local tmp_folder
    local font_list
    local font_list_size

    font_list=$(nerd_font_list)
    # shellcheck disable=SC2086 # We actually need word splitting of font_list here
    font_list_size=$(sh_count ${font_list})

    if [ "${font_name}" = "all" ]; then
        msg_info "install all ${font_list_size} fonts"
        msg_warn "installing all fonts will take its time / time for a coffee break"
    elif [ "${font_name}" = "" ]; then
        PS3="Enter a number: "
        select font_name in ${font_list} "all"; do
            # shellcheck disable=SC2086 # We actually need word splitting of font_list here in the else
            if [ "${font_name}" = "all" ]; then
                msg_info "install all ${font_list_size} fonts"
                msg_warn "installing all fonts will take its time / time for a coffee break"
                break
            elif sh_in_array "${font_name}" ${font_list}; then
                font_list="${font_name}"
                break
            else
                msg_err "invalid choice."
            fi
        done
        msg_debug "user selected font ${font_name}"
    else
        # shellcheck disable=SC2086 # We actually need word splitting of font_list here
        sh_in_array "${font_name}" ${font_list} ||
            sh_die_err 42 "font ${font_name} does not exists in release ${GH_RELEASE_TAG}"
        font_list="${font_name}"
    fi

    msg_info "install fonts into folder: ${FONT_DIR}"
    tmp_folder="$(mktemp -d)"
    msg_debug "Workdir ${tmp_folder}"
    cd -- "${tmp_folder}" >/dev/null 2>&1 || sh_die_err 42 "can't cd ${tmp_folder}"
    for font in ${font_list}; do
        nerd_install_font "${font}"
    done
    cd - >/dev/null 2>&1
    rm -rf -- "${tmp_folder}"
    if command fc-cache; then
        msg_info "fontconfig: build font information cache files"
        fc-cache
    fi
}

cmd_remove_help() {
    cat <<EOF
Usage: $(basename "$0") remove

Uninstall all previous installed Nerd Fonts.
In fact purging the directory ${FONT_DIR}
EOF
}

cmd_remove() {
    [ "$#" -ne 0 ] && sh_die_err 42 "${FUNCNAME#"cmd."}: unknown arguments $*"
    if [ -d "${FONT_DIR}" ]; then
        msg_info "remove font folder ${FONT_DIR}"
        rm -rf "${FONT_DIR}"
        if command fc-cache; then
            msg_info "fontconfig: build font information cache files"
            fc-cache
        fi
    else
        msg_err "Nerd Fonts not installed at ${FONT_DIR}"
    fi
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
 0 : silent
 1 : info
 2 : debug
 3 : deep debug
EOF
}

# Nerd Fonts
# ----------

nerd_assemble_released_archives() {
    # Returns pairs of "Archive-basename asset-ID"
    local archive_suffix=.tar.xz
    local assets_regex="^ *\"assets\":"
    local aid_regex="^ *\"id\":"
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

            if [[ "${line}" =~ ${aid_regex} ]] && [ -z "${aid}" ]; then
                aid=$(echo "${line}" | sed "${extract_id}")
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

nerd_find_asset_id() {
    local aid=
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
    aid=$(nerd_find_asset_id "${1}")
    if [ -z "${aid}" ]; then
        sh_die_err 42 "Can not find asset ID of ${1}"
    fi
    msg_info "download & install font: ${1} (asset ${aid})"
    (
        set -e
        local dst
        gh_download_asset "${1}.tar.xz" "${aid}"
        mkdir -p "${1}"
        tar xf "${1}.tar.xz" -C "${1}"
        mkdir -p "${FONT_DIR}"
        local found_one=
        for filename in "${1}"/*; do
            if [[ "${filename##*.}" =~ ${FONT_FORMATS} ]]; then
                dst="${FONT_DIR}/$(basename "${filename}")"
                msg_debug "install font: ${dst}"
                mv "${filename}" "${dst}"
                found_one=true
            fi
        done
        if [ -z "${found_one}" ]; then
            msg_warn "no font file matching \"${FONT_FORMATS}\" for ${1}"
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
        msg_debug "release data: ${_GH_RELEASE_DATA}"
        sh_die_err 42 "release tag ${GH_RELEASE_TAG} does not exists"
    fi
    if echo "${_GH_RELEASE_DATA}" | grep -q '"message":"API rate limit exceeded' >/dev/null 2>&1; then
        msg_debug "release data: ${_GH_RELEASE_DATA}"
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
    # usage: gh_download_asset <target file name> <asset id>

    local fname="${1}"
    local aid="${2}"
    local url
    local filesize

    url="https://api.github.com/repos/${GH_OWNER}/${GH_REPO}/releases/assets/${aid}"
    msg_debug "gh_download_asset URL ${url}"
    curl --silent -L \
        -H "Accept: application/octet-stream" \
        -H "X-GitHub-Api-Version: ${GH_API_VERSION}" \
        -H "${AUTH}" \
        "${url}" -o "${fname}" || sh_die_err $? "can't download ${url}"

    # check if the response from GH is just a "Not Found"
    filesize=$(wc -c <"${fname}")
    if [ "${filesize}" -ge 30 ]; then
        if head -c 30 "${fname}" | grep -q "Not Found"; then
            msg_err "Asset Not Found: ${url}"
            return 42
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
            msg_err "missing command ${1}"
            exit_val=42
        fi
        shift
    done
    return "${exit_val}"
}

main() {
    local cmd="${1:-help}"
    shift || true
    # shellcheck disable=SC2086 # We actually need word splitting of _REQUIREMENTS here
    scripts_requires ${_REQUIREMENTS} || sh_die_err $? "first install missing requirements"

    if [ -n "${GH_TOKEN}" ]; then
        msg_debug "Using Github token to avoid rate limits and allow draft downloads"
        AUTH="Authorization: Bearer ${GH_TOKEN}"
    else
        AUTH="X-noop;"
    fi

    if [ "${cmd}" = "help" ] || [ "${cmd}" = "--help" ]; then
        cmd_help
    else
        if [ "${cmd}" = "list" ] || [ "${cmd}" = "install" ]; then
            # Needed to fill 'cache' environment variables:
            gh_release_data >/dev/null
            nerd_released_archives >/dev/null
        fi
        _type="$(type -t "cmd_${cmd}")" || true
        if [ "${_type}" != "function" ]; then
            sh_die_err 42 "unknown command: ${cmd} / use --help"
        fi

        if [ "${1-}" = '--help' ]; then
            _type="$(type -t "cmd_${cmd}_help")" || true
            if [ "${_type}" = 'function' ]; then
                "cmd_${cmd}_help"
            else
                "cmd_help"
            fi
        else
            [ "${VERBOSE}" -ge 3 ] && set -x
            "cmd.${cmd}" "$@"
        fi
    fi
}

echo "Nerd Fonts installer -- Version ${scriptversion}"
echo "                     -- Bash ${BASH_VERSION}"

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
