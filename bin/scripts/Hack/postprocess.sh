#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.2.0

fontfile=$1
dir=$(dirname "$0")

"${dir}/fix-dsig.py" "$fontfile"
"${dir}/fix-fstype.py" "$fontfile"
"${dir}/autohint.sh" "$fontfile"

printf "\\n"
printf "[Nerd Fonts] Post Processed Hack '%s'\\n" "$fontfile"

