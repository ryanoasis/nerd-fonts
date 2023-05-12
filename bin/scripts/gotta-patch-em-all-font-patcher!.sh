#!/usr/bin/env bash
# Nerd Fonts Version: 3.0.0
# Script Version: 1.4.5
#
# You can supply options to the font-patcher via environment variable NERDFONTS
# That option will override the defaults (also defaults of THIS script).

# used for debugging
# set -x

LINE_PREFIX="# [Nerd Fonts] "

# Check for Fontforge
type fontforge >/dev/null 2>&1 || {
  echo >&2 "$LINE_PREFIX FontForge must be installed before running this script."
  echo >&2 "# Please see installation instructions at"
  echo >&2 "# http://designwithfontforge.com/en-US/Installing_Fontforge.html"
  exit 1
}

# Get script directory to set source and target dirs relative to it
sd="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

res1=$(date +%s)
repo_root_dir=$(dirname $(dirname ${sd})) # two levels up (i.e. ../../)
# Set source and target directories
like_pattern='.*\.\(otf\|ttf\|sfd\)'
last_font_root=""
last_current_dir=""
unpatched_parent_dir="src/unpatched-fonts"
patched_parent_dir="patched-fonts"
timestamp_parent_dir=${patched_parent_dir}
source_fonts_dir="${repo_root_dir}/${unpatched_parent_dir}"
max_parallel_process=8

function activate_keeptime {
  type ttfdump >/dev/null 2>&1 || {
    echo >&2 "$LINE_PREFIX ttfdump must be installed for option --keeptime"
    exit 1
  }
  keeptime=TRUE
}

function activate_checkfont {
  patched_parent_dir="check-fonts"
}

function activate_info {
  info_only=TRUE
  echo "${LINE_PREFIX} 'Info Only' option given, only generating font info (not patching)"
}

function show_help {
  echo "Usage: $0 [OPTION] [FILTER]"
  echo
  echo "    OPTION:"
  echo "        -c, --checkfont     Create the font(s) in check-fonts/ instead"
  echo "        -t, --keeptime      Try to preserve timestamp of previously patched"
  echo "                            font in patched-fonts/ directory"
  echo "        -v, --verbose       Show more information when running"
  echo "        -i, --info          Rebuild JUST the readmes"
  echo "        -j, --jobs          Run up to 8 patch processes in parallel"
  echo "        -h, --help          Show this help"
  echo
  echo "    FILTER:"
  echo "        The filter argument to this script is a filter for the fonts to patch."
  echo "        The filter is a regex (glob "*" is expressed as "[^/]*", see \`man 7 glob\`)"
  echo "        All font files that start with that filter (and are ttf, otf, or sfd files) will"
  echo "        be processed only."
  echo "          Example ./gotta-patch-em-all-font-patcher\!.sh \"iosevka\""
  echo "          Process all font files that start with \"iosevka\""
  echo "        If the argument starts with a '/' all font files in a directory that matches"
  echo "        the filter are processed only."
  echo "          Example ./gotta-patch-em-all-font-patcher\!.sh \"/iosevka\""
  echo "          Process all font files that are in directory \"iosevka\""
}

function find_font_root {
  # e.g. /a/b/c/nerd-fonts/src/unpatched-fonts/Meslo
  sed -E "s|(${unpatched_parent_dir}/[^/]*).*|\1|" <<< "$1"
}

while getopts ":chijtv-:" option; do
  case "${option}" in
    c)
      activate_checkfont
      ;;
    h)
      show_help
      exit 0;;
    i)
      activate_info
      ;;
    j)
      parallel=TRUE
      ;;
    t)
      activate_keeptime
      ;;
    v)
      verbose=TRUE
      ;;
    -)
      case "${OPTARG}" in
        checkfont)
          activate_checkfont
          ;;
        help)
          show_help
          exit 0;;
        info)
          activate_info
          ;;
        jobs)
          parallel=TRUE
          ;;
        keeptime)
          activate_keeptime
          ;;
        verbose)
          verbose=TRUE
          ;;
        *)
          echo >&2 "Option '--${OPTARG}' unknown"
          exit 1;;
      esac;;
    *)
      echo >&2 "Option '-${OPTARG}' unknown"
      exit 1;;
  esac
done
shift $((${OPTIND}-1))

