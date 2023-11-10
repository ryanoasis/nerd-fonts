#!/usr/bin/env bash

FONT_VERSION=1.000
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/githubnext/monaspace/releases/download/v${FONT_VERSION}/monaspace-v${FONT_VERSION}.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

# MonaspaceRadon
mv "${TMP_DIR}/MonaspaceRadon-Bold.otf" ./MonaspaceRadon/Bold/MonaspaceRadon-Bold.otf
mv "${TMP_DIR}/MonaspaceRadon-BoldItalic.otf" ./MonaspaceRadon/BoldItalic/MonaspaceRadon-BoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-ExtraBold.otf" ./MonaspaceRadon/ExtraBold/MonaspaceRadon-ExtraBold.otf
mv "${TMP_DIR}/MonaspaceRadon-ExtraBoldItalic.otf" ./MonaspaceRadon/ExtraBoldItalic/MonaspaceRadon-ExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-ExtraLight.otf" ./MonaspaceRadon/ExtraLight/MonaspaceRadon-ExtraLight.otf
mv "${TMP_DIR}/MonaspaceRadon-ExtraLightItalic.otf" ./MonaspaceRadon/ExtraLightItalic/MonaspaceRadon-ExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-Italic.otf" ./MonaspaceRadon/Italic/MonaspaceRadon-Italic.otf
mv "${TMP_DIR}/MonaspaceRadon-Light.otf" ./MonaspaceRadon/Light/MonaspaceRadon-Light.otf
mv "${TMP_DIR}/MonaspaceRadon-LightItalic.otf" ./MonaspaceRadon/LightItalic/MonaspaceRadon-LightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-Medium.otf" ./MonaspaceRadon/Medium/MonaspaceRadon-Medium.otf
mv "${TMP_DIR}/MonaspaceRadon-MediumItalic.otf" ./MonaspaceRadon/MediumItalic/MonaspaceRadon-MediumItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-Regular.otf" ./MonaspaceRadon/Regular/MonaspaceRadon-Regular.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiBold.otf" ./MonaspaceRadon/SemiBold/MonaspaceRadon-SemiBold.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiBoldItalic.otf" ./MonaspaceRadon/SemiBoldItalic/MonaspaceRadon-SemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideBold.otf" ./MonaspaceRadon/SemiWideBold/MonaspaceRadon-SemiWideBold.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideBoldItalic.otf" ./MonaspaceRadon/SemiWideBoldItalic/MonaspaceRadon-SemiWideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideExtraBold.otf" ./MonaspaceRadon/SemiWideExtraBold/MonaspaceRadon-SemiWideExtraBold.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideExtraBoldItalic.otf" ./MonaspaceRadon-SemiWideExtraBoldItalic.otfSemiWideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideExtraLight.otf" ./MonaspaceRadon/SemiWideExtraLight/MonaspaceRadon-SemiWideExtraLight.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideExtraLightItalic.otf" ./MonaspaceRadon-SemiWideExtraLightItalic.otfSemiWideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideItalic.otf" ./MonaspaceRadon/SemiWideItalic/MonaspaceRadon-SemiWideItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideLight.otf" ./MonaspaceRadon/SemiWideLight/MonaspaceRadon-SemiWideLight.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideLightItalic.otf" ./MonaspaceRadon/SemiWideLightItalic/MonaspaceRadon-SemiWideLightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideMedium.otf" ./MonaspaceRadon/SemiWideMedium/MonaspaceRadon-SemiWideMedium.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideMediumItalic.otf" ./MonaspaceRadon/SemiWideMediumItalic/MonaspaceRadon-SemiWideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideRegular.otf" ./MonaspaceRadon/SemiWideRegular/MonaspaceRadon-SemiWideRegular.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideSemiBold.otf" ./MonaspaceRadon/SemiWideSemiBold/MonaspaceRadon-SemiWideSemiBold.otf
mv "${TMP_DIR}/MonaspaceRadon-SemiWideSemiBoldItalic.otf" ./MonaspaceRadon-SemiWideSemiBoldItalic.otfSemiWideSemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideBold.otf" ./MonaspaceRadon/WideBold/MonaspaceRadon-WideBold.otf
mv "${TMP_DIR}/MonaspaceRadon-WideBoldItalic.otf" ./MonaspaceRadon/WideBoldItalic/MonaspaceRadon-WideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideExtraBold.otf" ./MonaspaceRadon/WideExtraBold/MonaspaceRadon-WideExtraBold.otf
mv "${TMP_DIR}/MonaspaceRadon-WideExtraBoldItalic.otf" ./MonaspaceRadon/WideExtraBoldItalic/MonaspaceRadon-WideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideExtraLight.otf" ./MonaspaceRadon/WideExtraLight/MonaspaceRadon-WideExtraLight.otf
mv "${TMP_DIR}/MonaspaceRadon-WideExtraLightItalic.otf" ./MonaspaceRadon/WideExtraLightItalic/MonaspaceRadon-WideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideItalic.otf" ./MonaspaceRadon/WideItalic/MonaspaceRadon-WideItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideLight.otf" ./MonaspaceRadon/WideLight/MonaspaceRadon-WideLight.otf
mv "${TMP_DIR}/MonaspaceRadon-WideLightItalic.otf" ./MonaspaceRadon/WideLightItalic/MonaspaceRadon-WideLightItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideMedium.otf" ./MonaspaceRadon/WideMedium/MonaspaceRadon-WideMedium.otf
mv "${TMP_DIR}/MonaspaceRadon-WideMediumItalic.otf" ./MonaspaceRadon/WideMediumItalic/MonaspaceRadon-WideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceRadon-WideRegular.otf" ./MonaspaceRadon/WideRegular/MonaspaceRadon-WideRegular.otf
mv "${TMP_DIR}/MonaspaceRadon-WideSemiBold.otf" ./MonaspaceRadon/WideSemiBold/MonaspaceRadon-WideSemiBold.otf
mv "${TMP_DIR}/MonaspaceRadon-WideSemiBoldItalic.otf" ./MonaspaceRadon/WideSemiBoldItalic/MonaspaceRadon-WideSemiBoldItalic.otf