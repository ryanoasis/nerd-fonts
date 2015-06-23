#!/bin/bash


# Set source and target directories
source_fonts_dir="${PWD}/unpatched-sample-fonts"
patched_fonts_dir="${PWD}/patched-fonts"

#find_command="`find \"$source_fonts_dir\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0`"
#find_command="find $source_fonts_dir -name '*.[o,t]tf' -type f -print0"


# Execute patcher on each unpatched font
## -0 to handle space in file name
#eval "$find_command" | xargs -0 -I % echo "%" "$patched_fonts_dir/%" 
# Copy generated font to it's patched subdirectory

#IFS=$'\n'
#source_fonts=( $("`find $source_fonts_dir -name '*.[o,t]tf' -type f -print0`") )
#source_fonts=( $(find $source_fonts_dir -name '*.[o,t]tf' -type f -print0) )
#source_fonts=( $($find_command) )

# correct way to output find results into an array (when files have space chars, etc)
# source: http://stackoverflow.com/questions/8213328/bash-script-find-output-to-array
source_fonts=()
 while IFS= read -d $'\0' -r file ; do
     source_fonts=("${source_fonts[@]}" "$file")
 done < <(find $source_fonts_dir -name '*.[o,t]tf' -type f -print0)
 #done < <( eval($find_command) )

 #echo "${source_fonts[@]}"

# print total number of source fonts found
echo "Total source fonts found: ${#source_fonts[*]}"
#printf "\n"
#printf "---------------- \n"

#find_new_generated_font="find . -maxdepth 1 -name '*.[o,t]tf' -type f -print0"

# Use for loop iterate through source fonts
# $f stores current value
for f in "${source_fonts[@]}"
do
	#echo -n "$f "
	#echo -n "./font-patcher $f "
	./font-patcher -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# un-comment to test this script (patch 1 font)
	#break	
done

exit

echo "./font-patcher" . "path"
echo "./font-patcher" . "path -s -q"
newly_created_font="find -name '*.[o,t]tf'"
echo "mv NEWLY_CREATED_FONT $patched_fonts_dir/%/NEWLY_CREATED_FONT"


echo "All unpatched fonts re-patched to their respective sub-directories in $patched_fonts_dir"
