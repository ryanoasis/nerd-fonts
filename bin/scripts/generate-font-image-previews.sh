#!/bin/bash

main() {

  output_dir="/home/ryan/projects/nerd-fonts-gh-pages/assets/img/previews/"
  template_svg="lib/inkscape-template-font-preview.svg"

  mkdir -p "$output_dir"

  for i in $(jq '.fonts | keys | .[]' lib/fonts.json); do
    patchedName=$(jq -r ".fonts[$i].patchedName" lib/fonts.json);
    #unpatchedName=$(jq -r ".fonts[$i].unpatchedName" lib/fonts.json);
    imagePreviewFont=$(jq -r ".fonts[$i].imagePreviewFont" lib/fonts.json);

    generate_preview "$imagePreviewFont" "$patchedName Nerd Font"
  done

}

generate_preview() {
  font=$1
  fontText=$2
  echo "generating image preview for font: '$font'"
  sed -e "s/000000/ffffff/" -e "s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template_svg" >"${output_dir}${fontText}.svg"
  inkscape -f "${output_dir}${fontText}.svg" --with-gui --verb EditSelectAll --verb ObjectToPath --verb FileVacuum --verb FitCanvasToDrawing --verb FileSave --verb FileQuit &>/dev/null &
  svgo "${output_dir}${fontText}.svg"
}

main "$@"; exit

