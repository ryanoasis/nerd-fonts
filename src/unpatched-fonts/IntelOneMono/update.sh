#!/bin/sh

set -eu

VERSION=1.3.0
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
#    ├── IntelOneMono-Bold.ttf
#    ├── IntelOneMono-BoldItalic.ttf
#    ├── IntelOneMono-Italic.ttf
#    ├── IntelOneMono-Light.ttf
#    ├── IntelOneMono-LightItalic.ttf
#    ├── IntelOneMono-Medium.ttf
#    ├── IntelOneMono-MediumItalic.ttf
#    └── IntelOneMono-Regular.ttf

echo "Extracted to $TEMP"

echo "Creating directories"
mkdir -p ./Bold/ ./Bold-Italic/ ./Italic/ ./Light/ ./Light-Italic/ ./Medium/ ./Medium-Italic/ ./Regular/

echo "Moving files"
mv "$TEMP/ttf/IntelOneMono-Bold.ttf" ./Bold
mv "$TEMP/ttf/IntelOneMono-BoldItalic.ttf" ./Bold-Italic
mv "$TEMP/ttf/IntelOneMono-Italic.ttf" ./Italic
mv "$TEMP/ttf/IntelOneMono-Light.ttf" ./Light
mv "$TEMP/ttf/IntelOneMono-LightItalic.ttf" ./Light-Italic
mv "$TEMP/ttf/IntelOneMono-Medium.ttf" ./Medium
mv "$TEMP/ttf/IntelOneMono-MediumItalic.ttf" ./Medium-Italic
mv "$TEMP/ttf/IntelOneMono-Regular.ttf" ./Regular

echo "Done. Make sure to patch the fonts now."
