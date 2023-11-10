#!/usr/bin/env bash

FONT_VERSION=1.000
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/githubnext/monaspace/releases/download/v${FONT_VERSION}/monaspace-v${FONT_VERSION}.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

# MonaspaceKrypton
mv "${TMP_DIR}/MonaspaceKrypton-Bold.otf" ./MonaspaceKrypton/Bold/MonaspaceKrypton-Bold.otf
mv "${TMP_DIR}/MonaspaceKrypton-BoldItalic.otf" ./MonaspaceKrypton/BoldItalic/MonaspaceKrypton-BoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-ExtraBold.otf" ./MonaspaceKrypton/ExtraBold/MonaspaceKrypton-ExtraBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-ExtraBoldItalic.otf" ./MonaspaceKrypton/ExtraBoldItalic/MonaspaceKrypton-ExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-ExtraLight.otf" ./MonaspaceKrypton/ExtraLight/MonaspaceKrypton-ExtraLight.otf
mv "${TMP_DIR}/MonaspaceKrypton-ExtraLightItalic.otf" ./MonaspaceKrypton/ExtraLightItalic/MonaspaceKrypton-ExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-Italic.otf" ./MonaspaceKrypton/Italic/MonaspaceKrypton-Italic.otf
mv "${TMP_DIR}/MonaspaceKrypton-Light.otf" ./MonaspaceKrypton/Light/MonaspaceKrypton-Light.otf
mv "${TMP_DIR}/MonaspaceKrypton-LightItalic.otf" ./MonaspaceKrypton/LightItalic/MonaspaceKrypton-LightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-Medium.otf" ./MonaspaceKrypton/Medium/MonaspaceKrypton-Medium.otf
mv "${TMP_DIR}/MonaspaceKrypton-MediumItalic.otf" ./MonaspaceKrypton/MediumItalic/MonaspaceKrypton-MediumItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-Regular.otf" ./MonaspaceKrypton/Regular/MonaspaceKrypton-Regular.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiBold.otf" ./MonaspaceKrypton/SemiBold/MonaspaceKrypton-SemiBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiBoldItalic.otf" ./MonaspaceKrypton/SemiBoldItalic/MonaspaceKrypton-SemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideBold.otf" ./MonaspaceKrypton/SemiWideBold/MonaspaceKrypton-SemiWideBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideBoldItalic.otf" ./MonaspaceKrypton/SemiWideBoldItalic/MonaspaceKrypton-SemiWideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideExtraBold.otf" ./MonaspaceKrypton/SemiWideExtraBold/MonaspaceKrypton-SemiWideExtraBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideExtraBoldItalic.otf" ./MonaspaceKrypton-SemiWideExtraBoldItalic.otfSemiWideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideExtraLight.otf" ./MonaspaceKrypton/SemiWideExtraLight/MonaspaceKrypton-SemiWideExtraLight.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideExtraLightItalic.otf" ./MonaspaceKrypton-SemiWideExtraLightItalic.otfSemiWideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideItalic.otf" ./MonaspaceKrypton/SemiWideItalic/MonaspaceKrypton-SemiWideItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideLight.otf" ./MonaspaceKrypton/SemiWideLight/MonaspaceKrypton-SemiWideLight.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideLightItalic.otf" ./MonaspaceKrypton/SemiWideLightItalic/MonaspaceKrypton-SemiWideLightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideMedium.otf" ./MonaspaceKrypton/SemiWideMedium/MonaspaceKrypton-SemiWideMedium.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideMediumItalic.otf" ./MonaspaceKrypton/SemiWideMediumItalic/MonaspaceKrypton-SemiWideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideRegular.otf" ./MonaspaceKrypton/SemiWideRegular/MonaspaceKrypton-SemiWideRegular.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideSemiBold.otf" ./MonaspaceKrypton/SemiWideSemiBold/MonaspaceKrypton-SemiWideSemiBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-SemiWideSemiBoldItalic.otf" ./MonaspaceKrypton-SemiWideSemiBoldItalic.otfSemiWideSemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideBold.otf" ./MonaspaceKrypton/WideBold/MonaspaceKrypton-WideBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideBoldItalic.otf" ./MonaspaceKrypton/WideBoldItalic/MonaspaceKrypton-WideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideExtraBold.otf" ./MonaspaceKrypton/WideExtraBold/MonaspaceKrypton-WideExtraBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideExtraBoldItalic.otf" ./MonaspaceKrypton/WideExtraBoldItalic/MonaspaceKrypton-WideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideExtraLight.otf" ./MonaspaceKrypton/WideExtraLight/MonaspaceKrypton-WideExtraLight.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideExtraLightItalic.otf" ./MonaspaceKrypton/WideExtraLightItalic/MonaspaceKrypton-WideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideItalic.otf" ./MonaspaceKrypton/WideItalic/MonaspaceKrypton-WideItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideLight.otf" ./MonaspaceKrypton/WideLight/MonaspaceKrypton-WideLight.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideLightItalic.otf" ./MonaspaceKrypton/WideLightItalic/MonaspaceKrypton-WideLightItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideMedium.otf" ./MonaspaceKrypton/WideMedium/MonaspaceKrypton-WideMedium.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideMediumItalic.otf" ./MonaspaceKrypton/WideMediumItalic/MonaspaceKrypton-WideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideRegular.otf" ./MonaspaceKrypton/WideRegular/MonaspaceKrypton-WideRegular.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideSemiBold.otf" ./MonaspaceKrypton/WideSemiBold/MonaspaceKrypton-WideSemiBold.otf
mv "${TMP_DIR}/MonaspaceKrypton-WideSemiBoldItalic.otf" ./MonaspaceKrypton/WideSemiBoldItalic/MonaspaceKrypton-WideSemiBoldItalic.otf