#!/usr/bin/env bash
# Nerd Fonts Version: 3.5.0
# Script Version: 2.0.0
#
# Create font previews.
#
# All fonts need to be installed (or no preview is generated)
# Files should end up in the gh-pages branch

first_step=TRUE # change this if all fonts are installed

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
    if [ "$imagePreviewFont" != "$patchedName Nerd Font" ] && [ "$imagePreviewFont" != "$patchedName NF" ]; then
      echo "[mismatch] (Fam vs name)  $imagePreviewFont <=> $patchedName"
    fi
    if [ -z "$imagePreviewFont" ]; then
      echo "[Skipping]   $patchedName"
      continue
    fi

    if fc-list -q "${imagePreviewFont}:charset=41" ; then
      generate_preview "$imagePreviewFont" "$patchedName Nerd Font"
    elif fc-list -q "${imagePreviewFont}" ; then
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
  inkscape "${output_dir}${font}.svg" --actions="select-all; object-to-path; fit-canvas-to-selection; export-filename:${output_dir}${font}.svg; export-do" --export-type=svg --vacuum-defs --export-plain-svg 2>/dev/null
  # svgo "${output_dir}${font}.svg"
}

generate_preview_symbols() {
  font=$1
  fontText=$2
  echo "[Gen. Symb.] $font"
  sed -e "s/000000/ffffff/" -e "40,80s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template2_svg" >"${output_dir}${font}.svg"
  inkscape "${output_dir}${font}.svg" --actions="select-all; object-to-path; fit-canvas-to-selection; export-filename:${output_dir}${font}.svg; export-do" --export-type=svg --vacuum-defs --export-plain-svg 2>/dev/null
  # svgo "${output_dir}${font}.svg"
}

######
# For the two following helpers you need to enable THIS first:
#
# This is not 100% correct because the config.cfg is not evaluated
if [ "${first_step}" = TRUE ]; then
  echo "Checking fonts.json content..."
  cd ../../src/unpatched-fonts
  image_font_files=( )
  while IFS= read -d $'\n' -r f; do
    if [ ! -f "${f}" ]; then
      echo "Missing or wrong imagePreviewFontSource: ${f}"
      abort=TRUE
    fi
    if [ -n "${abort}" ]; then
      exit 1
    fi
    dir=$(dirname "${f}")
    fontfile=$(fontforge ../../font-patcher --dry "${f}" --debug 2 2>/dev/null | grep 'DEBUG: =====> Filename' | sed "s/[^']*'//;s/'.*//")
    dest=$(find ../../archives -name "${fontfile}")
    if [ -z "${dest}" ]; then
        dest=$(find ../../patched-fonts -name "${fontfile}")
    fi
    if [ -z "${dest}" ]; then
        echo "Can not find ${fontfile}"
    else
        echo "Determined patched font filename: ${dest}"
    fi
    image_font_files+=( "${dest}" )
  done < <(jq -r '.fonts | .[] | ."imagePreviewFontSource"' ../../bin/scripts/lib/fonts.json)
  cd - >/dev/null

  echo
  echo "Here a list of instruction to install all the needed fonts:"
  echo
  echo "mkdir ~/.local/share/fonts/image_preview"

  for f in "${image_font_files[@]}"; do
    if [ -z "$f" ]; then
      echo "echo 'Can not find this, see above'"
    else
      echo "cp '$f' ~/.local/share/fonts/image_preview"
    fi
  done

  echo
  echo "Here a list of Family names, for the fonts.json file"
  echo

  for f in "${image_font_files[@]}"; do
    if [ -z "$f" ]; then
      echo "echo 'Can not find this, see above'"
    else
      fc-query "$f" '-f %{family}\n' || true
    fi
  done

else

  main "$@"; exit

fi
