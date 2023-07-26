#!/bin/sh

set -eu

VERSION=1.2.1
TEMP=$(mktemp -d)

LINK="https://github.com/intel/intel-one-mono/releases/download/V${VERSION}/ttf.zip"

# First argument is the file to unzip.
# Second argument is the target directory to extract into.
unzip_file() {
  if command -v unzip >/dev/null 2>&1; then
    unzip -q -d "$2" "$1"
  else
    printf "Error: 'unzip' command not found. Make sure it is available on your system.\n"
    exit 1
  fi
}

echo "Downloading Intel One Mono v${VERSION} from"
echo "$LINK"

curl -L "$LINK" -o "$TEMP/iom.zip"
unzip_file "$TEMP/iom.zip" "$TEMP"

# $TEMP
# ├── __MACOSX
# │  └── ttf
# ├── iom.zip
# └── ttf
#    ├── intelone-mono-font-family-bold.ttf
#    ├── intelone-mono-font-family-bolditalic.ttf
#    ├── intelone-mono-font-family-italic.ttf
#    ├── intelone-mono-font-family-light.ttf
#    ├── intelone-mono-font-family-lightitalic.ttf
#    ├── intelone-mono-font-family-medium.ttf
#    ├── intelone-mono-font-family-mediumitalic.ttf
#    └── intelone-mono-font-family-regular.ttf

echo "Extracted to $TEMP"

echo "Creating directories"
mkdir -p ./Bold/ ./Bold-Italic/ ./Italic/ ./Light/ ./Light-Italic/ ./Medium/ ./Medium-Italic/ ./Regular/

echo "Moving files"
mv "$TEMP/ttf/intelone-mono-font-family-bold.ttf" ./Bold
mv "$TEMP/ttf/intelone-mono-font-family-bolditalic.ttf" ./Bold-Italic
mv "$TEMP/ttf/intelone-mono-font-family-italic.ttf" ./Italic
mv "$TEMP/ttf/intelone-mono-font-family-light.ttf" ./Light
mv "$TEMP/ttf/intelone-mono-font-family-lightitalic.ttf" ./Light-Italic
mv "$TEMP/ttf/intelone-mono-font-family-medium.ttf" ./Medium
mv "$TEMP/ttf/intelone-mono-font-family-mediumitalic.ttf" ./Medium-Italic
mv "$TEMP/ttf/intelone-mono-font-family-regular.ttf" ./Regular

echo "Done. Make sure to patch the fonts now."
