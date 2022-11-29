#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0-RC
# Script Version: 1.0.1
#
# Iterates over all patched fonts directories and fetches the current release zip files.
# It fetches the latest release, not release candidate
#
# set -x
#
# Example runs
# ./fetch-archives
# ./fetch-archives v2.2.2
# ./fetch-archives v2.2.2 heavydata

# The following version is automatically updated on releases
version="2.3.0-RC"

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
outputdir=$(realpath "${scripts_root_dir}../../archives")

mkdir -p "$outputdir"

cd "$scripts_root_dir/../../patched-fonts/" || {
  echo >&2 "${LINE_PREFIX} Could not find patched fonts directory"
  exit 1
}

if [ $# -eq 0 ]; then
    versiontag="v${version}"
else
    versiontag=$1
fi

echo "${LINE_PREFIX} Fetching release archives with version tag '${versiontag}'"

# limit archiving to given pattern (first script param) or entire root folder if no param given:
if [ $# -eq 2 ]
  then
    pattern=$2
    search_pattern="*$2*.zip"
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
    echo >&2 "${LINE_PREFIX} Fetching ${versiontag}/${basename}.zip"
    curl --fail -Lso "${outputdir}/${basename}.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/${versiontag}/${basename}.zip" \
        || echo "   => error fetching"
done
