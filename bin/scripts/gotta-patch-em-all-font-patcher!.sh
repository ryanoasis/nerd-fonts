#!/bin/bash
# version: 0.9.0

# Check for Fontforge
type fontforge >/dev/null 2>&1 || {
  echo >&2 "# FontForge must be installed before running this script."
  echo >&2 "# Please see installation instructions at"
  echo >&2 "# http://designwithfontforge.com/en-US/Installing_Fontforge.html"
  exit 1
}

res1=$(date +%s)
parent_dir="${PWD}/../../"
# Set source and target directories
source_fonts_dir="${PWD}/../../src/unpatched-fonts"
patched_fonts_dir="${PWD}/../../patched-fonts"
like_pattern=''
complete_variation_count=0
total_variation_count=0
total_count=0
last_parent_dir=""
unpatched_parent_dir="bin/scripts/../../src/unpatched-fonts"
patched_parent_dir="patched-fonts"


if [ $# -eq 1 ]
  then
    like_pattern=$1
    echo "# Parameter given, limiting search and patch to pattern '$like_pattern' given"
fi

# correct way to output find results into an array (when files have space chars, etc)
# source: http://stackoverflow.com/questions/8213328/bash-script-find-output-to-array
source_fonts=()
 while IFS= read -d $'\0' -r file ; do
     source_fonts=("${source_fonts[@]}" "$file")
 done < <(find "$source_fonts_dir" -name "$like_pattern*.[o,t]tf" -type f -print0)

# print total number of source fonts found
echo "# Total source fonts found: ${#source_fonts[*]}"


function patch_font {
  local f=$1; shift
  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  # find replace unpatched parent dir with patched parent dir:
  local patched_font_dir="${patched_font_dir/$unpatched_parent_dir/$patched_parent_dir}"

  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"

  config_parent_dir=$( cd "$( dirname "$f" )" && cd ".." && pwd)
  config_dir=$( cd "$( dirname "$f" )" && pwd)
  config_parent_dir_name=$(basename "$config_parent_dir")
  is_unpatched_fonts_root=0

  if [ "$config_parent_dir_name" == "unpatched-fonts" ]
  then
    is_unpatched_fonts_root=1
  fi

  # source the font config file if exists:
  if [ -f "$config_dir/config.cfg" ]
  then
    source "$config_dir/config.cfg"
  elif [ -f "$config_parent_dir/config.cfg" ]
  then
    source "$config_parent_dir/config.cfg"
  fi

  if [ "$config_has_powerline" ]
  then
    powerline=""
    combinations=$(printf "./font-patcher ${f##*/} %s\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',})
  else
    powerline="--powerline"
    combinations=$(printf "./font-patcher ${f##*/} %s\n" {' --powerline',}{' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',})
  fi

  cd "$parent_dir"

  fontforge -quiet -script ./font-patcher "$f" -q $powerline --complete --outputdir "${patched_font_dir}complete/" 2>/dev/null &
  fontforge -quiet -script ./font-patcher "$f" -q -s $powerline --complete --outputdir "${patched_font_dir}complete/" 2>/dev/null &
  fontforge -quiet -script ./font-patcher "$f" -q -w $powerline --complete --outputdir "${patched_font_dir}complete/" 2>/dev/null &
  fontforge -quiet -script ./font-patcher "$f" -q -s -w $powerline --complete --outputdir "${patched_font_dir}complete/" 2>/dev/null &
  #wait

  complete_variation_count=$((complete_variation_count+4))
  combination_count=$(printf "%s" "$combinations" | wc -l)

  # generate the readmes:

  # if first time with this font then re-build parent dir readme, else skip:
  if [[ $config_parent_dir != "$last_parent_dir"  && (! $is_unpatched_fonts_root) ]];
  then
    echo "Re-generate parent directory readme"
    generate_readme "$patched_font_dir/.."
  fi

  generate_readme "$patched_font_dir"

  last_parent_dir=$config_parent_dir

  total_variation_count=$((total_variation_count+combination_count))
  total_count=$((total_count+complete_variation_count+combination_count))

}

# Re-generate all the readmes
# $1 = fontdir path
function generate_readme {
  patched_font_dir=$1
  combinations_filename="$patched_font_dir/readme.md"
  font_info="$patched_font_dir/font-info.md"

  # clear output file (needed for multiple runs or updates):
  > "$combinations_filename"

  if [ -f "$font_info" ];
  then
    cat "$patched_font_dir/font-info.md" >> "$combinations_filename"
  else
    echo "# Could not append font-info.md (file not found). Was standardize script run? It should be executed first"
    echo "# looked for: $font_info"
  fi

  cat "$parent_dir/src/readme-per-directory-variations.md" >> "$combinations_filename"

  # add to the file
  {
    printf "\`\`\`sh"
    printf "\n# %s Possible Combinations:\n" "$combination_count"
    printf "\n"
    printf "%s" "$combinations"
    printf "\n"
    printf "\`\`\`"
  } >> "$combinations_filename"
}

# Use for loop iterate through source fonts
# $f stores current value
for f in "${source_fonts[@]}"
do
   patch_font "$f"

  # un-comment to test this script (patch 1 font)
  #break
  # wait for this set of bg commands to finish: dont do too many at once!
  #wait
done
# wait for all bg commands to finish
wait

res2=$(date +%s)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)

printf "# Total runtime: %d:%02d:%02d:%02d\n" "$dd" "$dh" "$dm" "$ds"

printf "# All fonts patched to sub-directories in '%s'\n" "$patched_parent_dir"
printf "# The total number of 'variation' patched fonts created was '%s'\n" "$total_variation_count"
printf "# The total number of 'complete' patched fonts created was '%s'\n" "$complete_variation_count"
printf "# The total number of patched fonts created was '%s'\n" "$total_count"
