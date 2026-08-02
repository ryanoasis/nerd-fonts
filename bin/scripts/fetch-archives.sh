#!/usr/bin/env bash
# Nerd Fonts Version: 3.5.0
# Script Version: 2.1.0
#
# Fetches the current release files.
# It fetches the latest release, not release candidate.
# Or fetches the specified release's files.
#
# The second parameter specifies the beginning of the artifact
# name that shall be fetched. If unspecified all artifacts will
# be fetched.
#
# Example runs
#   fetch-archives.sh
#   fetch-archives.sh v2.2.2
#   fetch-archives.sh v2.2.2 Heavy
#   fetch-archives.sh latest HeavyDat
#   fetch-archives.sh v3.1.0 'Ara.*zip'   (just fetch the zip archive)
#   GITHUB_TOKEN=1234567890 fetch-archives.sh v5.4.3   (draft release)

set -e

LINE_PREFIX="# [Nerd Fonts] "
scripts_root_dir="$(cd "$(dirname "$0")" && pwd)"
outputdir=$(realpath "${scripts_root_dir}/../../archives")

# For draft releases a read-repository-token is needed to access the assets
# Set it in the GITHUB_TOKEN variable when calling
if [ -z "${GITHUB_TOKEN}" ]; then
    echo "${LINE_PREFIX} No GITHUB_TOKEN set, limiting to public releases"
else
    echo "${LINE_PREFIX} Using GITHUB_TOKEN ${GITHUB_TOKEN}"
    AUTH="Authorization: Bearer ${GITHUB_TOKEN}"
fi

if [ $# -ge 1 ]; then
    versiontag=$1
else
    versiontag="latest"
fi

if [ "${versiontag}" != "latest" ]; then
    releasedata=${outputdir}/releases.json
    if [ -f "${releasedata}" ]; then
        echo "${LINE_PREFIX} Reusing existing releases.json file. Remove file to force update."
    else
        echo "${LINE_PREFIX} Fetching all releases metadata"
        curl -H "${AUTH}" -Lf "https://api.github.com/repos/ryanoasis/nerd-fonts/releases" -o "${releasedata}"
    fi
    echo "${LINE_PREFIX} Fetching release metadata with version tag '${versiontag}'"
    if [ -z "$(jq ".[] | select(.tag_name == \"${versiontag}\")" "${releasedata}")" ]; then
        echo "${LINE_PREFIX} Release tag ${versiontag} unknown"
        exit 1
    fi
    # shellcheck disable=SC2207 # We know the output is well-behaved
    assets=( $(jq -r ".[] | select(.tag_name == \"${versiontag}\") | .assets[] | \"\(.name)|\(.url)\" " "${releasedata}") )
else
    echo "${LINE_PREFIX} Fetching latest release metadata"
    releasedata=$(curl -H "${AUTH}" -Lf "https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest")
    versiontag=$(jq -r ".tag_name" <<< "${releasedata}")
    # shellcheck disable=SC2207 # We know the output is well-behaved
    assets=( $(jq -r ".[] | select(.tag_name == \"${versiontag}\") | .assets[] | \"\(.name)|\(.url)\" " <<< "${releasedata}") )
fi

echo "${LINE_PREFIX} Found ${#assets[@]} artifacts"

if [ $# -ge 2 ]; then
    pattern=${2// /\\ }
    echo "${LINE_PREFIX} Limiting archive to regex '${pattern}'"
else
    pattern=""
    echo "${LINE_PREFIX} No limiting pattern given"
fi
if [ $# -gt 2 ]; then
    echo "${LINE_PREFIX} Too many parameters, exiting"
    exit 2
fi

for asset in "${assets[@]}"; do
    name=${asset%%|*}   # up to first |
    url=${asset#*|}     # from first | to end

    if [[ ! "${name}" =~ ${pattern} ]]; then
        continue
    fi
    echo >&2 "${LINE_PREFIX} Fetching ${versiontag} / ${name}"
    mkdir -p "${outputdir}"
    touch "${outputdir}/_Release_${versiontag}"
    curl --fail \
        -H "${AUTH}" \
        -H "Accept: application/octet-stream" \
        -L -o "${outputdir}/${name}" \
        "${url}" || echo "   => error fetching"
done
