#!/bin/bash
# version: 0.9.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# only adds non-Windows versions of the fonts

#set -x

#patched_parent_dir="patched-fonts"

cd ../../patched-fonts/ || {
  echo >&2 "# Could not find patched fonts directory"
  exit 1
}

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 0 -type d | # uncomment to test 1 font
find . -maxdepth 1 -type d | # uncomment to test all fonts
while read -r filename
do

	#dirname=$(dirname "$filename")
	basename=$(basename "$filename")
	searchdir=$filename
	#fontdir=$(basename "$(dirname "$dirname")")
	outputdir=$PWD/../archives/

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	zip "$outputdir/$basename" -rj "$searchdir" -i '*.[o,t]tf' -x '*Windows*'
	#zip "$outputdir/$basename" -r "$searchdir" -i '*.[o,t]tf' -x '*Windows*'

done
