#!/bin/bash
# version: 1.0.0
# Generates CSS file for the font

source ./lib/i_all.sh

output_css_file="../../temp/nerd-fonts-generated.css"
output_cheat_sheet_file="../../temp/nerd-fonts-generated-cheat-sheet.txt"

# clear files
> "$output_css_file" 2> /dev/null
> "$output_cheat_sheet_file" 2> /dev/null

echo $i_oct_heart
printf "%x" "'$i_oct_heart'"

echo $i_fa_glass
printf "%x" "'$i_fa_glass'"

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
