#!/usr/bin/env bash
# Nerd Fonts Version: 2.1.0
# Script Version: 1.1.1

# used for debugging
# set -x

# The optional first argument to this script is a filter for the fonts to patch.
# The filter is a regex (glob "*" is expressed as "[^/]*", see `man 7 glob`)
# All font files that start with that filter (and are ttf, otf, or sfd files) will
# be processed only.
#   Example ./gotta-patch-em-all-font-patcher\!.sh "iosevka"
#   Process all font files that start with "iosevka"
# If the argument starts with a '/' all font files in a directory that matches
# the filter are processed only.
#   Example ./gotta-patch-em-all-font-patcher\!.sh "/iosevka"
#   Process all font files that are in directory "iosevka"

# for executing script to rebuild JUST the readmes:
# ./gotta-patch-em-all-font-patcher\!.sh "" info
# to test this script with a single font (pattern):
# ./gotta-patch-em-all-font-patcher\!.sh "iosevka" info

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
parent_dir="${sd}/../../"
# Set source and target directories
source_fonts_dir="${sd}/../../src/unpatched-fonts"
like_pattern=''
complete_variations_per_family=4
font_typefaces_count=0
font_families_count=0
complete_variation_count=0
total_variation_count=0
total_count=0
last_parent_dir=""
unpatched_parent_dir="bin/scripts/../../src/unpatched-fonts"
patched_parent_dir="patched-fonts"
max_parallel_process=64

