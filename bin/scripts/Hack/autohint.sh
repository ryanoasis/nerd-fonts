#!/bin/bash
# ------------------------------------------------------------------
#
#  autohint.sh
#  Copyright 2016 Christopher Simpkins
#  MIT license
#  Modified by Ryan L McIntyre
#  for Nerd Fonts (https://github.com/ryanoasis/nerd-fonts)
#
# ------------------------------------------------------------------

# DESCRIPTION
# Applies hints to the Hack ttf font builds with ttfautohint
# Executable: ttfautohint (http://www.freetype.org/ttfautohint/doc/ttfautohint.html)

fontfile=$1

echo "[Nerd Fonts] Autohinting Hack '$fontfile'"

command -v ttfautohint >/dev/null 2>&1 || {
	echo "[Nerd Fonts] 'ttfautohint' is required (not installed). Aborting." >&2; exit 1;
}

# ttfautohint - Input and output file names must not be identical
cp "$fontfile" "${fontfile}.tmp"

if [[ "$fontfile" == *" Regular"* ]]
then
	echo "[Nerd Fonts] Hinting Knack (Hack) Regular"
	ttfautohint -l 4 -r 80 -G 350 -x 0 -H 181 -D latn -f latn -w G -W -t -X "" -I -m "bin/scripts/Hack/Hack-Regular-TA.txt" "${fontfile}.tmp" "$fontfile"
elif [[ "$fontfile" == *" Bold"* ]]
then
	echo "[Nerd Fonts] Hinting Knack (Hack) Bold"
	ttfautohint -l 4 -r 80 -G 350 -x 0 -H 260 -D latn -f latn -w G -W -t -X "" -I -m "bin/scripts/Hack/Hack-Bold-TA.txt" "${fontfile}.tmp" "$fontfile"
elif [[ "$fontfile" == *" Italic"* ]]
then
	echo "[Nerd Fonts] Hinting Knack (Hack) Italic"
	ttfautohint -l 4 -r 80 -G 350 -x 0 -H 145 -D latn -f latn -w G -W -t -X "" -I -m "bin/scripts/Hack/Hack-Bold-TA.txt" "${fontfile}.tmp" "$fontfile"
elif [[ "$fontfile" == *" BoldItalic"* ]]
then
	echo "[Nerd Fonts] Hinting Knack (Hack) Bold Italic"
	ttfautohint -l 4 -r 80 -G 350 -x 0 -H 265 -D latn -f latn -w G -W -t -X "" -I -m "bin/scripts/Hack/Hack-Bold-TA.txt" "${fontfile}.tmp" "$fontfile"
else
    echo "[Nerd Fonts] Could not find any Knack (Hack) fonts to hint..."
fi

# clean-up
rm "${fontfile}.tmp"

echo "[Nerd Fonts] Completed Autohinting Hack '$fontfile'"

exit 0


