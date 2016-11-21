#!/bin/bash
# version: 0.9.0
# Iterates over all archives and uploads to given release

# uncomment to debug:
#set -x

cd ../../archives/ || {
  echo >&2 "# Could not find archives directory"
  exit 1
}

private_config="../private.cfg"

# source the private confit file if exists:
if [ -f "$private_config" ]
then
  source "$private_config"
else
  echo >&2 "# Could not source private config"
  exit 1
fi

TOKEN=$github_access_token
OWNER="ryanoasis"
REPO="nerd-fonts"
# release id from tag:
#RELEASE="v0.8.0"
RELEASE=3229472
FILEPATH="test-asset-upload.txt"
#FILE="https://api.github.com/repos/$OWNER/$REPO/releases/$FILEPATH"
FILE="https://uploads.github.com/repos/$OWNER/$REPO/releases/tags/$RELEASE/assets{?name,label}"

#curl --header 'Authorization: token $TOKEN' \
#     --header 'Accept: application/vnd.github.v3.raw' \
#     --remote-name \
#     --location $FILE

#curl -# -XPOST -H "Authorization:token $TOKEN" -H "Content-Type:application/octet-stream" --data-binary @$FILEPATH https://uploads.github.com/repos/$OWNER/$REPO/releases/tags/$RELEASE/assets?name=$(basename $FILEPATH)&url=xyz
curl -# -XPOST -H "Authorization:token $TOKEN" -H "Content-Type:application/octet-stream" --data-binary @$FILEPATH https://uploads.github.com/repos/$OWNER/$REPO/releases/$RELEASE/assets?name=$(basename $FILEPATH)&url=xyz

# just test a basic upload for now:
exit

find ./Hack -maxdepth 0 -type d | # uncomment to test 1 font
#find . -maxdepth 1 -type d | # uncomment to test all font
while read -r filename
do

	#dirname=$(dirname "$filename")
	basename=$(basename "$filename")
	searchdir=$filename
	#fontdir=$(basename "$(dirname "$dirname")")
	outputdir=$PWD/../archives/

	[[ -d "$outputdir" ]] || mkdir -p "$outputdir"

	zip "$outputdir/$basename" -rj "$searchdir" -i '*.[o,t]tf' -x '*Windows*'
	#zip "$outputdir/$basename" -r "$searchdir" -i '*.[o,t]tf' -x '*Windows*'

done
