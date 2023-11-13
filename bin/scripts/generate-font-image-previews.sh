#!/usr/bin/env bash
# Nerd Fonts Version: 3.0.2
# Script Version: 1.2.2
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
    if [ "$imagePreviewFont" != "$patchedName Nerd Font" -a "$imagePreviewFont" != "$patchedName NF" ]; then
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
  inkscape "${output_dir}${font}.svg" --actions="select-all; object-to-path; vacuum-defs; fit-canvas-to-selection; export-filename:${output_dir}${font}.svg; export-do"
  # svgo "${output_dir}${font}.svg"
}

generate_preview_symbols() {
  font=$1
  fontText=$2
  echo "[Gen. Symb.] $font"
  sed -e "s/000000/ffffff/" -e "40,80s/sans-serif/${font}/" -e "s/Font Name/${fontText}/" <"$template2_svg" >"${output_dir}${font}.svg"
  inkscape "${output_dir}${font}.svg" --actions="select-all; object-to-path; vacuum-defs; fit-canvas-to-selection; export-filename:${output_dir}${font}.svg; export-do"
  # svgo "${output_dir}${font}.svg"
}

# shellcheck disable=SC2034 # used by commented out code (on demand)
image_font_files=( \
  '0xProto/0xProtoNerdFont-Regular.ttf' \
  '3270/Regular/3270NerdFont-Regular.ttf' \
  'Agave/AgaveNerdFont-Regular.ttf' \
  'AnonymousPro/Regular/AnonymiceProNerdFont-Regular.ttf' \
  'Arimo/Regular/ArimoNerdFont-Regular.ttf' \
  'AurulentSansMono/AurulentSansMNerdFont-Regular.otf' \
  'BigBlueTerminal/BigBlueTermPlusNerdFont-Regular.ttf' \
  'BitstreamVeraSansMono/Regular/BitstromWeraNerdFont-Regular.ttf' \
  'CascadiaCode/Regular/CaskaydiaCoveNerdFont-Regular.ttf' \
  'CodeNewRoman/Regular/CodeNewRomanNerdFont-Regular.otf' \
  'ComicShannsMono/ComicShannsMonoNerdFont-Regular.otf' \
  'CommitMono/CommitMonoNerdFont-Regular.otf' \
  'Cousine/Regular/CousineNerdFont-Regular.ttf' \
  'D2Coding/D2CodingLigatureNerdFont-Regular.ttf' \
  'DaddyTimeMono/DaddyTimeMonoNerdFont-Regular.ttf' \
  'DejaVuSansMono/Regular/DejaVuSansMNerdFont-Regular.ttf' \
  'DroidSansMono/DroidSansMNerdFont-Regular.otf' \
  'EnvyCodeR/EnvyCodeRNerdFont-Regular.ttf' \
  'FantasqueSansMono/Regular/FantasqueSansMNerdFont-Regular.ttf' \
  'FiraCode/Regular/FiraCodeNerdFont-Regular.ttf' \
  'FiraMono/Regular/FiraMonoNerdFont-Regular.otf' \
  'GeistMono/Regular/GeistMonoNerdFont-Regular.otf' \
  'Gohu/14/GohuFont14NerdFont-Regular.ttf' \
  'Go-Mono/Regular/GoMonoNerdFont-Regular.ttf' \
  'Hack/Regular/HackNerdFont-Regular.ttf' \
  'Hasklig/Regular/HasklugNerdFont-Regular.otf' \
  'HeavyData/HeavyDataNerdFont-Regular.ttf' \
  'Hermit/Regular/HurmitNerdFont-Regular.otf' \
  'iA-Writer/Mono/Regular/iMWritingMonoNerdFont-Regular.ttf' \
  'IBMPlexMono/Mono/BlexMonoNerdFont-Regular.ttf' \
  'Inconsolata/InconsolataNerdFont-Regular.ttf' \
  'InconsolataGo/Regular/InconsolataGoNerdFont-Regular.ttf' \
  'InconsolataLGC/Regular/InconsolataLGCNerdFont-Regular.ttf' \
  'IntelOneMono/Regular/IntoneMonoNerdFont-Regular.ttf' \
  'Iosevka/Regular/IosevkaNerdFont-Regular.ttf' \
  'IosevkaTerm/Regular/IosevkaTermNerdFont-Regular.ttf' \
  'IosevkaTermSlab/IosevkaTermSlabNerdFont-Regular.ttf' \
  'JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf' \
  'Lekton/Regular/LektonNerdFont-Regular.ttf' \
  'LiberationMono/LiterationMonoNerdFont-Regular.ttf' \
  'Lilex/Regular/LilexNerdFont-Regular.ttf' \
  'MartianMono/Std/MartianMonoNerdFont-Regular.ttf' \
  'Meslo/M/Regular/MesloLGMNerdFont-Regular.ttf' \
  'Monofur/Regular/MonofurNerdFont-Regular.ttf' \
  'Monoid/Regular/MonoidNerdFont-Regular.ttf' \
  'Mononoki/Regular/MononokiNerdFont-Regular.ttf' \
  'MPlus/M_Plus_1_code/M+1CodeNerdFont-Regular.ttf' \
  'NerdFontsSymbolsOnly/SymbolsNerdFontMono-Regular.ttf' \
  'Noto/Sans-Mono/NotoSansMNerdFont-Regular.ttf' \
  'OpenDyslexic/Regular/OpenDyslexicNerdFont-Regular.otf' \
  'Overpass/Mono/Regular/OverpassMNerdFont-Regular.otf' \
  'ProFont/profontiix/ProFontIIxNerdFont-Regular.ttf' \
  'ProggyClean/Regular/ProggyCleanNerdFont-Regular.ttf' \
  'RobotoMono/Regular/RobotoMonoNerdFont-Regular.ttf' \
  'ShareTechMono/ShureTechMonoNerdFont-Regular.ttf' \
  'SourceCodePro/Regular/SauceCodeProNerdFont-Regular.ttf' \
  'SpaceMono/Regular/SpaceMonoNerdFont-Regular.ttf' \
  'Terminus/Regular/TerminessNerdFont-Regular.ttf' \
  'Tinos/Regular/TinosNerdFont-Regular.ttf' \
  'Ubuntu/Regular/UbuntuNerdFont-Regular.ttf' \
  'UbuntuMono/Regular/UbuntuMonoNerdFont-Regular.ttf' \
  'VictorMono/Regular/VictorMonoNerdFont-Regular.ttf' \
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
# exit

main "$@"; exit
