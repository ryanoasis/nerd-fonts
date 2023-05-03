#!/usr/bin/env bash
# Nerd Fonts Version: 3.0.0
# Script Version 1.2.0

# Usually this is called without argument. If the first argument
# is 'include-old-material' the old material design icons will be
# included. This is needed for the cheat sheet.

sets=('cod' 'dev' 'fae' 'fa' 'iec' 'logos' 'oct' 'ple' 'pom' 'seti' 'weather' 'md')
base=$(dirname "${BASH_SOURCE[0]:-$0}")

if [ "$1" = "include-old-material" ]; then
	sets=(${sets[@]} 'material')
fi

for set in ${sets[@]}; do
	i="${base}/i_${set}.sh"
	test -f "$i" -a -r "$i" && source "$i"
done
unset i
