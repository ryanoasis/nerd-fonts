#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.1.1
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# adds Windows versions of the fonts as well (casks files just won't download them)
# used for debugging
# set -x
# Example run with pattern matching:
# ./archive-fonts heavydata
# Example with same font names for different paths
# ./archive-fonts gohu

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
parent_dir="${PWD}/../../"
echo "dir $scripts_root_dir"
outputdir=$scripts_root_dir../../archives

mkdir -p "$outputdir"

cd "$scripts_root_dir/../../patched-fonts/" || {
  echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
  exit 1
}

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 1 ]
  then
    pattern=$1
    search_pattern="*$1*.zip"
    echo "$LINE_PREFIX Limiting archive to pattern '$pattern'"
else
    pattern=".*"
    search_pattern="*.zip"
    echo "$LINE_PREFIX No limiting pattern given, will search entire folder"
fi

# create a mini readme with basic info on Nerd Fonts project
touch "$outputdir/readme.md"
mini_readme="$outputdir/readme.md"
cat "$parent_dir/src/archive-readme.md" >> "$mini_readme"

# clear out the directory zips
find "${outputdir:?}" -name "$search_pattern" -type f -delete

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 0 -type d | # uncomment to test 1 font
# find ./IBMPlexMono -maxdepth 0 -type d | # uncomment to test 1 font
# uncomment to test all fonts:
find -- * -maxdepth 0 -iregex "$pattern" -type d |
while read -r filename
do

  basename=$(basename "$filename")
  searchdir=$filename

  [[ -d "$outputdir" ]] || mkdir -p "$outputdir"

  # add font files:
  # -ic (ignore case not working)
  zip -9 "$outputdir/$basename" -rj "$searchdir" -i '*.[o,t]tf' -i '*.[O,T]TF' -q
  zipStatus=$?
  if [ "$zipStatus" != "0" ]
  then
    echo "$LINE_PREFIX Could not create archive with the path junked (-j option) - likely same font names for different paths, zip status: $zipStatus"
    echo "$LINE_PREFIX Retrying with full path"
    # add font files and license files as full paths:
    zip -9 "$outputdir/$basename" -r "$searchdir" -i '*.[o,t]tf' -i '*.[O,T]TF' -i '*license*' -i '*LICENSE*' -q
  else
    # we can copy the font files without full paths but not necessarily the license files:
    # add license files separately:
    # zip -9 "$outputdir/$basename" -rj "$searchdir" -i '*license*' -i '*LICENSE*'
    # work around to copy duplicate license files (only the last duplicate found) 
    # so we don't have to copy entire paths and can still use the junk option (-j)
    find "$searchdir" -type f -iname "*license*" | awk -F/ '{a[$NF]=$0}END{for(i in a)print a[i]}' | zip -9 -j "$outputdir/$basename" -@
  fi;

  # add mini readme file
  zip -9 "$outputdir/$basename" -rj "$mini_readme" -q
  rm -f "$mini_readme"
done

ls -al "$outputdir"