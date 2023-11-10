#!/usr/bin/env bash

FONT_VERSION=1.000
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/githubnext/monaspace/releases/download/v${FONT_VERSION}/monaspace-v${FONT_VERSION}.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

# MonaspaceNeon
mv "${TMP_DIR}/MonaspaceNeon-Bold.otf" ./MonaspaceNeon/Bold/MonaspaceNeon-Bold.otf
mv "${TMP_DIR}/MonaspaceNeon-BoldItalic.otf" ./MonaspaceNeon/BoldItalic/MonaspaceNeon-BoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-ExtraBold.otf" ./MonaspaceNeon/ExtraBold/MonaspaceNeon-ExtraBold.otf
mv "${TMP_DIR}/MonaspaceNeon-ExtraBoldItalic.otf" ./MonaspaceNeon/ExtraBoldItalic/MonaspaceNeon-ExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-ExtraLight.otf" ./MonaspaceNeon/ExtraLight/MonaspaceNeon-ExtraLight.otf
mv "${TMP_DIR}/MonaspaceNeon-ExtraLightItalic.otf" ./MonaspaceNeon/ExtraLightItalic/MonaspaceNeon-ExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-Italic.otf" ./MonaspaceNeon/Italic/MonaspaceNeon-Italic.otf
mv "${TMP_DIR}/MonaspaceNeon-Light.otf" ./MonaspaceNeon/Light/MonaspaceNeon-Light.otf
mv "${TMP_DIR}/MonaspaceNeon-LightItalic.otf" ./MonaspaceNeon/LightItalic/MonaspaceNeon-LightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-Medium.otf" ./MonaspaceNeon/Medium/MonaspaceNeon-Medium.otf
mv "${TMP_DIR}/MonaspaceNeon-MediumItalic.otf" ./MonaspaceNeon/MediumItalic/MonaspaceNeon-MediumItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-Regular.otf" ./MonaspaceNeon/Regular/MonaspaceNeon-Regular.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiBold.otf" ./MonaspaceNeon/SemiBold/MonaspaceNeon-SemiBold.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiBoldItalic.otf" ./MonaspaceNeon/SemiBoldItalic/MonaspaceNeon-SemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideBold.otf" ./MonaspaceNeon/SemiWideBold/MonaspaceNeon-SemiWideBold.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideBoldItalic.otf" ./MonaspaceNeon/SemiWideBoldItalic/MonaspaceNeon-SemiWideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideExtraBold.otf" ./MonaspaceNeon/SemiWideExtraBold/MonaspaceNeon-SemiWideExtraBold.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideExtraBoldItalic.otf" ./MonaspaceNeon-SemiWideExtraBoldItalic.otfSemiWideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideExtraLight.otf" ./MonaspaceNeon/SemiWideExtraLight/MonaspaceNeon-SemiWideExtraLight.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideExtraLightItalic.otf" ./MonaspaceNeon-SemiWideExtraLightItalic.otfSemiWideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideItalic.otf" ./MonaspaceNeon/SemiWideItalic/MonaspaceNeon-SemiWideItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideLight.otf" ./MonaspaceNeon/SemiWideLight/MonaspaceNeon-SemiWideLight.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideLightItalic.otf" ./MonaspaceNeon/SemiWideLightItalic/MonaspaceNeon-SemiWideLightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideMedium.otf" ./MonaspaceNeon/SemiWideMedium/MonaspaceNeon-SemiWideMedium.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideMediumItalic.otf" ./MonaspaceNeon/SemiWideMediumItalic/MonaspaceNeon-SemiWideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideRegular.otf" ./MonaspaceNeon/SemiWideRegular/MonaspaceNeon-SemiWideRegular.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideSemiBold.otf" ./MonaspaceNeon/SemiWideSemiBold/MonaspaceNeon-SemiWideSemiBold.otf
mv "${TMP_DIR}/MonaspaceNeon-SemiWideSemiBoldItalic.otf" ./MonaspaceNeon-SemiWideSemiBoldItalic.otfSemiWideSemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideBold.otf" ./MonaspaceNeon/WideBold/MonaspaceNeon-WideBold.otf
mv "${TMP_DIR}/MonaspaceNeon-WideBoldItalic.otf" ./MonaspaceNeon/WideBoldItalic/MonaspaceNeon-WideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideExtraBold.otf" ./MonaspaceNeon/WideExtraBold/MonaspaceNeon-WideExtraBold.otf
mv "${TMP_DIR}/MonaspaceNeon-WideExtraBoldItalic.otf" ./MonaspaceNeon/WideExtraBoldItalic/MonaspaceNeon-WideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideExtraLight.otf" ./MonaspaceNeon/WideExtraLight/MonaspaceNeon-WideExtraLight.otf
mv "${TMP_DIR}/MonaspaceNeon-WideExtraLightItalic.otf" ./MonaspaceNeon/WideExtraLightItalic/MonaspaceNeon-WideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideItalic.otf" ./MonaspaceNeon/WideItalic/MonaspaceNeon-WideItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideLight.otf" ./MonaspaceNeon/WideLight/MonaspaceNeon-WideLight.otf
mv "${TMP_DIR}/MonaspaceNeon-WideLightItalic.otf" ./MonaspaceNeon/WideLightItalic/MonaspaceNeon-WideLightItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideMedium.otf" ./MonaspaceNeon/WideMedium/MonaspaceNeon-WideMedium.otf
mv "${TMP_DIR}/MonaspaceNeon-WideMediumItalic.otf" ./MonaspaceNeon/WideMediumItalic/MonaspaceNeon-WideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceNeon-WideRegular.otf" ./MonaspaceNeon/WideRegular/MonaspaceNeon-WideRegular.otf
mv "${TMP_DIR}/MonaspaceNeon-WideSemiBold.otf" ./MonaspaceNeon/WideSemiBold/MonaspaceNeon-WideSemiBold.otf
mv "${TMP_DIR}/MonaspaceNeon-WideSemiBoldItalic.otf" ./MonaspaceNeon/WideSemiBoldItalic/MonaspaceNeon-WideSemiBoldItalic.otf