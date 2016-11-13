#!/bin/bash
# version: 0.9.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# only adds non-Windows versions of the fonts

set -x

version="0.8.0"
patched_parent_dir="patched-fonts"
homepage="https://github.com/ryanoasis/nerd-fonts"
downloadarchive="https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/"
sha256sum=":no_check"
appcast="https://github.com/ryanoasis/nerd-fonts/releases.atom"
appcastcheckpoint=$(curl --compressed --location --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36' "https://github.com/ryanoasis/nerd-fonts/releases.atom" | sed 's|<pubDate>[^<]*</pubDate>||g' | shasum --algorithm 256 | head -c 64)

cd ../../patched-fonts/ || {
  echo >&2 "# Could not find patched fonts directory"
  exit 1
}

find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find . -maxdepth 1 -type d | # uncomment to test 1 font
while read -r filename
do

	dirname=$(dirname "$filename")
	basename=$(basename "$filename")
	sha256sum=$(sha256sum "../archives/${basename}.zip" | head -c 64)
	searchdir=$filename
	fontdir=$(basename "$(dirname "$dirname")")

	FONTS=()
	while IFS= read -d $'\0' -r file ; do
	  FONTS=("${FONTS[@]}" "$file")
	done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' \) -print0)

	outputdir=$PWD/../casks/

	formattedbasename=$(echo "$basename" | tr "[:upper:]" "[:lower:]")

	echo "# Generating cask for: $fontdir"

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	caskname="font-$formattedbasename-nerd-font"
	to="$outputdir/${caskname}.rb"

	# clear output file (needed for multiple runs or updates):
	> "$to" 2> /dev/null

  # add to the file
  {
    printf "cask '%s' do\n" "$caskname"
    printf "  version '%s'\n" "$version"
    printf "  sha256 '%s'\n\n" "$sha256sum"
    printf "  url '%s%s.zip'\n" "$downloadarchive" "$basename"
    printf "  appcast '%s'\n" "$appcast"
    printf "          checkpoint: '%s'\n" "$appcastcheckpoint"
  } >> "$to"


	if [ "${FONTS[0]}" ];
	then
		for i in "${!FONTS[@]}"
		do
			echo "## Found Font"
			individualfont=$(basename "${FONTS[$i]}")
			#downloadfont="${individualfont/$searchdir\//}"
			echo "individualfont $individualfont"
			echo "downloadfont $downloadfont"
			echo "$i"
			echo "${FONTS[$i]}"
			if [ "$i" == 0 ];
			then
				familyname=$(fc-query --format='%{family}' "${FONTS[$i]}")
				{
					printf "  name '%s (%s)'\n" "$familyname" "$basename"
					printf "  homepage '%s'" "$homepage"
					printf "\n\n"
				} >> "$to"
			fi

			printf "  font '%s'\n" "$individualfont" >> "$to"

		done
	else
		echo "# Did not find TTF or OTF"
	fi

  # add to the file
  {
    printf "end"
  } >> "$to"

done
