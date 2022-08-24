#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.0.0
# Iterates over all patched fonts directories
# to generate ruby cask files for homebrew-fonts (https://github.com/caskroom/homebrew-fonts)
# only adds non-Windows versions of the fonts

#set -x

version="2.2.0-RC"
patched_parent_dir="../../patched-fonts/"
homepage="https://github.com/ryanoasis/nerd-fonts"
downloadarchive="https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/"
sha256sum=":no_check"
appcast="https://github.com/ryanoasis/nerd-fonts/releases.atom"
appcastcheckpoint=$(curl --compressed --location --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36' "https://github.com/ryanoasis/nerd-fonts/releases.atom" | sed 's|<pubDate>[^<]*</pubDate>||g' | shasum --algorithm 256 | head -c 64)
LINE_PREFIX="# [Nerd Fonts] "

cd $patched_parent_dir || {
  echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
  exit 1
}

function clear_file {
  local outputfile=$1
	# clear output file (needed for multiple runs or updates):
	true > "$outputfile" 2> /dev/null
}

function write_header {
  local outputfile=$1
  local caskname=$2

  {
    printf "cask '%s' do\\n" "$caskname"
    printf "  version '%s'\\n" "$version"
    printf "  sha256 '%s'\\n\\n" "$sha256sum"
    printf "  url \"%s%s.zip\"\\n" "$downloadarchive" "$basename"
    printf "  appcast '%s',\\n" "$appcast"
    printf "          checkpoint: '%s'\\n" "$appcastcheckpoint"
  } >> "$outputfile"
}

function write_body {
	local outputfile=$1
	shift;
	local fonts=("$@")

	if [ "${fonts[0]}" ];
	then
		for i in "${!fonts[@]}"
		do
			individualfont=$(basename "${fonts[$i]}")

			printf "## Found Font: %s\\n" "${fonts[$i]}"

			if [ "$i" == 0 ];
			then
				familyname=$(fc-query --format='%{family}' "${fonts[$i]}")
				{
					printf "  name '%s (%s)'\\n" "$familyname" "$basename"
					printf "  homepage '%s'" "$homepage"
					printf "\\n\\n"
				} >> "$outputfile"
			fi

			printf "  font '%s'\\n" "$individualfont" >> "$outputfile"

		done
	else
		echo "$LINE_PREFIX Did not find TTF or OTF"
	fi
}

function write_footer {
  local outputfile=$1

  {
    printf "end\\n"
  } >> "$outputfile"
}

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find ./ProFont -maxdepth 2 -type d | # uncomment to test 1 font
find . -maxdepth 1 -mindepth 1 -type d | # uncomment to test 1 font
while read -r filename
do

	dirname=$(dirname "$filename")
	basename=$(basename "$filename")
	sha256sum=$(sha256sum "../archives/${basename}.zip" | head -c 64)
	searchdir=$filename
	fontdir=$(basename "$(dirname "$dirname")")

	MONOFONTS=()
	while IFS= read -d $'\0' -r file ; do
	  MONOFONTS=("${MONOFONTS[@]}" "$file")
	done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' -iname '*mono.*' \) -print0)

	FONTS=()
	while IFS= read -d $'\0' -r file ; do
	  FONTS=("${FONTS[@]}" "$file")
	done < <(find "$searchdir" -type f -iwholename '*complete*' \( -iname '*.[o,t]tf' ! -wholename '*Windows*' ! -iwholename '*mono.*' \) -print0)

	outputdir=$PWD/../casks/

	formattedbasename=$(echo "$basename" | tr "[:upper:]" "[:lower:]")

	echo "$LINE_PREFIX Generating cask for: $fontdir"

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	caskname="font-$formattedbasename-nerd-font"
	caskname_mono="${caskname}-mono"
	to="$outputdir/${caskname}.rb"
	to_mono="$outputdir/${caskname_mono}.rb"

  clear_file "$to"
  write_header "$to" "$caskname"

  clear_file "$to_mono"
  write_header "$to_mono" "$caskname_mono"

  write_body "$to" "${FONTS[@]}"
  write_body "$to_mono" "${MONOFONTS[@]}"

  write_footer "$to"
  write_footer "$to_mono"

done

