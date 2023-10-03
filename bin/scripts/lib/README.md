## Contents

This directory contains
* List of all source fonts to patch with CI
* List of all glyphs for the cheat-sheet

### Source fonts

The file `fonts.json` is used by the github CI to patch all fonts and create all the release zip archives.
The 'font matrix' is derived from it.

`get-font-names-from-json.sh` is a small helper to set the matrix up.

### Cheat Sheet

The glyphs get their names through the individual (per glyph source) i\_\*.sh files in this directory.
Only glyphs listed here could be found with the cheat sheet.

* `codicons/codicon.ttf`: `i_cod.sh`
* `devicons.ttf`: `i_dev.sh`
* `font-awesome-extension.ttf`: `i_fae.sh`
* `font-awesome/FontAwesome.otf`: `i_fa.sh`
* `Unicode_IEC_symbol_font.otf`: `i_iec.sh`
* `font-logos.ttf`: `i_logos.sh`
* `materialdesignicons-webfont.ttf`: `i_material.sh` _removed with Nerd Fonts v3_
* `materialdesign/MaterialDesignIconsDesktop.ttf` : `i_md.sh`
* `octicons.ttf`: `i_oct.sh`
* `PowerlineExtraSymbols.otf`: `i_ple.sh`
* `powerline-symbols/PowerlineSymbols.otf`: _is a subset of PowerlineExtraSymbols_
* `Pomicons.otf`: `i_pom.sh`
* `original-source.otf`: `i_seti.sh`
* `weather-icons/weathericons-regular-webfont.ttf`: `i_weather.sh`
