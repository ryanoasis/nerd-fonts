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
#exit 0

if [[ "$fontfile" == *"Regular"* ]]
then
	echo "regular"
	ttfautohint -l 4 -r 80 -G 350 -x 0 -H 181 -D latn -f latn -w G -W -t -X "" -I -m "bin/scripts/Hack/Hack-Regular-TA.txt" "${fontfile}.tmp" "$fontfile"
else
	echo "not regular"
fi

# clean-up
#rm "${fontfile}.tmp"

echo "[Nerd Fonts] Completed Autohinting Hack '$fontfile'"

exit 0

# Hack-Regular.ttf
ttfautohint -l 4 -r 80 -G 350 -x 0 -H 181 -D latn -f latn -w G -W -t -X "" -I -m "Hack-Regular-TA.txt" "$fontfile" "$fontfile"
#ttfautohint -l 4 -r 80 -G 350 -x 0 -H 181 -D latn -f latn -w G -W -t -X "" -I -m "Hack-Regular-TA.txt" "../prehinted_builds/Hack-Regular-TT.ttf" "../posthinted_builds/Hack-Regular.ttf"
#echo "Hack-Regular-TT.ttf hinted and moved to ../posthinted_builds/Hack-Regular.ttf"

exit 0

# Hack-Bold.ttf
ttfautohint -l 4 -r 80 -G 350 -x 0 -H 260 -D latn -f latn -w G -W -t -X "" -I -m "Hack-Bold-TA.txt" "../prehinted_builds/Hack-Bold-TT.ttf" "../posthinted_builds/Hack-Bold.ttf"
echo "Hack-Bold-TT.ttf hinted and moved to ../posthinted_builds/Hack-Bold.ttf"

# Hack-Italic.ttf
ttfautohint -l 4 -r 80 -G 350 -x 0 -H 145 -D latn -f latn -w G -W -t -X "" -I -m "Hack-Italic-TA.txt" "../prehinted_builds/Hack-Italic-TT.ttf" "../posthinted_builds/Hack-Italic.ttf"
echo "Hack-Italic-TT.ttf hinted and moved to ../posthinted_builds/Hack-Italic.ttf"

# Hack-BoldItalic.ttf
ttfautohint -l 4 -r 80 -G 350 -x 0 -H 265 -D latn -f latn -w G -W -t -X "" -I -m "Hack-BoldItalic-TA.txt" "../prehinted_builds/Hack-BoldItalic-TT.ttf" "../posthinted_builds/Hack-BoldItalic.ttf"
echo "Hack-BoldItalic-TT.ttf hinted and moved to ../posthinted_builds/Hack-BoldItalic.ttf"
