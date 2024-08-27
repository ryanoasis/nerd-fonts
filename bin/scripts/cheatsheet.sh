#!/usr/bin/env bash
# Nerd Fonts Version: 3.2.1
# Script Version: 1.0.0
#
# Search for a glyph by its name in all patched fonts
# Usage: ./cheatsheet.sh divider

source ./lib/i_all.sh

# Search the key on the declared variables
for glyph in ${!i_*}; do
  if [[ $glyph == *"$1"* ]]; then
    printf "%s\t%x\t%s\n" "${!glyph}" "'${!glyph}'" "$glyph"
  fi
done
