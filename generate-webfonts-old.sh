#!/usr/bin/env bash
# See commit message that introduces this file :-}

# assets/fonts/Symbols-2048-em Nerd Font Complete v233.woff2

font_src="Symbols-2048-em Nerd Font Complete.woff2"
font_dest="Symbols-2048-em Nerd Font Complete v233.woff2"
webfontdir="assets/fonts"

fontforge -lang=ff -c "Open(\"${webfontdir}/${font_src}\"); Select(0xf500, 0xffff); SelectInvert(); Cut(); Generate(\"${webfontdir}/${font_dest}\")"