if [ $# -gt 1 ]
then
  echo >&2 "Unknown parameter(s): $2 ..."
  exit 1
fi

if [ $# -eq 1 ]
then
  if [[ "${1:0:1}" == "/" ]]
  then
    like_pattern=".*$1/.*\.\(otf\|ttf\|sfd\)"
    echo "$LINE_PREFIX Filter given, limiting search and patch to pathname pattern '$1'"
  else
    like_pattern=".*/$1[^/]*\.\(otf\|ttf\|sfd\)"
    echo "$LINE_PREFIX Filter given, limiting search and patch to filename pattern '$1'"
  fi
fi

# correct way to output find results into an array (when files have space chars, etc)
# source: https://stackoverflow.com/questions/8213328/bash-script-find-output-to-array
source_fonts=()
while IFS= read -d $'\0' -r file ; do
  source_fonts=("${source_fonts[@]}" "$file")
done < <(find "$source_fonts_dir" -iregex ${like_pattern} -type f -print0)

# print total number of source fonts found
echo "$LINE_PREFIX Total source fonts found: ${#source_fonts[*]}"

# Use one date-time for ALL fonts and for creation and modification date in the font file
if [ -z "${SOURCE_DATE_EPOCH}" ]
then
  export SOURCE_DATE_EPOCH=$(date +%s)
fi
release_timestamp=$(date -R --date=@${SOURCE_DATE_EPOCH} 2>/dev/null) || {
  echo >&2 "$LINE_PREFIX Invalid release timestamp SOURCE_DATE_EPOCH: ${SOURCE_DATE_EPOCH}"
  exit 2
}
echo "$LINE_PREFIX Release timestamp is ${release_timestamp}"

function patch_font {
  local f=$1; shift
  local i=$1; shift
  local purge=$1; shift

  # Try to copy the release date from the 'original' patch
  if [ -n "${keeptime}" ]
  then
    # take everything before the last slash (/) to start building the full path
    local ts_font_dir="${f%/*}/"
    local ts_font_dir="${ts_font_dir/$unpatched_parent_dir/$timestamp_parent_dir}"
    local one_font=$(find ${ts_font_dir} -name '*.[ot]tf' | head -n 1)
    if [ -n "${one_font}" ]
    then
      orig_font_date=$(ttfdump -t head "${one_font}" | \
        grep -E '[^a-z]modified:.*0x' | sed 's/.*x//' | tr 'a-f' 'A-F')
      SOURCE_DATE_EPOCH=$(dc -e "16i ${orig_font_date} Ai 86400 24107 * - p")
      echo "$LINE_PREFIX Release timestamp adjusted to $(date -R --date=@${SOURCE_DATE_EPOCH})"
    fi
  fi

  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  # find replace unpatched parent dir with patched parent dir:
  local patched_font_dir="${patched_font_dir/$unpatched_parent_dir/$patched_parent_dir}"

  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"
  if [ -n "${purge}" ]
  then
    if [ -n "${verbose}" ]
    then
      echo "Purging patched font dir ${patched_font_dir}"
    fi
    rm ${patched_font_dir}/*
  fi

  config_parent_dir=$( cd "$( dirname "$f" )" && cd ".." && pwd)
  config_dir=$( cd "$( dirname "$f" )" && pwd)

  # source the font config file if exists:
  # fetches for example config_patch_flags
  unset config_patch_flags
  if [ -f "$config_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_dir/config.cfg"
  elif [ -f "$config_parent_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_parent_dir/config.cfg"
  elif [ -f "$(find_font_root $config_parent_dir)/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$(find_font_root $config_parent_dir)/config.cfg"
  fi

  if [ -f "$config_parent_dir/config.json" ]
  then
    # load font configuration file and remove ligatures (for mono fonts):
    font_config="--removeligatures --configfile $config_parent_dir/config.json"
  else
    font_config=""
  fi

  if [ "$post_process" ]
  then
    # There is no postprocess active anymore, see the commit that introduced
    # this comment for the Hack postprocess we once had. It called e.g. ttfautohint.
    post_process="--postprocess=${repo_root_dir}/${post_process}"
  else
    post_process=""
  fi

  cd "$repo_root_dir" || {
    echo >&2 "# Could not find project parent directory"
    exit 3
  }
  # Add logfile always (but can be overridden by config_patch_flags in config.cfg and env var NERDFONTS)
  config_patch_flags="--debug 1 ${config_patch_flags}"
  # Use absolute path to allow fontforge being an AppImage (used in CI)
  PWD=`pwd`
  # Create "Nerd Font"
  if [ -n "${verbose}" ]
  then
    echo "fontforge -quiet -script ${PWD}/font-patcher "$f" -q ${font_config} $powerline $post_process -c --no-progressbars --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS}"
  fi
  { OUT=$(fontforge -quiet -script ${PWD}/font-patcher "$f" -q ${font_config} $powerline $post_process -c --no-progressbars \
                    --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS} 2>&1 1>&3 3>&- ); } 3>&1
  if [ $? -ne 0 ]; then printf "$OUT\nPatcher run aborted!\n\n"; fi
  # Create "Nerd Font Mono"
  if [ -n "${verbose}" ]
  then
    echo "fontforge -quiet -script ${PWD}/font-patcher "$f" -q -s ${font_config} $powerline $post_process -c --no-progressbars --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS}"
  fi
  { OUT=$(fontforge -quiet -script ${PWD}/font-patcher "$f" -q -s ${font_config} $powerline $post_process -c --no-progressbars \
                    --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS} 2>&1 1>&3 3>&- ); } 3>&1
  if [ $? -ne 0 ]; then printf "$OUT\nPatcher run aborted!\n\n"; fi
  # Create "Nerd Font Propo"
  if [ -n "${verbose}" ]
  then
    echo "fontforge -quiet -script ${PWD}/font-patcher "$f" -q --variable ${font_config} $powerline $post_process -c --no-progressbars --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS}"
  fi
  { OUT=$(fontforge -quiet -script ${PWD}/font-patcher "$f" -q --variable ${font_config} $powerline $post_process -c --no-progressbars \
                    --outputdir "${patched_font_dir}" $config_patch_flags ${NERDFONTS} 2>&1 1>&3 3>&- ); } 3>&1
  if [ $? -ne 0 ]; then printf "$OUT\nPatcher run aborted!\n\n"; fi

  # wait for this group of background processes to finish to avoid forking too many processes
  # that can add up quickly with the number of combinations
  #wait

}

# Generates font information: readmes, combinations, licenses, and variation counts
# $1 = fontdir path
# $2 = font file name (used for metadata)
function generate_info {
  local f=$1; shift
  local font_file=$1; shift

  current_dir=$(dirname "$f")
  if [ "$current_dir" = "$last_current_dir" ]
  then
    continue
  fi

  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  # find replace unpatched parent dir with patched parent dir:
  local patched_font_dir="${patched_font_dir/$unpatched_parent_dir/$patched_parent_dir}"

  echo "$LINE_PREFIX Generating info for '$font_file':"

  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"

  local font_root=$(echo "$patched_font_dir" | sed "s|.*$patched_parent_dir/||;s|/.*||")
  # if first time with this font then re-build parent dir readme, else skip:
  if [ "$last_font_root" != "$font_root" ]
  then
    echo "$LINE_PREFIX --- Calling standardize-and-complete-readmes for $font_root"
    ${sd}/standardize-and-complete-readmes.sh "$font_root" "$patched_parent_dir"
    echo "$LINE_PREFIX ---"
    last_font_root=$font_root
  fi

  # Copy 'all' license files found in the complete font`s source tree
  # into the destination. This will overwrite all same-names files
  # so make sure all licenses of one fontface are identical
  echo "$LINE_PREFIX * Copying license files"
  copy_license "$(find_font_root $current_dir)" "$patched_font_dir"
}


# Copy any license file to the patched font directory
# $1 = fontdir source path
# $2 = fontdir destination path
function copy_license {
  local src=$1
  local dest=$2
  local license_file=""

  while IFS= read -d $'\0' -r license_file ; do
    [[ -d "$dest" ]] || mkdir -p "$dest"
    cp "$license_file" -t "$dest"
  done < <(find "$src" -iregex ".*\(licen[cs]e\|ofl\).*" -type f -print0)

  # To check which files will or will not be copied and make sure all relevant
  # licences do match
  # find src/unpatched-fonts -not -iname "*.[ot]tf" -type f -not -name 'README.md' -not -name 'config.cfg' -iregex ".*\(licen[cs]e\|ofl\).*"
  # find src/unpatched-fonts -not -iname "*.[ot]tf" -type f -not -name 'README.md' -not -name 'config.cfg' -not -iregex ".*\(licen[cs]e\|ofl\).*"
}

if [ ! "$info_only" ]
then
  # Iterate through source fonts
  for i in "${!source_fonts[@]}"
  do
    purge_destination=""
    current_source_dir=$(dirname "${source_fonts[$i]}")
    if [ "${current_source_dir}" != "${last_source_dir}" ]
    then
      # If we are going to patch ALL font files from a certain source directory
      # the destination directory is purged (all font files therein deleted)
      # to follow font naming changed. We can not do this if we patch only
      # some of the source font files in that directory.
      last_source_dir=${current_source_dir}
      num_to_patch=$(find "${current_source_dir}" -iregex ${like_pattern} -type f | wc -l)
      num_existing=$(find "${current_source_dir}" -iname "*.[ot]tf" -o -iname "*.sfd" -type f | wc -l)
      if [ ${num_to_patch} -eq ${num_existing} ]
      then
        purge_destination="TRUE"
      fi
    fi
    echo "$LINE_PREFIX Processing font $((i+1))/${#source_fonts[@]}"
    if [ -n "${parallel}" ]
    then
      patch_font "${source_fonts[$i]}" "$i" "$purge_destination" 2>/dev/null &
    else
      patch_font "${source_fonts[$i]}" "$i" "$purge_destination" 2>/dev/null
    fi


    # un-comment to test this script (patch 1 font)
    #break

    # wait for this set of bg commands to finish: dont do too many at once!
    # if we spawn a background process for each set of fonts it will
    # end up using too many system resources
    # however we want to run a certain number in parallel to decrease
    # the amount of time patching all the fonts will take
    # for now set a 'wait' for each X set of processes:
    if [[ $(((i + 1) % max_parallel_process)) == 0 ]];
    then
      wait
    fi
  done
  # wait for all bg commands to finish
  wait
fi

# update information in separate iteration (to avoid issues with bg processes and the counts):
# Iterate through source fonts
for i in "${!source_fonts[@]}"
do
  # only output after last slash (/):
  path=${source_fonts[$i]}
  font_file=${path##*/}
  generate_info "$path" "$font_file" 2>/dev/null
done
