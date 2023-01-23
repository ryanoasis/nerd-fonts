#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.2
# Script Version: 1.2.0
# Create font previews.
# All fonts need to be installed (or no preview is generated)
# Files should end up in the gh-pages branch

set -e
ver=$(inkscape --version)
echo "Check generator version: $ver"

output_dir="../../assets/img/previews/"
template_svg="lib/template-font-preview.svg"
template2_svg="lib/template-font-preview2.svg"

main() {
  mkdir -p "$output_dir"

  for i in $(jq '.fonts | keys | .[]' lib/fonts.json); do
    patchedName=$(jq -r ".fonts[$i].patchedName" lib/fonts.json);
    imagePreviewFont=$(jq -r ".fonts[$i].imagePreviewFont" lib/fonts.json);
    # if [ "$imagePreviewFont" != "$patchedName Nerd Font" ]; then
    #   echo "[mismatch]   $imagePreviewFont != $patchedName Nerd Font"
    # fi
    if [ -z "$imagePreviewFont" ]; then
      echo "[Skipping]   $patchedName"
      continue
    fi

    if $( fc-list -q "${imagePreviewFont}:charset=41" ); then
      generate_preview "$imagePreviewFont" "$patchedName Nerd Font"
    elif $( fc-list -q "${imagePreviewFont}" ); then
      generate_preview_symbols "$imagePreviewFont" "$patchedName Nerd Font"
    else
      echo "[Missing]    $imagePreviewFont"
    fi
  done

}

generate_preview() {
  font=$1
  fontText=$2
  echo "[Generating] $font"
  sed -e "s/000000/ffffff/" -e "s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template_svg" >"${output_dir}${font}.svg"
  inkscape "${output_dir}${font}.svg" -g "--verb=EditSelectAll;ObjectToPath;FileVacuum;FitCanvasToDrawing;FileSave;FileQuit" 2>/dev/null
  # svgo "${output_dir}${font}.svg"
}

generate_preview_symbols() {
  font=$1
  fontText=$2
  echo "[Gen. Symb.] $font"
  sed -e "s/000000/ffffff/" -e "40,80s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template2_svg" >"${output_dir}${font}.svg"
  inkscape "${output_dir}${font}.svg" -g "--verb=EditSelectAll;ObjectToPath;FileVacuum;FitCanvasToDrawing;FileSave;FileQuit" 2>/dev/null
  # svgo "${output_dir}${font}.svg"
}

main "$@"; exit
