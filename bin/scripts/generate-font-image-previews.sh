#!/bin/bash

output_dir="/home/ryan/projects/nerd-fonts-gh-pages/assets/img/previews/"
template_svg="lib/inkscape-template-font-preview.svg"
match_pattern="Nerd Font$"
readarray -t fonts < <( { fc-list --format="%{family[1]}\n" & fc-list --format="%{family[0]}\n"; } | sort | uniq | grep -i "$match_pattern" )

mkdir -p "$output_dir"

for font in "${fonts[@]}"; do
  echo "generating image preview for font: '$font'"
  sed -e "s/000000/ffffff/" -e "s/sans-serif/${font}/" -e "s/Font Name/${font}/" <"$template_svg" >"${output_dir}${font}.svg"
  inkscape -f "${output_dir}${font}.svg" --with-gui --verb EditSelectAll --verb ObjectToPath --verb FileVacuum --verb FitCanvasToDrawing --verb FileSave --verb FileQuit
  svgo "${output_dir}${font}.svg"
done

