#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.1.1
# Generates CSS file for the font

# shellcheck disable=SC1091
source ./lib/i_all.sh

output_css_file="../../css/nerd-fonts-generated.css"
header_css_file="./css-header.txt"
output_cheat_sheet_file="../../temp/nerd-fonts-generated-cheat-sheet.txt"
LINE_PREFIX="# [Nerd Fonts] "
version="2.2.0-RC"

# clear files
true > "$output_css_file" 2> /dev/null
true > "$output_cheat_sheet_file" 2> /dev/null

# describe how the classes were established
{
  printf "/*\\n"
  printf " *%s Website: https://www.nerdfonts.com\\n" "$LINE_PREFIX"
  printf " *%s Development Website: https://github.com/ryanoasis/nerd-fonts\\n" "$LINE_PREFIX"
  printf " *%s Version: %s\\n" "$LINE_PREFIX" "$version"
  printf " *%s The following is generated from the build script\\n" "$LINE_PREFIX"
  printf " */\\n\\n"
  # add top section of CSS
  cat $header_css_file
} >> "$output_css_file"


echo;

# shellcheck disable=SC2154
# we know the '$i' is from the sourced file
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
    printf ".nf-%s:before {" "$glyph_name"
    printf "\\n"
    printf "  content: \"\\%s\";" "$glyph_code"
    printf "\\n"
    printf "}"
    printf "\\n"
  } >> "$output_css_file"

  # generate HTML cheat sheet
  {
    printf "<div class=\"column\">"
    printf "\\n"
    printf "  <div class=\"nf nf-%s center\"></div>" "$glyph_name"
    printf "\\n"
    printf "  <span><div class=\"class-name\">nf-%s</div><div class=\"codepoint\">%s</div></span>" "$glyph_name" "$glyph_code"
    printf "\\n"
    printf "</div>"
    printf "\\n"
  } >> "$output_cheat_sheet_file"

done

printf "Generated CSS and Cheat Sheet HTML\\n"
