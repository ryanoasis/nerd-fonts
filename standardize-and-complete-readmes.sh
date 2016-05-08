#!/bin/bash
# version: 0.8.0
# Iterates over all patched fonts directories
# converts all non markdown readmes to markdown (e.g. txt, rst) using pandoc
# adds information on minimal, alternative, and complete font variations

cd patched-fonts/

#find ./DejaVuSansMono -type d | # uncomment to test 1 font
find -type d | # uncomment to do ALL fonts
while read filename
do
	echo "$filename"    # ... or any other command using $filename
	RST=( $(find $filename -type f -iname 'readme.rst' -exec basename {} \;) )
	TXT=( $(find $filename -type f -iname 'readme.txt' -exec basename {} \;) )
	echo "RST:"
	echo $RST
	echo "end"
	if [ $RST ];
	then
		echo "found RST"
		pandoc "$filename/$RST" --from=rst --to=markdown --output=$filename/README.md
		echo "pandoc $filename/$RST --from=rst --to=markdown --output=$filename/README.md"
		echo "pwd $PWD"
		cat $PWD/../source/readme-per-directory-addendum.md >> $filename/README.md
	elif [ $TXT ];
	then
		echo "found TXT"
		echo "nothing to do for conversion, just copy as markdown"
		cp $filename/$TXT $filename/README.md
		echo "pwd $PWD"
		cat $PWD/../source/readme-per-directory-addendum.md >> $filename/README.md
	else
		echo "did not find RST nor TXT"
		cat $PWD/../source/readme-per-directory-addendum.md >> $filename/README.md
	fi
done
