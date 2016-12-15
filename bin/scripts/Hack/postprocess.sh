#!/bin/bash
# version: 1.0.0

fontfile=$1
dir=$(dirname "$0")

echo "dir $dir"

"${dir}/autohint.sh" "$fontfile"
"${dir}/../fpfix.py" "$fontfile"

printf "\n"
printf "[Nerd Fonts] Post Processed Hack '%s'\n" "$fontfile"

