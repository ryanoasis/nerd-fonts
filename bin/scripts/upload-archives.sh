#!/usr/bin/env bash
# Nerd Fonts Version: 2.1.0
# Script Version: 1.2.0
# Iterates over all archives and uploads to given release

# uncomment to debug:
#set -x

LINE_PREFIX="# [Nerd Fonts] "

cd ../../archives/ || {
  echo >&2 "$LINE_PREFIX Could not find archives directory"
  exit 1
}

# We don't need to use a separate access token for accessing Github API when we
# are in a Github action, can use the auto provided `GITHUB_TOKEN`
# see: https://docs.github.com/en/actions/security-guides/automatic-token-authentication
TOKEN=$GITHUB_TOKEN
OWNER="ryanoasis"
REPO="nerd-fonts"
RELEASE_TAG=""

if [ -z "$1" ]
 then
  # before we used to check for tag param and set release URL to releases/latest
  # but to simplify things let's just fail and always require a proper release/tag
  echo "$LINE_PREFIX No Tag Release was given"
  exit 1
else
  echo "$LINE_PREFIX Tag/Release was $1"
  RELEASE_TAG="$1"
fi

if [ -z "$2" ]
 then
  search_pattern="*.zip"
  echo "$LINE_PREFIX No limiting pattern given, will search entire folder"
else
  pattern=$2
  search_pattern="*$2*.zip"
  echo "$LINE_PREFIX Limiting upload archive to pattern '$pattern'"
fi

CURL_DATA="\"tag_name\":\"${RELEASE_TAG}\""

if [ "$PRERELEASE" == "true" ]
  then
    CURL_DATA+=", \"prerelease\": true"
fi

RELEASE_URL="https://api.github.com/repos/${OWNER}/${REPO}/releases/tags/${RELEASE_TAG}"

#if [ "$LAST_RELEASE_ID" = null]
#  then
# @TODO add error checking around creating new release if release/tag already exists
echo "$LINE_PREFIX Creating new release/tag of ${RELEASE_TAG}"
curl \
  -H "Authorization:token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/$OWNER/$REPO/releases \
  -d "{$CURL_DATA}"
#else
#  echo "$LINE_PREFIX A release did exist and the most recent release id was '$RELEASE'"
#fi

LAST_RELEASE_ID=$(curl -# -XGET -H "Authorization:token $TOKEN" -H 'Content-Type: application/json' "$RELEASE_URL" | jq -r '.id')

echo "$LINE_PREFIX The last release id was $LAST_RELEASE_ID"

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
find ./ -name "$search_pattern" | # uncomment to test all font
while read -r filename
do

	basename=$(basename "$filename")

	printf "$LINE_PREFIX Uploading %s \n" "$basename"

	curl \
    -# -XPOST \
    -H "Authorization:token $TOKEN" \
    -H "Content-Type:application/octet-stream" \
    --data-binary @"$basename" https://uploads.github.com/repos/"$OWNER"/"$REPO"/releases/"$LAST_RELEASE_ID"/assets?name="$basename"

	#exit # uncomment to test only 1 zip

done
