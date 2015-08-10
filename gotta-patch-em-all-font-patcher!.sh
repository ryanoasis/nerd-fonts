#!/bin/bash
# version: 0.4.0

# Set source and target directories
source_fonts_dir="${PWD}/unpatched-sample-fonts"
patched_fonts_dir="${PWD}/patched-fonts"
like_pattern=''

if [ $# -eq 1 ]
  then
    like_pattern=$1
    echo "Parameter given, limiting search and patch to pattern '$like_pattern' given"
fi

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
 done < <(find $source_fonts_dir -name "$like_pattern*.[o,t]tf" -type f -print0)
 #done < <( eval($find_command) )

 #echo "${source_fonts[@]}"

# print total number of source fonts found
echo "Total source fonts found: ${#source_fonts[*]}"
#printf "\n"
#printf "---------------- \n"

#exit

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
	#echo "Moved newly created font to: $patched_font_dir"

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

	# font awesome variations
	./font-patcher --fontawesome -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# octicons variations:
	./font-patcher --octicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# pomicon variations:
	./font-patcher --pomicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --pomicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --pomicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --pomicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# fontawesome + octicons variations:
	./font-patcher --fontawesome --octicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# fontawesome + pomicons variations:
	./font-patcher --fontawesome --pomicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --pomicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --pomicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --pomicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# octicons + pomicons variations:
	./font-patcher --octicons --pomicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons --pomicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons --pomicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --octicons --pomicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	# fontawesome + octicons + pomicons variations:
	./font-patcher --fontawesome --octicons --pomicons -q "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons --pomicons -q -s "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons --pomicons -q -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir

	./font-patcher --fontawesome --octicons --pomicons -q -s -w "$f"
	printf "\n---------------\n"
	newly_created_font=$(find -maxdepth 1 -name '*.[o,t]tf')
	echo "newly_created_font = $newly_created_font"
	patched_font_dir="${f%/*}/"
	patched_font_dir="${patched_font_dir/unpatched-sample-fonts/patched-fonts}"
	mv "$newly_created_font" $patched_font_dir



	# un-comment to test this script (patch 1 font)
	#break
done


echo "All unpatched fonts re-patched to their respective sub-directories in $patched_fonts_dir"
