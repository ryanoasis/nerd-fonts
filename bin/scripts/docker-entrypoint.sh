#!/bin/sh

skip=false
args=""

# Discard --out option
for i; do
    [ "${i}" != "${i% *}" ] && i="\"$i\""
    if [ "$i" = "--out" ] || [ "$i" = "-o" ]; then
        skip=true
    else
        if [ "$skip" = false ] || [ "$i" == "-*" ]; then
            args="$args $i"
        fi
        skip=false
    fi
done

for f in /in/*.otf /in/*.ttf /in/*.woff /in/*.eot /in/*.ttc; do [ -f "$f" ] && fontforge -script /nerd/font-patcher -out /out $args "$f"; done
