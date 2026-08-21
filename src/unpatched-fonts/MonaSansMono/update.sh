#!/usr/bin/env bash

FONT_VERSION=2.0.27
TMP_DIR=$(mktemp -d)

set -e

curl -LOf "https://github.com/github/mona-sans/releases/download/v${FONT_VERSION}/mona-sans-static-v${FONT_VERSION}.zip" --output-dir "${TMP_DIR}"
unzip -d "${TMP_DIR}" "${TMP_DIR}/*.zip"

weights=(ExtraLight Light Regular Medium SemiBold Bold ExtraBold Black)

for weight in "${weights[@]}"; do
    find "${TMP_DIR}" -path "*/static/otf/MonaSansMono-${weight}.otf" -exec mv "{}" . \;
done

cp "${TMP_DIR}/OFL.txt" .
