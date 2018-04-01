#!/bin/bash
# Nerd Fonts Version: 2.0.0
# Script Version: 1.1.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# adds Windows versions of the fonts as well (casks files just won't download them)

#set -x

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
echo "dir $scripts_root_dir"
outputdir=$scripts_root_dir/../../archives/

cd "$scripts_root_dir/../../patched-fonts/" || {
  echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
  exit 1
}

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 1 ]
  then
    pattern="./$1"
    echo "$LINE_PREFIX Limiting archive to pattern './$pattern'"
else
    pattern="."
    echo "$LINE_PREFIX No limting pattern given, will search entire folder"
fi

# clear out the directory zips
find "${outputdir:?}" -name "*.zip" -type f -delete

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 0 -type d | # uncomment to test 1 font
find $pattern -maxdepth 1 -type d | # uncomment to test all fonts
while read -r filename
do

	basename=$(basename "$filename")
	searchdir=$filename

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	zip "$outputdir/$basename" -rj "$searchdir" -i '*.[o,t]tf'

done
