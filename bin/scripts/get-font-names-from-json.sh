#!/bin/bash

main() {
  # json=()
  # for i in $(jq '.fonts | keys | .[]' lib/fonts.json); do
  #   fontName=$(jq -r ".fonts[$i].patchedName" lib/fonts.json);
  #   json+=("$fontName");
  # done
  # # echo "${json[@]}"
  # # printf '%s\n' "${json[@]}" | jq tojson | jq -R . | jq -s .
  # # printf '%s\n' "${json[@]}" | jq -R . | jq -s .
  # # stringified json:
  # # printf '%s\n' "${json[@]}" | jq -R . | jq -s . | jq tojson
  # echo "${json[@]}"
  # @TODO uncomment and use FULL set once kinks worked out for Release Candidate Workflow
  # jq '.fonts | .[] | .folderName' lib/fonts.json | jq -sc
  # for testing:
  jq '.fonts | .[] | .folderName' lib/fonts-small-subset.json | jq -sc
  # do all the fonts:
  # jq '.fonts | .[] | .folderName' lib/fonts.json | jq -sc
}

main; exit
