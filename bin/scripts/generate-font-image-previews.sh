#!/usr/bin/env bash
# Nerd Fonts Version: 2.3.3
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

image_font_files=( \
  '3270/Regular/complete/IBM 3270 Nerd Font Complete.ttf' \
  'Agave/complete/agave regular Nerd Font Complete.ttf' \
  'AnonymousPro/complete/Anonymice Nerd Font Complete.ttf' \
  'Arimo/Regular/complete/Arimo Regular Nerd Font Complete.ttf' \
  'AurulentSansMono/complete/AurulentSansMono-Regular Nerd Font Complete.otf' \
  'BigBlueTerminal/complete/BigBlue TerminalPlus Nerd Font Complete.TTF' \
  'BitstreamVeraSansMono/Regular/complete/Bitstream Vera Sans Mono Nerd Font Complete.ttf' \
  'CascadiaCode/Regular/complete/Caskaydia Cove Nerd Font Complete Regular.otf' \
  'CodeNewRoman/Regular/complete/Code New Roman Nerd Font Complete.otf' \
  'Cousine/Regular/complete/Cousine Regular Nerd Font Complete.ttf' \
  'DaddyTimeMono/complete/DaddyTimeMono Nerd Font Complete.ttf' \
  'DejaVuSansMono/Regular/complete/DejaVu Sans Mono Nerd Font Complete.ttf' \
  'DroidSansMono/complete/Droid Sans Mono Nerd Font Complete.otf' \
  'FantasqueSansMono/Regular/complete/Fantasque Sans Mono Regular Nerd Font Complete.ttf' \
  'FiraCode/Regular/complete/Fira Code Regular Nerd Font Complete.ttf' \
  'FiraMono/Regular/complete/Fura Mono Regular Nerd Font Complete.otf' \
  'Gohu/uni-14/complete/GohuFont Nerd Font Complete.ttf' \
  'Go-Mono/Regular/complete/Go Mono Nerd Font Complete.ttf' \
  'Hack/Regular/complete/Hack Regular Nerd Font Complete.ttf' \
  'Hasklig/Regular/complete/Hasklug Nerd Font Complete.otf' \
  'HeavyData/complete/Heavy Data Nerd Font Complete.ttf' \
  'Hermit/Medium/complete/Hurmit Medium Nerd Font Complete.otf' \
  'iA-Writer/iA Writer Mono/Regular/complete/iM Writing Mono S Regular Nerd Font Complete.ttf' \
  'IBMPlexMono/Mono/complete/Blex Mono Nerd Font Complete.ttf' \
  'Inconsolata/complete/Inconsolata Regular Nerd Font Complete.ttf' \
  'InconsolataGo/Regular/complete/InconsolataGo Nerd Font Complete.ttf' \
  'InconsolataLGC/Regular/complete/Inconsolata LGC Nerd Font Complete.ttf' \
  'Iosevka/Regular/complete/Iosevka Term Nerd Font Complete.ttf' \
  'JetBrainsMono/Ligatures/Regular/complete/JetBrains Mono Nerd Font Complete Regular.ttf' \
  'Lekton/Regular/complete/Lekton Nerd Font Complete.ttf' \
  'LiberationMono/complete/Literation Mono Nerd Font Complete.ttf' \
  'Lilex/Regular/complete/Lilex Regular Nerd Font Complete.ttf' \
  'Meslo/M/Regular/complete/Meslo LG M Regular Nerd Font Complete.ttf' \
  'Monofur/Regular/complete/monofur Nerd Font Complete.ttf' \
  'Monoid/Regular/complete/Monoid Regular Nerd Font Complete.ttf' \
  'Mononoki/Regular/complete/Mononoki Nerd Font Complete Regular.ttf' \
  'MPlus/Regular/complete/M+ 1m Nerd Font Complete.ttf' \
  'NerdFontsSymbolsOnly/complete/Symbols-2048-em Nerd Font Complete Mono.ttf' \
  'Noto/Sans-Mono/complete/Noto Sans Mono Regular Nerd Font Complete.ttf' \
  'OpenDyslexic/Regular/complete/OpenDyslexic Regular Nerd Font Complete.otf' \
  'Overpass/Mono/Regular/complete/Overpass Mono Regular Nerd Font Complete.otf' \
  'ProFont/profontiix/complete/ProFont IIx Nerd Font Complete.ttf' \
  'ProggyClean/Regular/complete/ProggyCleanTT Nerd Font Complete.ttf' \
  'RobotoMono/Regular/complete/Roboto Mono Nerd Font Complete.ttf' \
  'ShareTechMono/complete/Shure Tech Mono Nerd Font Complete.ttf' \
  'SourceCodePro/Regular/complete/Sauce Code Pro Nerd Font Complete.ttf' \
  'SpaceMono/Regular/complete/Space Mono Nerd Font Complete.ttf' \
  'Terminus/terminus-ttf-4.40.1/Regular/complete/Terminess (TTF) Nerd Font Complete.ttf' \
  'Tinos/Regular/complete/Tinos Nerd Font Complete.ttf' \
  'Ubuntu/Regular/complete/Ubuntu Nerd Font Complete.ttf' \
  'UbuntuMono/Regular/complete/Ubuntu Mono Nerd Font Complete.ttf' \
  'VictorMono/Regular/complete/Victor Mono Regular Nerd Font Complete.ttf' \
)

# Enable this to get a list of instruction to install all the needed fonts
#
# for f in "${image_font_files[@]}"; do
#   echo "cp '../../patched-fonts/$f' ~/.local/share/fonts"
# done
# exit

# Enable this to get a list of Family names
#
# for f in "${image_font_files[@]}"; do
#   fc-query "../../patched-fonts/$f" '-f %{family}\n'
# done

main "$@"; exit
