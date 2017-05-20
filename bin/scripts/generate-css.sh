#!/bin/bash
# version: 1.1.0
# Generates CSS file for the font

source ./lib/i_all.sh

output_css_file="../../css/nerd-fonts-generated.css"
header_css_file="./css-header.txt"
output_cheat_sheet_file="../../temp/nerd-fonts-generated-cheat-sheet.txt"
LINE_PREFIX="# [Nerd Fonts] "

# clear files
> "$output_css_file" 2> /dev/null
> "$output_cheat_sheet_file" 2> /dev/null

# add top section of CSS
$header_css_file > "$output_css_file"

# describe how the classes were established
printf "\n/*$LINE_PREFIX The following is generated from the build script: */\n" > "$output_css_file"

echo;

for var in "${!i@}"; do
  # trim 'i_' prefix
  glyph_name=${var#*_}
  # replace _ with -
  glyph_name=${glyph_name/_/-}
  glyph_char=${!var}
  glyph_code=$(printf "%x" "'$glyph_char'")

  #echo "$var=${!var}"

  echo "$glyph_name"
  echo "$glyph_char"
  echo "$glyph_code"
  #printf "%x" "'$glyph_char'"

  # generate css rules
  {
    printf ".nf-%s:before, .nerd-font-%s:before, .nerd-fonts-%s:before {" "$glyph_name" "$glyph_name" "$glyph_name"
    printf "\n"
    printf "  content: \"\%s\";" "$glyph_code"
    printf "\n"
    printf "}"
    printf "\n"
  } >> "$output_css_file"

  # generate HTML cheat sheet
  {
    printf "<div class=\"column\">"
    printf "\n"
    printf "  <div class=\"nerd-font nerd-font-%s center\"></div>" "$glyph_name"
    printf "\n"
    printf "  <span>nf-%s <br/>(%s)</span>" "$glyph_name" "$glyph_code"
    printf "\n"
    printf "</div>"
    printf "\n"
  } >> "$output_cheat_sheet_file"

done

printf "Generated CSS and Cheat Sheet HTML\n"
