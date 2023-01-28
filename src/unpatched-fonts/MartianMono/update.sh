#!/usr/bin/env bash

# This script downloads release using `FONT_VERSION` variable
# and updates font files.
# It is designed to be ran from the ./src/unpatched-fonts/MartianMono dir.

FONT_VERSION=1.0.0
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/evilmartians/mono/releases/download/v${FONT_VERSION}/martian-mono-${FONT_VERSION}-ttf.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

mv "${TMP_DIR}/MartianMono-CnBd.ttf" ./Condensed-Bold/
mv "${TMP_DIR}/MartianMono-CnLt.ttf" ./Condensed-Light/
mv "${TMP_DIR}/MartianMono-CnMd.ttf" ./Condensed-Medium/
mv "${TMP_DIR}/MartianMono-CnRg.ttf" ./Condensed-Regular/
#mv "${TMP_DIR}/MartianMono-CnSb.ttf" ./Condensed-SemiBold/
mv "${TMP_DIR}/MartianMono-CnTh.ttf" ./Condensed-Thin/
mv "${TMP_DIR}/MartianMono-CnxBd.ttf" ./Condensed-ExtraBold/
mv "${TMP_DIR}/MartianMono-CnxLt.ttf" ./Condensed-ExtraLight/

mv "${TMP_DIR}/MartianMono-NrBd.ttf" ./Narrow-Bold/
mv "${TMP_DIR}/MartianMono-NrLt.ttf" ./Narrow-Light/
mv "${TMP_DIR}/MartianMono-NrMd.ttf" ./Narrow-Medium/
mv "${TMP_DIR}/MartianMono-NrRg.ttf" ./Narrow-Regular/
#mv "${TMP_DIR}/MartianMono-NrSb.ttf" ./Narrow-SemiBold/
mv "${TMP_DIR}/MartianMono-NrTh.ttf" ./Narrow-Thin/
mv "${TMP_DIR}/MartianMono-NrxBd.ttf" ./Narrow-ExtraBold/
mv "${TMP_DIR}/MartianMono-NrxLt.ttf" ./Narrow-ExtraLight/

mv "${TMP_DIR}/MartianMono-StdBd.ttf" ./Standard-Bold/
mv "${TMP_DIR}/MartianMono-StdLt.ttf" ./Standard-Light/
mv "${TMP_DIR}/MartianMono-StdMd.ttf" ./Standard-Medium/
mv "${TMP_DIR}/MartianMono-StdRg.ttf" ./Standard-Regular/
#mv "${TMP_DIR}/MartianMono-StdSb.ttf" ./Standard-SemiBold/
mv "${TMP_DIR}/MartianMono-StdTh.ttf" ./Standard-Thin/
mv "${TMP_DIR}/MartianMono-StdxBd.ttf" ./Standard-ExtraBold/
mv "${TMP_DIR}/MartianMono-StdxLt.ttf" ./Standard-ExtraLight/

mv "${TMP_DIR}/MartianMono-sWdBd.ttf" ./SemiWide-Bold/
mv "${TMP_DIR}/MartianMono-sWdLt.ttf" ./SemiWide-Light/
mv "${TMP_DIR}/MartianMono-sWdMd.ttf" ./SemiWide-Medium/
mv "${TMP_DIR}/MartianMono-sWdRg.ttf" ./SemiWide-Regular/
#mv "${TMP_DIR}/MartianMono-sWdSb.ttf" ./SemiWide-SemiBold/
mv "${TMP_DIR}/MartianMono-sWdTh.ttf" ./SemiWide-Thin/
mv "${TMP_DIR}/MartianMono-sWdxBd.ttf" ./SemiWide-ExtraBold/
mv "${TMP_DIR}/MartianMono-sWdxLt.ttf" ./SemiWide-ExtraLight/
