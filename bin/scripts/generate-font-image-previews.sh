#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.0-RC
# Script Version: 1.0.1
# Create font previews.
# All fonts need to be installed (or no preview is generated)
# Files should end up in the gh-pages branch

set -e
ver=$(inkscape --version)
echo "Check generator version: $ver"

output_dir="../../assets/img/previews/"
template_svg="lib/template-font-preview.svg"

main() {
  mkdir -p "$output_dir"

  for i in $(jq '.fonts | keys | .[]' lib/fonts.json); do
    patchedName=$(jq -r ".fonts[$i].patchedName" lib/fonts.json);
    imagePreviewFont=$(jq -r ".fonts[$i].imagePreviewFont" lib/fonts.json);
    if [ -z "$imagePreviewFont" ]; then
      echo "[Skipping]   $patchedName"
      continue
    fi

    fc-list -q "$imagePreviewFont" \
    && generate_preview "$imagePreviewFont" "$patchedName Nerd Font" \
    || echo "[Missing]    $imagePreviewFont"
  done

}

generate_preview() {
  font=$1
  fontText=$2
  echo "[Generating] $font"
  sed -e "s/000000/ffffff/" -e "s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template_svg" >"${output_dir}${fontText}.svg"
  inkscape "${output_dir}${fontText}.svg" "--actions=select-all;object-to-path;export-filename:${output_dir}${fontText}.svg;export-do;quit-inkscape" 2>/dev/null
  # svgo "${output_dir}${fontText}.svg"
}

main "$@"; exit