if [ $# -eq 1 ] || [ "$1" != "" ]
then
  if [[ "${1:0:1}" == "/" ]]
  then
    like_pattern=".*$1/.*\.\(otf\|ttf\|sfd\)"
    echo "$LINE_PREFIX Parameter given, limiting search and patch to pathname pattern '$1' given"
  else
    like_pattern=".*/$1[^/]*\.\(otf\|ttf\|sfd\)"
    echo "$LINE_PREFIX Parameter given, limiting search and patch to filename pattern '$1' given"
  fi
fi

# simple second param option to allow to regenerate font info without re-patching
if [ $# -eq 2 ]
  then
    info_only=$2
    echo "$LINE_PREFIX 'Info Only' Parameter given, only generating font info (not patching)"
fi

# correct way to output find results into an array (when files have space chars, etc)
# source: https://stackoverflow.com/questions/8213328/bash-script-find-output-to-array
source_fonts=()
while IFS= read -d $'\0' -r file ; do
  source_fonts=("${source_fonts[@]}" "$file")
done < <(find "$source_fonts_dir" -iregex ${like_pattern} -type f -print0)

# print total number of source fonts found
echo "$LINE_PREFIX Total source fonts found: ${#source_fonts[*]}"

function patch_font {
  local f=$1; shift
  local i=$1; shift
  local purge=$1; shift
  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  # find replace unpatched parent dir with patched parent dir:
  local patched_font_dir="${patched_font_dir/$unpatched_parent_dir/$patched_parent_dir}"

  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"
  if [ -n ${purge} -a -d "${patched_font_dir}complete" ]
  then
    echo "Purging patched font dir ${patched_font_dir}complete"
    rm ${patched_font_dir}complete/*.[to]tf
  fi

  config_parent_dir=$( cd "$( dirname "$f" )" && cd ".." && pwd)
  config_dir=$( cd "$( dirname "$f" )" && pwd)

  # source the font config file if exists:
  # fetches for example config_patch_flags
  if [ -f "$config_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_dir/config.cfg"
  elif [ -f "$config_parent_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_parent_dir/config.cfg"
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
    post_process="--postprocess=$post_process"
  else
    post_process=""
  fi

  # shellcheck disable=SC2154
  # we know the '$config_has_powerline' is from the sourced file
  if [ "$config_has_powerline" ]
  then
    powerline=""
    combinations=$(printf "./font-patcher ${f##*/} %s\\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}{' --weather',}{' --material',})
  else
    powerline="--powerline"
    combinations=$(printf "./font-patcher ${f##*/} %s\\n" {' --powerline',}{' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}{' --weather',}{' --material',})
  fi

  cd "$parent_dir" || {
    echo >&2 "# Could not find project parent directory"
    exit 1
  }
  # Use absolute path to allow fontforge being an AppImage (used in CI)
  PWD=`pwd`
  fontforge -quiet -script $PWD/font-patcher "$f" -q $powerline $post_process --complete --no-progressbars --outputdir "${patched_font_dir}complete/" $config_patch_flags 2>/dev/null
  fontforge -quiet -script $PWD/font-patcher "$f" -q -s ${font_config} $powerline $post_process --complete --no-progressbars --outputdir "${patched_font_dir}complete/" $config_patch_flags 2>/dev/null
  fontforge -quiet -script $PWD/font-patcher "$f" -q -w $powerline $post_process --complete --no-progressbars --outputdir "${patched_font_dir}complete/" $config_patch_flags 2>/dev/null
  fontforge -quiet -script $PWD/font-patcher "$f" -q -s ${font_config} -w $powerline $post_process --complete --no-progressbars --outputdir "${patched_font_dir}complete/" $config_patch_flags 2>/dev/null
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
  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  # find replace unpatched parent dir with patched parent dir:
  local patched_font_dir="${patched_font_dir/$unpatched_parent_dir/$patched_parent_dir}"

  echo "$LINE_PREFIX Generating info for '$font_file':"

  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"

  config_parent_dir=$( cd "$( dirname "$f" )" && cd ".." && pwd)
  config_dir=$( cd "$( dirname "$f" )" && pwd)
  config_parent_dir_name=$(basename "$config_parent_dir")
  is_unpatched_fonts_root=0

  if [ "$config_parent_dir_name" == "unpatched-fonts" ]
  then
    is_unpatched_fonts_root=1
    font_typefaces_count=$((font_typefaces_count+1))
  fi

  # source the font config file if exists:
  if [ -f "$config_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_dir/config.cfg"
  elif [ -f "$config_parent_dir/config.cfg" ]
  then
    # shellcheck source=/dev/null
    source "$config_parent_dir/config.cfg"
  fi

  if [ "$config_has_powerline" ]
  then
    powerline=""
    combinations=$(printf "./font-patcher ${f##*/} %s\\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}{' --weather',}{' --material',})
  else
    powerline="--powerline"
    combinations=$(printf "./font-patcher ${f##*/} %s\\n" {' --powerline',}{' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}{' --weather',}{' --material',})
  fi

  font_families_count=$((font_families_count+1))
  complete_variation_count=$((complete_variation_count+complete_variations_per_family))
  combination_count=$(printf "%s" "$combinations" | wc -l)

  # generate the readmes:

  # if first time with this font then re-build parent dir readme, else skip:
  if [[ $config_parent_dir != "$last_parent_dir" ]] && [ $is_unpatched_fonts_root == "0" ];
  then
    echo "$LINE_PREFIX * Re-generate parent directory readme"
    generate_readme "$patched_font_dir.." 0
  fi

  echo "$LINE_PREFIX * Adding 'Possible Combinations' section"
  generate_readme "$patched_font_dir" 1
  echo "$LINE_PREFIX * Copying license files"

  if [ $is_unpatched_fonts_root == "0" ];
  then
    # if we are not at the unpatched fonts root, copy all license from config parent dir
    copy_license "$config_parent_dir" "$patched_font_dir"
  else
    # otherwise we nedd to copy files from the config dir itself
    copy_license "$config_dir" "$patched_font_dir"
  fi


  last_parent_dir=$config_parent_dir
  total_variation_count=$((total_variation_count+combination_count))
  total_count=$((total_count+complete_variations_per_family+combination_count))

}


# Copy any license file to the patched font directory
# $1 = fontdir source path
# $2 = fontdir destination path
function copy_license {
  local src=$1
  local dest=$2
  local license_file=""

  while IFS= read -d $'\0' -r license_file ; do
    # cp "$license_file" "$dest" # makes archiving multiple harder when we junk the paths for the archive
    cp "$license_file" "$dest/complete"
  done < <(find "$src" -iregex ".*\(licen[c,s]e\|ofl\).*" -type f -print0)
}

# Re-generate all the readmes
# $1 = fontdir path
function generate_readme {
  local patched_font_dir=$1
  local generate_combinations=$2
  local combinations_filename="$patched_font_dir/readme.md"
  local font_info="$patched_font_dir/font-info.md"

  # clear output file (needed for multiple runs or updates):
  true > "$combinations_filename"

  if [ -f "$font_info" ];
  then
    cat "$patched_font_dir/font-info.md" >> "$combinations_filename"
  else
    echo "$LINE_PREFIX Could not append font-info.md (file not found). Was standardize script run? It should be executed first"
    echo "# looked for: $font_info"
  fi

  cat "$parent_dir/src/readme-per-directory-variations.md" >> "$combinations_filename"

  if [ "$generate_combinations" == 1 ];
  then
    # add to the file
    {
      printf "\`\`\`sh"
      printf "\\n# %s Possible Combinations:\\n" "$combination_count"
      printf "\\n"
      printf "%s" "$combinations"
      printf "\\n"
      printf "\`\`\`"
    } >> "$combinations_filename"
  fi
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
      num_existing=$(find "${current_source_dir}" -iname "*.[o,t]tf" -o -iname "*.sfd" -type f | wc -l)
      if [ ${num_to_patch} -eq ${num_existing} ]
      then
        purge_destination="TRUE"
      fi
    fi
    patch_font "${source_fonts[$i]}" "$i" "$purge_destination" 2>/dev/null


    # un-comment to test this script (patch 1 font)
    #break

    # wait for this set of bg commands to finish: dont do too many at once!
    # if we spawn a background process for each set of fonts it will
    # end up using too many system resources
    # however we want to run a certain number in parallel to decrease
    # the amount of time patching all the fonts will take
    # for now set a 'wait' for each X set of processes:
    if [[ $((i % max_parallel_process)) == 0 ]];
    then
      echo "$LINE_PREFIX Complete Variation Count after max parallel process is  $complete_variation_count"
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

font_typefaces_count=$(find "${PWD}/../../${patched_parent_dir}/"* -maxdepth 0 -type d | wc -l)

res2=$(date +%s)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)

printf "$LINE_PREFIX Total runtime: %d:%02d:%02d:%02d\\n" "$dd" "$dh" "$dm" "$ds"

printf "# All fonts patched to sub-directories in \\t\\t\\t'%s'\\n" "$patched_parent_dir"
printf "# The total number of font typefaces patched was \\t\\t'%s'\\n" "$font_typefaces_count"
printf "# The total number of font families patched was \\t\\t'%s'\\n" "$font_families_count"
printf "# The total number of 'complete' patched fonts created was \\t'%s'\\n" "$complete_variation_count"
printf "# The total number of 'variation' patched fonts created was \\t'%s'\\n" "$total_variation_count"
printf "# The total number of patched fonts created was \\t\\t'%s'\\n" "$total_count"

if [ "$total_count" -lt 1 ]; then
  # Probably unwanted... alert user
  exit 1
fi
