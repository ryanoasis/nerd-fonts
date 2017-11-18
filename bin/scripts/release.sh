#!/bin/bash
# version: 1.2.0
# calls the necessary scripts in the necessary order to prepare for a release

#set -x
LINE_PREFIX="# [Nerd Fonts] "

if [ ! $# -eq 1 ]
  then
    echo "$LINE_PREFIX No release version given, must give semver release versionin format: #.#.#, e.g. 1.1.0"
fi

release=$1

./version-bump.sh "$release"
./standardize-and-complete-readmes.sh
./gotta-patch-em-all-font-patcher!.sh
./generate-fontconfig.sh
./generate-casks.sh
./archive-fonts.sh
#./upload-archives.sh # better done as a separate step

exit

