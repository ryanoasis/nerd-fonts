#!/bin/bash
# version: 0.4.0

# Check for Fontforge
type fontforge >/dev/null 2>&1 || {
  echo >&2 "FontForge must be installed before running this script."
  echo >&2 "Please see installation instructions at"
  echo >&2 "http://designwithfontforge.com/en-US/Installing_Fontforge.html"
  exit 1
}

# Set source and target directories
source_fonts_dir="${PWD}/unpatched-sample-fonts"
patched_fonts_dir="${PWD}/patched-fonts"
like_pattern=''

if [ $# -eq 1 ]
  then
    like_pattern=$1
    echo "Parameter given, limiting search and patch to pattern '$like_pattern' given"
fi

# correct way to output find results into an array (when files have space chars, etc)
# source: http://stackoverflow.com/questions/8213328/bash-script-find-output-to-array
source_fonts=()
 while IFS= read -d $'\0' -r file ; do
     source_fonts=("${source_fonts[@]}" "$file")
 done < <(find "$source_fonts_dir" -name "$like_pattern*.[o,t]tf" -type f -print0)

# print total number of source fonts found
echo "Total source fonts found: ${#source_fonts[*]}"


function patch_font {
  local f=$1; shift
  fontforge -script ./font-patcher "$@" "$f"
  printf "\n---------------\n"
  local newly_created_font=$(find . -maxdepth 1 -name '*.[o,t]tf')
  echo "newly_created_font = $newly_created_font"
  local patched_font_dir="${f%/*}/"
  local patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"
  mv "$newly_created_font" "$patched_font_dir"
}

function patch_font_batch {
  patch_font "$@" -q
  patch_font "$@" -q -s
  patch_font "$@" -q -w
  patch_font "$@" -q -s -w
}

# Use for loop iterate through source fonts
# $f stores current value
for f in "${source_fonts[@]}"
do
  patch_font_batch "$f"

  # font awesome variations
  patch_font_batch "$f" --fontawesome

  # octicons variations:
  patch_font_batch "$f" --octicons

  # pomicon variations:
  patch_font_batch "$f" --pomicons

  # fontawesome + octicons variations:
  patch_font_batch "$f" --fontawesome --octicons

  # fontawesome + pomicons variations:
  patch_font_batch "$f" --fontawesome --pomicons

  # octicons + pomicons variations:
  patch_font_batch "$f" --octicons --pomicons

  # fontawesome + octicons + pomicons variations:
  patch_font_batch "$f" --fontawesome --octicons --pomicons

  # un-comment to test this script (patch 1 font)
  #break
done


echo "All unpatched fonts re-patched to their respective sub-directories in $patched_fonts_dir"
