#!/bin/bash
# version: 0.6.0

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
organizing_sub_dir=""

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
  echo "Newly created font: $newly_created_font"
  local patched_font_dir="${f%/*}/"
  echo "patched font dir is $patched_font_dir"
  local patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
  echo "patched font dir is $patched_font_dir"
  local patched_font_dir+=$organizing_sub_dir
  echo "patched font dir is $patched_font_dir"
  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"
  mkdir -p $patched_font_dir
  mv "$newly_created_font" "$patched_font_dir"
  echo "Moved newly created font to: $patched_font_dir"
}

function patch_font_batch {
  patch_font "$@" -q
  patch_font "$@" -q -s
  patch_font "$@" -q -w
  patch_font "$@" -q -s -w
}

#cd temp-generated-fonts/

# Use for loop iterate through source fonts
# $f stores current value
for f in "${source_fonts[@]}"
do
  echo "$f"
  if [[ "$f" =~ Hack ]] || [[ "$f" =~ SourceCodePro ]]
  then
    powerline=""
  else
    powerline="--powerline"
  fi

  organizing_sub_dir="minimal/"

  patch_font_batch "$f" $powerline

  organizing_sub_dir="additional-variations/"

  # font awesome variations
  patch_font_batch "$f" $powerline --fontawesome
  patch_font_batch "$f" $powerline --fontawesome --powerlineextra

  # octicons variations:
  patch_font_batch "$f" $powerline --octicons
  patch_font_batch "$f" $powerline --octicons --powerlineextra

  # pomicon variations:
  patch_font_batch "$f" $powerline --pomicons
  patch_font_batch "$f" $powerline --pomicons --powerlineextra

  # fontawesome + octicons variations:
  patch_font_batch "$f" $powerline --fontawesome --octicons
  patch_font_batch "$f" $powerline --fontawesome --octicons --powerlineextra

  # fontawesome + pomicons variations:
  patch_font_batch "$f" $powerline --fontawesome --pomicons
  patch_font_batch "$f" $powerline --fontawesome --pomicons --powerlineextra

  # octicons + pomicons variations:
  patch_font_batch "$f" $powerline --octicons --pomicons
  patch_font_batch "$f" $powerline --octicons --pomicons --powerlineextra

  # fontawesome + octicons + pomicons variations:
  patch_font_batch "$f" $powerline --fontawesome --octicons --pomicons

  organizing_sub_dir="complete/"

  # fontawesome + octicons + pomicons + powerlineextra variations:
  patch_font_batch "$f" $powerline --fontawesome --octicons --pomicons --powerlineextra

  # un-comment to test this script (patch 1 font)
  #break
done


echo "All unpatched fonts re-patched to their respective sub-directories in $patched_fonts_dir"
