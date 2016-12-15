#!/bin/bash
# version: 0.9.0

fontfile=$1
dir=$(dirname "$0")

#echo "dir $dir"

"${dir}/autohint.sh" "$fontfile"
"${dir}/../fpfix.py" "$fontfile"

printf "\n"
printf "[Nerd Fonts] Post Processed Hack '%s'\n" "$fontfile"

