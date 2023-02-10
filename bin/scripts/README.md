### Contents

Note: Usually you need to call the scripts in this directory while actually being in this directory (i.e. `pwd = .../nerd-fonts/bin/scripts`).

* `archive-font-patcher.sh`: Archives the font patcher script and subscripts and the required source glyph files [1]
* `archive-fonts.sh`: Creates the release zip file of one or more font(s) from existing `patched-fonts/` content [1]
* `data/`: Contains plain text files used to generate the CSS and cheat sheet files
* `data/sankey/`: Contains instructions on how to create the sankey glyph table manually [3]
* `docker-entrypoint.sh`: This script is packaged into the docker container and is usually used to start patching [2]
* `fetch-archives.sh`: Script to download the release zip archives [6]
* `fpfix.py`: Can be used to set isFixedPitch property in a font [x]
* `generate-casks.sh`: Generates cask files for fonts from data in `archives/` [6]
* `generate-css.sh`: Generates the Nerd Fonts CCS, which can be used to access the glyphs on a web page, and the Cheat Sheet [1]
* `generate-extraglyphs.py:` Generates `extraglyphs.sfd` from Hack Regular [4]
* `generate-fontconfig.sh`: Generates font configuration to enable use of unpatched fonts with Symbols Only Nerd Font [1]
* `generate-font-image-previews.sh`: Generates the preview images for `nerdfonts.com` (i.e. gh-pages) [3]
* `generate-glyph-info-from-set.py`: Generate the `i_xxx.sh` file from a glyph source (font) file, if the glyphs are named correctly [4]
* `generate-original-source.py`: Generate `original-source.otf` from single glyph svgs. [5]
* `generate-webfonts.sh`: Generate woff and woff2 font files from the SymbolsOnly font (for the gh-pages) [1]
* `get-font-names-from-json.sh`: Helper to setup the CI font matrix from `data/fonts.json` [1]
* `gotta-patch-em-all-font-patcher!.sh`: Patch one or more fonts 'complete' with and without `mono` and with and without `windows compat` [1]
* `Hack/`: Special additional post patching script for Hack, invoked via Hack's `config.cfg` (not used when self-patching)
* `lib/`: See its own README
* `name_parser/`: Suite to set up sane Family and SubFamily names, used by `font-patcher` (on demand)
* `optimize-original-source.sh`: Run all icons in `src/svgs` through inkscape to simplify (remove nodes and edges) [5]
* `release.sh`: Rough process how a release is created, not used (see `.github/workflows/release.yml`)
* `standardize-and-complete-readmes.sh` [1]
* `test-fonts.sh`: Print-to-debug all glyphs we patch in [4]
* `test-powerlines.sh`: Print-to-debug powerline examples [4]
* `tests.sh`: Create some font usage gif movie? [x]
* `update-all-contributors-website.py`: Update the contributors page on `nerdfonts.com` (i.e. gh-pages) [7]
* `version-bump.sh`: Change version number in all scripts on a new release [1]

[1] Used by CI (github release workflow)
[2] Used by CI (github docker-release workflow)
[3] To be used manually (sigh)
[4] To be used manually
[5] Used by CI (github packsvgs workflow)
[6] Used by CI (github casks workflow)
[7] Used by CI (github contributors workflow)
[x] Probably not used by anything
