#!/bin/bash
# version: 1.0.0
# Iterates over all patched fonts directories
# to generate a fontconfig based on the Nerd Fonts Symbols font
# that contains only the glyphs

#set -x

parent_dir="${PWD}/../../"
unpatched_parent_dir="../../src/unpatched-fonts/"
to="$parent_dir/10-nerd-font-symbols.conf"
symbolfont="Symbols Nerd Font"
LINE_PREFIX="# [Nerd Fonts] "

cd $unpatched_parent_dir || {
  echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
  exit 1
}

# clear output file (needed for multiple runs or updates):
> "$to" 2> /dev/null

# add to the file
{
  printf '<?xml version="1.0"?>'
  printf '\n<!DOCTYPE fontconfig SYSTEM "fonts.dtd">'
  printf '\n<fontconfig>'
} >> "$to"

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
find . -maxdepth 1 -type d | # uncomment to get all fonts
while read -r filename
do

	searchdir=$filename

	FONTS=()
	while IFS= read -d $'\0' -r file ; do
	  FONTS=("${FONTS[@]}" "$file")
	# limit to first variation of family (folder)
	done < <(find "$searchdir" -type f -iname '*.[o,t]tf' -print0 | head -n 1)

  if [ "${FONTS[0]}" ];
  then
    familyname=$(fc-query --format='%{family}' "${FONTS[0]}")

    echo "$LINE_PREFIX Generating fontconfig for: $familyname"

    # add to the file
    {
      printf '\n  <alias>'
      printf '\n    <family>%s</family>' "$familyname"
      printf '\n    <prefer><family>%s</family></prefer>' "$symbolfont"
      printf '\n  </alias>'
    } >> "$to"

  fi

done

# add to the file
{
  printf "\n</fontconfig>\n"
} >> "$to"

