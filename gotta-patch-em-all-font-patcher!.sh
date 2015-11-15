#!/bin/bash
# version: 0.6.0

# Check for Fontforge
type fontforge >/dev/null 2>&1 || {
  echo >&2 "FontForge must be installed before running this script."
  echo >&2 "Please see installation instructions at"
  echo >&2 "http://designwithfontforge.com/en-US/Installing_Fontforge.html"
  exit 1
}

res1=$(date +%s)

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
  local organizing_sub_dir=$1; shift
  # take everything before the last slash (/) to start building the full path
  local patched_font_dir="${f%/*}/"
  printf "\n---------------\n"
  local patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
  echo "patched font dir is $patched_font_dir"
  local patched_font_dir+=$organizing_sub_dir
  echo "patched font dir is $patched_font_dir"
  [[ -d "$patched_font_dir" ]] || mkdir -p "$patched_font_dir"
  fontforge -quiet -script ./font-patcher "$@" "$f" --outputdir $patched_font_dir 2>/dev/null
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

  patch_font_batch "$f" "minimal/" $powerline &

  # font awesome variations
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome &
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --powerlineextra &

  # octicons variations:
  patch_font_batch "$f" "additional-variations/" $powerline --octicons &
  patch_font_batch "$f" "additional-variations/" $powerline --octicons --powerlineextra &

  # pomicon variations:
  patch_font_batch "$f" "additional-variations/" $powerline --pomicons &
  patch_font_batch "$f" "additional-variations/" $powerline --pomicons --powerlineextra &

  # fontawesome + octicons variations:
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --octicons &
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --octicons --powerlineextra &

  # fontawesome + pomicons variations:
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --pomicons &
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --pomicons --powerlineextra &

  # octicons + pomicons variations:
  patch_font_batch "$f" "additional-variations/" $powerline --octicons --pomicons &
  patch_font_batch "$f" "additional-variations/" $powerline --octicons --pomicons --powerlineextra &

  # fontawesome + octicons + pomicons variations:
  patch_font_batch "$f" "additional-variations/" $powerline --fontawesome --octicons --pomicons &

  # fontawesome + octicons + pomicons + powerlineextra variations:
  patch_font_batch "$f" "complete/" $powerline --fontawesome --octicons --pomicons --powerlineextra &


  # un-comment to test this script (patch 1 font)
  #break
  # wait for this set of bg commands to finish: dont do too many at once!
  wait
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

printf "Total runtime: %d:%02d:%02d:%02d\n" $dd $dh $dm $ds

echo "All unpatched fonts re-patched to their respective sub-directories in $patched_fonts_dir"
