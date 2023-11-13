#!/usr/bin/env bash


#!/usr/bin/env bash

FONT_VERSION=22.1.1
TMP_DIR=$(mktemp -d)

set -e

curl -LOf "https://github.com/be5invis/Iosevka/releases/download/v${FONT_VERSION}/ttf-iosevka-term-slab-${FONT_VERSION}.zip" --output-dir "${TMP_DIR}"
unzip -d "${TMP_DIR}" "${TMP_DIR}/*.zip"
ls -alh "${TMP_DIR}"

typefaces=( "" )

# weights=( regular italic oblique \
#     thin* extralight* light* medium* semibold* bold* extrabold* heavy* )

weights=( regular italic oblique \
	light* medium* bold* extrabold* )

for face in "${typefaces[@]}"; do
    echo "Processing ${face} ..."
    if [ -z "${face}" ]; then
        face=.
    else
        mkdir -p "${face}"
    fi
    for weight in "${weights[@]}"; do
        find "${TMP_DIR}" -name "iosevka-term-slab-${weight}.ttf" -exec mv "{}" "${face}" \;
    done
done
