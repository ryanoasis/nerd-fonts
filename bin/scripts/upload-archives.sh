#!/usr/bin/env bash
# Nerd Fonts Version: 2.0.0
# Script Version: 1.0.1
# Iterates over all archives and uploads to given release

# uncomment to debug:
#set -x
LINE_PREFIX="# [Nerd Fonts] "

cd ../../archives/ || {
  echo >&2 "$LINE_PREFIX Could not find archives directory"
  exit 1
}

private_config="../private.cfg"

# source the private confit file if exists:
if [ -f "$private_config" ]
then
  # shellcheck source=/dev/null
  source "$private_config"
else
  echo >&2 "$LINE_PREFIX Could not source private config"
  exit 1
fi

# shellcheck disable=SC2154
# # we know the '$github_access_token' is from the sourced file
TOKEN=$github_access_token
OWNER="ryanoasis"
REPO="nerd-fonts"

# release id from tag (first script param) or latest if no param given:
if [ $# -eq 1 ]
  then
    tag=$1
    release_url="https://api.github.com/repos/ryanoasis/nerd-fonts/releases/tags/$tag"
    echo "$LINE_PREFIX Tag of '$tag' given, will upload to release id based on '$tag'"
else
    tag=$1
    release_url="https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest"
    echo "$LINE_PREFIX No tag given, will upload to release id based on latest"
fi

RELEASE=$(curl -# -XGET -H "Authorization:token $TOKEN" -H 'Content-Type: application/json' $release_url | jq -r '.id')

echo "$LINE_PREFIX Release id was '$RELEASE'"

#find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
find ./ -name "*.zip" | # uncomment to test all font
while read -r filename
do

	basename=$(basename "$filename")

	printf "$LINE_PREFIX Uploading %s" "$basename"

	curl -# -XPOST -H "Authorization:token $TOKEN" -H "Content-Type:application/octet-stream" --data-binary @"$basename" https://uploads.github.com/repos/"$OWNER"/"$REPO"/releases/"$RELEASE"/assets?name="$basename"

	#exit # uncomment to test only 1 zip

done
