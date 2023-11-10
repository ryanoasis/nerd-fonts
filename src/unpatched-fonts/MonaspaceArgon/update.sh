#!/usr/bin/env bash

FONT_VERSION=1.000
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/githubnext/monaspace/releases/download/v${FONT_VERSION}/monaspace-v${FONT_VERSION}.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

# MonaspaceArgon
mv "${TMP_DIR}/MonaspaceArgon-Bold.otf" ./MonaspaceArgon/Bold/MonaspaceArgon-Bold.otf
mv "${TMP_DIR}/MonaspaceArgon-BoldItalic.otf" ./MonaspaceArgon/BoldItalic/MonaspaceArgon-BoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-ExtraBold.otf" ./MonaspaceArgon/ExtraBold/MonaspaceArgon-ExtraBold.otf
mv "${TMP_DIR}/MonaspaceArgon-ExtraBoldItalic.otf" ./MonaspaceArgon/ExtraBoldItalic/MonaspaceArgon-ExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-ExtraLight.otf" ./MonaspaceArgon/ExtraLight/MonaspaceArgon-ExtraLight.otf
mv "${TMP_DIR}/MonaspaceArgon-ExtraLightItalic.otf" ./MonaspaceArgon/ExtraLightItalic/MonaspaceArgon-ExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-Italic.otf" ./MonaspaceArgon/Italic/MonaspaceArgon-Italic.otf
mv "${TMP_DIR}/MonaspaceArgon-Light.otf" ./MonaspaceArgon/Light/MonaspaceArgon-Light.otf
mv "${TMP_DIR}/MonaspaceArgon-LightItalic.otf" ./MonaspaceArgon/LightItalic/MonaspaceArgon-LightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-Medium.otf" ./MonaspaceArgon/Medium/MonaspaceArgon-Medium.otf
mv "${TMP_DIR}/MonaspaceArgon-MediumItalic.otf" ./MonaspaceArgon/MediumItalic/MonaspaceArgon-MediumItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-Regular.otf" ./MonaspaceArgon/Regular/MonaspaceArgon-Regular.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiBold.otf" ./MonaspaceArgon/SemiBold/MonaspaceArgon-SemiBold.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiBoldItalic.otf" ./MonaspaceArgon/SemiBoldItalic/MonaspaceArgon-SemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideBold.otf" ./MonaspaceArgon/SemiWideBold/MonaspaceArgon-SemiWideBold.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideBoldItalic.otf" ./MonaspaceArgon/SemiWideBoldItalic/MonaspaceArgon-SemiWideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideExtraBold.otf" ./MonaspaceArgon/SemiWideExtraBold/MonaspaceArgon-SemiWideExtraBold.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideExtraBoldItalic.otf" ./MonaspaceArgon-SemiWideExtraBoldItalic.otfSemiWideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideExtraLight.otf" ./MonaspaceArgon/SemiWideExtraLight/MonaspaceArgon-SemiWideExtraLight.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideExtraLightItalic.otf" ./MonaspaceArgon-SemiWideExtraLightItalic.otfSemiWideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideItalic.otf" ./MonaspaceArgon/SemiWideItalic/MonaspaceArgon-SemiWideItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideLight.otf" ./MonaspaceArgon/SemiWideLight/MonaspaceArgon-SemiWideLight.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideLightItalic.otf" ./MonaspaceArgon/SemiWideLightItalic/MonaspaceArgon-SemiWideLightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideMedium.otf" ./MonaspaceArgon/SemiWideMedium/MonaspaceArgon-SemiWideMedium.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideMediumItalic.otf" ./MonaspaceArgon/SemiWideMediumItalic/MonaspaceArgon-SemiWideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideRegular.otf" ./MonaspaceArgon/SemiWideRegular/MonaspaceArgon-SemiWideRegular.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideSemiBold.otf" ./MonaspaceArgon/SemiWideSemiBold/MonaspaceArgon-SemiWideSemiBold.otf
mv "${TMP_DIR}/MonaspaceArgon-SemiWideSemiBoldItalic.otf" ./MonaspaceArgon-SemiWideSemiBoldItalic.otfSemiWideSemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideBold.otf" ./MonaspaceArgon/WideBold/MonaspaceArgon-WideBold.otf
mv "${TMP_DIR}/MonaspaceArgon-WideBoldItalic.otf" ./MonaspaceArgon/WideBoldItalic/MonaspaceArgon-WideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideExtraBold.otf" ./MonaspaceArgon/WideExtraBold/MonaspaceArgon-WideExtraBold.otf
mv "${TMP_DIR}/MonaspaceArgon-WideExtraBoldItalic.otf" ./MonaspaceArgon/WideExtraBoldItalic/MonaspaceArgon-WideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideExtraLight.otf" ./MonaspaceArgon/WideExtraLight/MonaspaceArgon-WideExtraLight.otf
mv "${TMP_DIR}/MonaspaceArgon-WideExtraLightItalic.otf" ./MonaspaceArgon/WideExtraLightItalic/MonaspaceArgon-WideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideItalic.otf" ./MonaspaceArgon/WideItalic/MonaspaceArgon-WideItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideLight.otf" ./MonaspaceArgon/WideLight/MonaspaceArgon-WideLight.otf
mv "${TMP_DIR}/MonaspaceArgon-WideLightItalic.otf" ./MonaspaceArgon/WideLightItalic/MonaspaceArgon-WideLightItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideMedium.otf" ./MonaspaceArgon/WideMedium/MonaspaceArgon-WideMedium.otf
mv "${TMP_DIR}/MonaspaceArgon-WideMediumItalic.otf" ./MonaspaceArgon/WideMediumItalic/MonaspaceArgon-WideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceArgon-WideRegular.otf" ./MonaspaceArgon/WideRegular/MonaspaceArgon-WideRegular.otf
mv "${TMP_DIR}/MonaspaceArgon-WideSemiBold.otf" ./MonaspaceArgon/WideSemiBold/MonaspaceArgon-WideSemiBold.otf
mv "${TMP_DIR}/MonaspaceArgon-WideSemiBoldItalic.otf" ./MonaspaceArgon/WideSemiBoldItalic/MonaspaceArgon-WideSemiBoldItalic.otf