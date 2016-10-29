#!/bin/bash
# version: 0.9.0
# Iterates over all patched fonts directories
# converts all non markdown readmes to markdown (e.g., txt, rst) using pandoc
# adds information on additional-variations and complete font variations

infofilename="font-info.md"

cd unpatched-sample-fonts/

#find ./DejaVuSansMono -type d | # uncomment to test 1 font
find -type d | # uncomment to do ALL fonts
while read filename
do

	#echo "filename $filename"
	dirname=`dirname $filename`
	basename=`basename $filename`
	echo "dirname $dirname"
	echo "basename $basename"
	searchdir=$filename

	# limit looking for the readme files in the parent dir not the child dirs:
	if [[ $dirname != "." ]];
	then
		echo "look up a lvl"
		searchdir=$dirname
	fi

	RST=( $(find $searchdir -type f -iname 'readme.rst' -exec basename {} \;) )
	TXT=( $(find $searchdir -type f -iname 'readme.txt' -exec basename {} \;) )
	outputdir=$PWD/../patched-fonts/$filename/
	outputlocation=$outputdir/$infofilename

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	echo "RST:"
	echo $RST
	echo "end"
	#exit

	# clear output file (needed for multiple runs or updates):
	> $outputlocation

	if [ $RST ];
	then
		echo "pwd/filename $PWD/$filename"
		echo "found RST"
		pandoc "$PWD/$searchdir/$RST" --from=rst --to=markdown --output=$outputlocation
		#echo "pandoc $PWD/$filename/$RST --from=rst --to=markdown --output=$outputlocation"
		#echo "pwd $PWD"
		cat $PWD/../source/readme-per-directory-addendum.md >> $outputlocation
	elif [ $TXT ];
	then
		echo "pwd/filename $PWD/$searchdir"
		echo "found TXT"
		echo "nothing to do for conversion, just copy as markdown"
		cp $PWD/$searchdir/$TXT $outputlocation
		#echo "pwd $PWD"
		cat $PWD/../source/readme-per-directory-addendum.md >> $outputlocation
	else
		echo "pwd/filename $PWD/$searchdir"
		# else doesnt copy parent dir. somehow do this...
		echo "did not find RST nor TXT"
		cat $PWD/../source/readme-per-directory-addendum.md >> $outputlocation
	fi
done
