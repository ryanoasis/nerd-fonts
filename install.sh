#!/bin/bash

# Set source and target directories
powerline_fonts_dir="${PWD}/patched-fonts"

# Accept a font / directory name, to avoid installing all fonts
if [ ! -z "$1" ];
then
  # Ensure thar directory exists, and offer suggestions if not

  if [[ ! -d "$powerline_fonts_dir/$1" ]];
  then
    echo -e "That font directory doesn't exist. Options are: \n"
    ls "$powerline_fonts_dir"
    exit -1
  fi

  powerline_fonts_dir="$powerline_fonts_dir/$1"
fi

find_command="find \"$powerline_fonts_dir\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

if [[ $(uname) == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
  mkdir -p "$font_dir"
fi

# Copy all fonts to user fonts directory
eval "$find_command" | xargs -0 -I % cp "%" "$font_dir/"

# Reset font cache on Linux
if [[ -n $(which fc-cache) ]]; then
  fc-cache -f "$font_dir"
fi

if [ ! -z "$1" ];
then
  echo "$1 font installed to $font_dir"
else
  echo "All fonts installed to $font_dir"
fi
