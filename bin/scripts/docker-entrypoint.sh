#!/bin/sh

set -e

args=""

# check all args for --out or -o
while [ "$#" -gt 0 ]; do
	if [ "$1" = "-out" ] || [ "$1" = "--outputdir" ];then
		# move past the option
		shift
		# and the value if there is one
		case "$1" in
			-*) continue ;;
			*) shift $(( $# > 0 ? 1 : 0 )) ;;
		esac
		continue
	fi
	args="$args $1"
	shift
done

printf "Running with options:\n%s\n" "$args"

# shellcheck disable=SC2086
for f in /in/*.otf /in/*.ttf /in/*.woff /in/*.eot /in/*.ttc; do [ -f "$f" ] && fontforge -script /nerd/font-patcher -out /out $args "$f"; done

exit 0
