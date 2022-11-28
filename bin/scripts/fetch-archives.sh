#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0-RC
# Script Version: 1.0.0
#
# Iterates over all patched fonts directories and fetches the current release zip files.
#
# set -x
#
# Example run with pattern matching:
# ./archive-fonts heavydata
# Example with same font names for different paths
# ./archive-fonts gohu

version="2.3.0-RC"

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
outputdir=$(realpath "${scripts_root_dir}../../archives")

mkdir -p "$outputdir"

cd "$scripts_root_dir/../../patched-fonts/" || {
  echo >&2 "${LINE_PREFIX} Could not find patched fonts directory"
  exit 1
}

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 1 ]
  then
    pattern=$1
    search_pattern="*$1*.zip"
    echo "$LINE_PREFIX Limiting archive to pattern '$pattern'"
else
    pattern=".*"
    search_pattern="*.zip"
    echo "$LINE_PREFIX No limiting pattern given, will search entire folder"
fi

find . -maxdepth 1 -iregex "\./$pattern" -type d |
while read -r filename
do
    basename=$(basename "$filename")
    echo >&2 "${LINE_PREFIX} Fetching v${version}/${basename}.zip"
    curl --fail -Lso "${outputdir}/${basename}.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${basename}.zip" \
        || echo "   => error fetching"
done
