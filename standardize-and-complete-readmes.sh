#!/bin/bash
# version: 0.9.0
# Iterates over all patched fonts directories
# converts all non markdown readmes to markdown (e.g., txt, rst) using pandoc
# adds information on additional-variations and complete font variations

infofilename="font-info.md"

cd unpatched-sample-fonts/ || exit

#find ./DejaVuSansMono -type d | # uncomment to test 1 font
find . -type d | # uncomment to do ALL fonts
while read -r filename
do

	dirname=$(dirname "$filename")
	searchdir=$filename

	# limit looking for the readme files in the parent dir not the child dirs:
	if [[ $dirname != "." ]];
	then
		searchdir=$dirname
	fi

	RST=( $(find "$searchdir" -type f -iname 'readme.rst' -exec basename {} \;) )
	TXT=( $(find "$searchdir" -type f -iname 'readme.txt' -exec basename {} \;) )
	outputdir=$PWD/../patched-fonts/$filename/
	outputlocation=$outputdir/$infofilename

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	# clear output file (needed for multiple runs or updates):
	> "$outputlocation"

	if [ "${RST[0]}" ];
	then
		echo "found RST"
		pandoc "$PWD/$searchdir/${RST[0]}" --from=rst --to=markdown --output="$outputlocation"
		cat "$PWD/../source/readme-per-directory-addendum.md" >> "$outputlocation"
	elif [ "${TXT[0]}" ];
	then
		echo "found TXT"
		echo "nothing to do for conversion, just copy as markdown"
		cp "$PWD/$searchdir/${TXT[0]}" "$outputlocation"
		cat "$PWD/../source/readme-per-directory-addendum.md" >> "$outputlocation"
	else
		echo "did not find RST nor TXT"
		cat "$PWD/../source/readme-per-directory-addendum.md" >> "$outputlocation"
	fi
done
