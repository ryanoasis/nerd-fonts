#!/usr/bin/env bash
# Nerd Fonts Version: 3.0.1
# Script Version: 1.1.3
# Iterates over all patched fonts directories
# to generate release archives of the patched font(s)
#
# Example run with pattern matching:
# ./archive-fonts heavydata
# Example with same font names for different paths
# ./archive-fonts gohu

set -e

LINE_PREFIX="# [Nerd Fonts] "
root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}/../..")" >/dev/null 2>&1 || exit && pwd -P)"
outputdir=${root_dir}/archives

mkdir -p "$outputdir"

cd "${root_dir}/patched-fonts/" || {
    echo >&2 "$LINE_PREFIX Could not find patched fonts directory"
    exit 1
}

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 1 ]; then
    pattern=$1
    search_pattern="*$1*.zip"
    echo "$LINE_PREFIX Limiting archive to pattern '$pattern'"
else
    pattern=".*"
    search_pattern="*.zip"
    echo "$LINE_PREFIX No limiting pattern given, will search entire folder"
fi

# create a mini readme with basic info on Nerd Fonts project
touch "$outputdir/readme.md"
mini_readme="$outputdir/readme.md"
cat "$root_dir/src/archive-readme.md" >> "$mini_readme"

# clear out the directory zips
find "${outputdir:?}" -name "$search_pattern" -type f -delete

find . -maxdepth 1 -iregex "\./$pattern" -type d | sort |
while read -r filename; do
    basename=$(basename "$filename")
    searchdir=$filename

    [[ -d "$outputdir" ]] || mkdir -p "$outputdir"



    # ZIP stuff:
    # add font files:
    # -ic (ignore case not working)
    echo "${LINE_PREFIX} Packing ${basename}.zip"
    zip -9 "$outputdir/$basename" -rj "$searchdir" -i '*.[ot]tf' -i '*.[OT]TF' -q
    zipStatus=$?
    if [ "$zipStatus" != "0" ]; then
        echo "$LINE_PREFIX Could not create archive with the path junked (-j option) - likely same font names for different paths, zip status: $zipStatus"
        echo "$LINE_PREFIX Retrying with full path"
        # add font files and license files as full paths:
        zip -9 "$outputdir/$basename" -r "$searchdir" -i '*.[ot]tf' -i '*.[OT]TF' -i '*[Ll]icen[sc]e*' -i '*LICEN[SC]E*' -i 'OFL*' -i 'ofl*' -q
    else
        # we can copy the font files without full paths but not necessarily the license files:
        # add license files separately:
        # zip -9 "$outputdir/$basename" -rj "$searchdir" -i '*license*' -i '*LICENSE*'
        # work around to copy duplicate license files (only the last duplicate found)
        # so we don't have to copy entire paths and can still use the junk option (-j)
        find "$searchdir" -type f -iname "*licen[sc]e*" -o -iname 'ofl*' | awk -F/ '{a[$NF]=$0}END{for(i in a)print a[i]}' | zip -9 -j "$outputdir/$basename" -@
    fi;

    # add mini readme file
    zip -9 "$outputdir/$basename" -rj "$mini_readme" -q
done

rm -f "$mini_readme"
ls -al "$outputdir"
