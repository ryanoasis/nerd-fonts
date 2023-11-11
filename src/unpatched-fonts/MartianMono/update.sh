#!/usr/bin/env bash

# This script downloads release using `FONT_VERSION` variable
# and updates font files.
# It is designed to be ran from the ./src/unpatched-fonts/MartianMono dir.

FONT_VERSION=1.0.0
TMP_DIR=$(mktemp -d)

set -e

curl -LOf "https://github.com/evilmartians/mono/releases/download/v${FONT_VERSION}/martian-mono-${FONT_VERSION}-ttf.zip" --output-dir "${TMP_DIR}"
unzip -d "${TMP_DIR}" "${TMP_DIR}/*.zip"
ls -alh "${TMP_DIR}"

# typefaces=(Cn Nr Std sWd) # Condensed Narrow Standard SemiWide
typefaces=(Cn Std)

# weights=(Th xLt Lt Rg Md Bd xBd) # Thin ExtraLight Light Regular Medium Bold ExtraBold
weights=(Rg Md Bd)

for face in "${typefaces[@]}"; do
    echo "Processing ${face} ..."
    mkdir -p "${face}"
    for weight in "${weights[@]}"; do
        find "${TMP_DIR}" -name "MartianMono-${face}${weight}.ttf" -exec mv "{}" "${face}" \;
    done
done
