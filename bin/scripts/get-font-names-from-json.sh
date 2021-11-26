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
  jq '.fonts | .[] | .folderName' lib/fonts.json | jq -sc
}

main; exit
