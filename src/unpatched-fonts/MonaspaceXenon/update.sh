#!/usr/bin/env bash

FONT_VERSION=1.000
TMP_DIR=$(mktemp -d)

set -ex

curl -L "https://github.com/githubnext/monaspace/releases/download/v${FONT_VERSION}/monaspace-v${FONT_VERSION}.zip" | tar -xf - -C $TMP_DIR
ls -alh $TMP_DIR

# MonaspaceXenon
mv "${TMP_DIR}/MonaspaceXenon-Bold.otf" ./MonaspaceXenon/Bold/MonaspaceXenon-Bold.otf
mv "${TMP_DIR}/MonaspaceXenon-BoldItalic.otf" ./MonaspaceXenon/BoldItalic/MonaspaceXenon-BoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-ExtraBold.otf" ./MonaspaceXenon/ExtraBold/MonaspaceXenon-ExtraBold.otf
mv "${TMP_DIR}/MonaspaceXenon-ExtraBoldItalic.otf" ./MonaspaceXenon/ExtraBoldItalic/MonaspaceXenon-ExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-ExtraLight.otf" ./MonaspaceXenon/ExtraLight/MonaspaceXenon-ExtraLight.otf
mv "${TMP_DIR}/MonaspaceXenon-ExtraLightItalic.otf" ./MonaspaceXenon/ExtraLightItalic/MonaspaceXenon-ExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-Italic.otf" ./MonaspaceXenon/Italic/MonaspaceXenon-Italic.otf
mv "${TMP_DIR}/MonaspaceXenon-Light.otf" ./MonaspaceXenon/Light/MonaspaceXenon-Light.otf
mv "${TMP_DIR}/MonaspaceXenon-LightItalic.otf" ./MonaspaceXenon/LightItalic/MonaspaceXenon-LightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-Medium.otf" ./MonaspaceXenon/Medium/MonaspaceXenon-Medium.otf
mv "${TMP_DIR}/MonaspaceXenon-MediumItalic.otf" ./MonaspaceXenon/MediumItalic/MonaspaceXenon-MediumItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-Regular.otf" ./MonaspaceXenon/Regular/MonaspaceXenon-Regular.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiBold.otf" ./MonaspaceXenon/SemiBold/MonaspaceXenon-SemiBold.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiBoldItalic.otf" ./MonaspaceXenon/SemiBoldItalic/MonaspaceXenon-SemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideBold.otf" ./MonaspaceXenon/SemiWideBold/MonaspaceXenon-SemiWideBold.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideBoldItalic.otf" ./MonaspaceXenon/SemiWideBoldItalic/MonaspaceXenon-SemiWideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideExtraBold.otf" ./MonaspaceXenon/SemiWideExtraBold/MonaspaceXenon-SemiWideExtraBold.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideExtraBoldItalic.otf" ./MonaspaceXenon-SemiWideExtraBoldItalic.otfSemiWideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideExtraLight.otf" ./MonaspaceXenon/SemiWideExtraLight/MonaspaceXenon-SemiWideExtraLight.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideExtraLightItalic.otf" ./MonaspaceXenon-SemiWideExtraLightItalic.otfSemiWideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideItalic.otf" ./MonaspaceXenon/SemiWideItalic/MonaspaceXenon-SemiWideItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideLight.otf" ./MonaspaceXenon/SemiWideLight/MonaspaceXenon-SemiWideLight.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideLightItalic.otf" ./MonaspaceXenon/SemiWideLightItalic/MonaspaceXenon-SemiWideLightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideMedium.otf" ./MonaspaceXenon/SemiWideMedium/MonaspaceXenon-SemiWideMedium.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideMediumItalic.otf" ./MonaspaceXenon/SemiWideMediumItalic/MonaspaceXenon-SemiWideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideRegular.otf" ./MonaspaceXenon/SemiWideRegular/MonaspaceXenon-SemiWideRegular.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideSemiBold.otf" ./MonaspaceXenon/SemiWideSemiBold/MonaspaceXenon-SemiWideSemiBold.otf
mv "${TMP_DIR}/MonaspaceXenon-SemiWideSemiBoldItalic.otf" ./MonaspaceXenon-SemiWideSemiBoldItalic.otfSemiWideSemiBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideBold.otf" ./MonaspaceXenon/WideBold/MonaspaceXenon-WideBold.otf
mv "${TMP_DIR}/MonaspaceXenon-WideBoldItalic.otf" ./MonaspaceXenon/WideBoldItalic/MonaspaceXenon-WideBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideExtraBold.otf" ./MonaspaceXenon/WideExtraBold/MonaspaceXenon-WideExtraBold.otf
mv "${TMP_DIR}/MonaspaceXenon-WideExtraBoldItalic.otf" ./MonaspaceXenon/WideExtraBoldItalic/MonaspaceXenon-WideExtraBoldItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideExtraLight.otf" ./MonaspaceXenon/WideExtraLight/MonaspaceXenon-WideExtraLight.otf
mv "${TMP_DIR}/MonaspaceXenon-WideExtraLightItalic.otf" ./MonaspaceXenon/WideExtraLightItalic/MonaspaceXenon-WideExtraLightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideItalic.otf" ./MonaspaceXenon/WideItalic/MonaspaceXenon-WideItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideLight.otf" ./MonaspaceXenon/WideLight/MonaspaceXenon-WideLight.otf
mv "${TMP_DIR}/MonaspaceXenon-WideLightItalic.otf" ./MonaspaceXenon/WideLightItalic/MonaspaceXenon-WideLightItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideMedium.otf" ./MonaspaceXenon/WideMedium/MonaspaceXenon-WideMedium.otf
mv "${TMP_DIR}/MonaspaceXenon-WideMediumItalic.otf" ./MonaspaceXenon/WideMediumItalic/MonaspaceXenon-WideMediumItalic.otf
mv "${TMP_DIR}/MonaspaceXenon-WideRegular.otf" ./MonaspaceXenon/WideRegular/MonaspaceXenon-WideRegular.otf
mv "${TMP_DIR}/MonaspaceXenon-WideSemiBold.otf" ./MonaspaceXenon/WideSemiBold/MonaspaceXenon-WideSemiBold.otf
mv "${TMP_DIR}/MonaspaceXenon-WideSemiBoldItalic.otf" ./MonaspaceXenon/WideSemiBoldItalic/MonaspaceXenon-WideSemiBoldItalic.otf