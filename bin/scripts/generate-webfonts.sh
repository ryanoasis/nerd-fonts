#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0
# Script Version: 1.0.0
# Generates web fonts for the website and cheat sheet

# Destination in the gh-pages branch:
# ./assets/fonts/Symbols-2048-em Nerd Font Complete.woff2
# ./assets/fonts/Symbols-2048-em Nerd Font Complete.woff

font_file="Symbols-2048-em Nerd Font Complete"
patched_dir="../../patched-fonts/NerdFontsSymbolsOnly/complete"
webfontdir="../../webfonts"

if [ ! -d "${webfontdir}" ]; then
  mkdir "${webfontdir}"
fi

fontforge -lang=ff -c "Open(\"${patched_dir}/${font_file} Mono.ttf\"); Generate(\"${webfontdir}/${font_file}.woff\")"
fontforge -lang=ff -c "Open(\"${patched_dir}/${font_file} Mono.ttf\"); Generate(\"${webfontdir}/${font_file}.woff2\")"
