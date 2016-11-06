#!/bin/bash
# version: 0.9.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# only adds non-Windows versions of the fonts

#set -x

patched_parent_dir="patched-fonts"
homepage="https://github.com/ryanoasis/nerd-fonts"

cd ../../patched-fonts/ || {
  echo >&2 "# Could not find patched fonts directory"
  exit 1
}

#find . -type d -iname 'complete' | # uncomment to do ALL fonts
#find ./Hack -type d -iname 'complete' | # uncomment to test 1 font
find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
while read -r filename
do

	dirname=$(dirname "$filename")
	basename=$(basename "$filename")
	searchdir=$filename
	fontdir=$(basename "$(dirname "$dirname")")

	## limit looking for the readme files in the parent dir not the child dirs:
	#if [[ $dirname != "." ]];
	#then
	#   searchdir=$dirname
	#fi

	#TTF=( $(find "$searchdir" -type f \( -iname '*.ttf' ! -wholename '*Windows*' \)) )
	#OTF=( $(find "$searchdir" -type f \( -iname '*.otf' ! -wholename '*Windows*' \)) )
	#FONTS=( $(find "$searchdir" . -type f \( -iname '*.otf' -o -iname '*.ttf' ! -wholename '*Windows*' \)) )
	#FONTS=$(find "$searchdir" -type f  -iname 'complete' \( -iname '*.otf' -o -iname '*.ttf' ! -wholename '*Windows*' \))
	#FONTS=$(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.otf' -o -iname '*.ttf' ! -wholename '*Windows*' \) -print0)

	FONTS=()
	while IFS= read -d $'\0' -r file ; do
	  FONTS=("${FONTS[@]}" "$file")
	done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' \) -print0)

	#FONTS=$(find "$searchdir/" -type f)
	#echo "FONTS[0] ${FONTS[0]}"
	#echo "FONTS[1] ${FONTS[1]}"
	#exit
	outputdir=$PWD/../casks/

	formattedbasename=$(echo "$basename" | tr "[:upper:]" "[:lower:]")

	echo "searchdir $searchdir"
	echo "filename $filename"
	echo "basename $basename"
	echo "formattedbasename $formattedbasename"
	echo "dirname $dirname"
	echo "fontdir $fontdir"

	echo "# Generating cask for: $fontdir"

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	caskname="font-$formattedbasename-nerd-font"
	to="$outputdir/${caskname}.rb"

	# clear output file (needed for multiple runs or updates):
	> "$to" 2> /dev/null

  # add to the file
  {
    printf "cask '%s' do\n" "$caskname"
    printf "  version :latest\n"
    printf "  sha256 :no_check\n"
    printf "  url '%s/blob/master/patched-fonts/%s'\n" "$homepage" "$basename"
    printf "  homepage '%s'" "$homepage"
    printf "\n"
  } >> "$to"


	if [ "${FONTS[0]}" ];
	then
		#echo "fonts ${FONTS}"
		#echo "fonts[0] ${FONTS[0]}"
		for i in "${!FONTS[@]}"
		do
			echo "## Found Font"
			individualfont=${FONTS[$i]}
			downloadfont="${individualfont/$searchdir\//}"
			echo "individualfont $individualfont"
			echo "downloadfont $downloadfont"
			echo "$i"
			#echo "${FONTS[$i]}"
			if [ "$i" == 0 ];
			then
				familyname=$(fc-query --format='%{family}' "${FONTS[$i]}")
				printf "  name '%s'\n" "$familyname" >> "$to"
				printf "\n" >> "$to"
			fi

			printf "  font '%s'\n" "$downloadfont" >> "$to"

		done
	else
		echo "# Did not find TTF or OTF"
	fi

  # add to the file
  {
    printf "\n"
    printf "end"
  } >> "$to"

done
