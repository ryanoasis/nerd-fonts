CHANGELOG
================================================================================
This project is using [Semantic Versioning 2.0.0](http://semver.org/)

## v2.1.0

### New Features

  - Added new fonts:
    - IBM Plex (PR #253 @romen)
    - iA Writer (patched as iM Writing) (PR #326 @xasx)
    - Agave (PR #327 @xasx)
    - DaddyTimeMono (fixes #330)
    - Cascadia Code (patched as Caskaydia Cove)
    - JetBrains Mono (PR #421 @Knovour, fixes #420, #425)
  - Added chocolatey install script (PR #259 @rahuliyer95)
  - Added PowerShell installation script for Windows (PR #357 @LZong-tw)
  - Added font previews to website (fixes #316)

### Updates / Improvements

  - Updated most of the glyphs in the 'original-source' (PR #249 @danbee)
  - Updated font patcher script via refactor (PR #288 @haasosaurus)
  - Updated various fonts:
    - Updated Fira Code to version 1.206 (PR #298 @mashehu)
    - Updated 'Fura' to 'Fira' (PR #356 @ShalokShalom) (fixes #352)
    - Updated Fira Code to version 2.0 (PR #372 @hugo-vrijswijk, fixes #424)
    - Updated Iosevka to version 2.1.0 (PR #328 @MindTooth)
    - Updated Fantasque Sans Mono to version 1.8.0 (PR #423 @adzenith)
    - Updated Inconsolata to version 2.001 (fixes #289)
    - Updated Liberation to version 2.00.5 (fixes #344)
    - Updated Victor Mono to version 1.3.1 (fixes #388)
  - Added Cascadia Code to font sources (PR #374 @AaronFriel)
  - Added new language translations:
    - Added Polish readme (PR #301 @P1X3L0V4)
    - Added Spanish readme (PR #378 @Tamh)
    - Added Korean readme (PR #382 @ParkSB)
    - Added Ukrainian readme (PR #392 @igavelyuk)
    - Added Japanese readme (PR #389 @delphinus)
    - Added Italian readme (PR #427 @JGiola)

### Fixes

  - Fixed monospace overlapping (PR #283 @haasosaurus, fixes #270)
  - Fixed glyph bears in monospaced variants (PR #394 @Finii)
  - Fixed archive artifact script not including all fonts (fixes #418)
  - Fixed URLs in font table (PR #260 @raffclar)
  - Fixed possible mixed content error on website for Google Fonts (PR #276 @mashehu)
  - Fixed UX of font-patcher log to be inside <details> block (PR #291 @kevinSuttle)
  - Fixed bash scripts execution from non-standard bash (PR #282 @deadloko)
  - Fixed missing variations of Meslo (PR #308 @segevfiner fixes #302)
  - Fixed typo (PR #331 @mikeshatch)
  - Fixed typo in css class and cheatsheet (fixes #285)
  - Fixed including uuid files (ignored) (PR #371 @lebel)
  - Fixed RFN for Anka Coder (PR #376 @gunman808)
  - Fixed BigBlueTerminal font formatting in readme (PR #381 @this-is-you)
  - Fixed formatting of Agave readme (PR #379 @Roshanjossey)
  - Fixed link to Fish Shell on website (PR #385 @kaykayehnn)
  - Fixed showcase images in FiraCode readme (PR #405 @equwal)
  - Fixed outdated AUR references (PR #416 @sudoLife)
  - Fixed elixir image src in Fira Code readme (PR #419 @kadimisetty)
  - Fixed missing Italic variation for SourceCodePro (fixes #271)

## v2.0.0

### New Features

  - Added new fonts:
    - Noto (all variations) (#213)
    - Overpass Mono (fixes #177)
    - BigBlue Terminal (fixes #170)
    - Dyslexic (fixes #217)
    - Iosevka Term variant (no ligatures) (fixes #198)
    - FiraCode TTF variant (fixes #244)
    - SourceCodePro italics variant (fixes #236)
  - Added new glyph sets:
    - [Material Design Icons](https://github.com/templarian/MaterialDesign)
    - [Weather](https://github.com/erikflowers/weather-icons)
  - Added new glyphs to core:
    - Elm (fixes #172)
    - Elixir (fixes #228)
    - Electron (fixes #237)
  - Added new translations:
    - Added Traditional Chinese of readme (partially fixes #118) (PR #222) (@MindyTai)
    - Added French readme (partially fixes #118) (PR #251) (@pgrimaud)
  - Added ability to remove ligatures via the `--removeligatures` option in `font-patcher`
  - Added `--configfile` option to `font-patcher`

### Updates / Improvements

  - Updated `Hack` font to latest version (`v3.003`) (fixes #216) (with help from @chrissimpkins)
  - Updated `Iosevka` to the latest version (`v1.14.0`) (fixes #229)
  - Updated `Fantasque Sans Mono` to the latest version (`v1.7.2`) (fixes #240)
  - Updated `MPlus` version from `1.018` to `1.063`
  - Updated documentation for urxvt wcwidth implementations (fixes #155)
  - Updated logos and Sankey diagram

### Breaking Updates / Improvements / Changes

  - Updated Font Logos (formerly Font Linux) to latest version (fixes #157)

### Fixes

  - Fixed incorrect exitcode returned from installer (fixes #218) (PR #230 @Phuurl)
  - Fixed 3270 font not being valid/installable on Windows (fixes #12, #196)
  - Fixed weather variables script typo (PR #242 @snown)
  - Fixed Monospaced fonts having ligatures by default (fixed Meslo Mono having ligatures) (fixes #186)
  - Fixed Hasklig ExtraLight & Light variants (fixes #231)

## v1.2.0

### New Features

  - Added new fonts:
    - `Arimo` (fixes #206) (PR #207 @Ksbugbee)
    - `Go-Mono` (PR #199 @bbrks)
    - `Tinos` (fixes #200) (PR #201 @jerezereh)
    - `InconsolataLGC` (PR #205 @iloginow)
    - `Cousine` (fixes #208) (PR #209 @de-olagundoye)
  - Added Contributors section to Website and Repo (fixes #160) (PR #202, PR #204 @lucasreed)
  - Added Travis CI and integrated with ShellCheck script (fixes #120) (#212 PR @andrewimeson)
  - Added new translations:
    - Added Russian translation of readme (partially fixes #118) (PR #203 @magauran)
    - Added Mandarin Chinese translation of readme (partially fixes #118) (PR #214 @hiby90hou)

### Updates / Improvements

  - Updated `Hasklig (Hasklug)` font from version `1.0` to `1.1` (fixes #188) (PR #215 @fernandomora)
  - Updated fontconfig with `monospace` (PR #211 @Tyilo)

### Fixes

  - Fixed font-patcher relative path issues with glyph sources (PR #193 @theGivingTree)
  - Fixed install script not being callable from other directories (PR #194 @Twanislas)
  - Fixed broken links (@reujab)
  - Fixed minor misc readme issues

## v1.1.0

### New Features

  - Added shell helper script (and shell variables) for referencing glyphs (PR #147 @powerman)
  - Added new fonts:
    - `InconsoltaGo` (PR #130 @sodiumjoe)
    - `Ubuntu` (non mono) (fixes #134)
  - Added release script (fixes #137)
  - Added better terminal and font test scripts
  - Added CSS file for using Nerd Fonts on websites
  - Added script to build CSS file with classes to use Nerd Font glyphs
  - Added `--adjust-line-height` option to `font-patcher`

### Updates / Improvements

  - Updated 'Features' section counts (fixes #117) (PR #122 @OmarB97)
  - Updated location of readme images (PR #149 @agriffis)
  - Updated `DejaVu` version from `2.33` to `2.37` (and removes the `DejaVu for Powerline`) (PR #151 @agriffis)
  - Updated Reserved Font Name (RFN) details and provides clarification (fixes #136)
  - Updated `Ubuntu Mono` version from `0.80` to `0.83` and adds missing Bold and Italic variants (fixes #134)
  - Updated `FiraCode` version from `1.102` to `1.204` (fixes #180) (PR #181 @aidanharris)
  - Updated install and Quick Links info in readme
  - Updated Homebrew font install in readme
  - Updated readme with AUR package links
  - Updated readme with links to [NerdFonts.com's Cheat Sheet](http://nerdfonts.com/#cheat-sheet)
  - Updated readme with 'TL;DR' section and re-ordering of font install options (fixes #124)
  - Updated readme with more details on font install options
  - Updated various readme sections
  - Updated contributing markdown with better information
  - Updated explanations of `--mono` option and monospace in general (fixes #165)
  - Updated `font-patcher` progress bars styling
  - Updated `installh.sh` script to support installing to global system paths via `-U` (default) or `-S` flags (PR #187 @brennanfee)

### Fixes

  - Fixed Powerline glyphs sizes, alignment and offsets (fixes #26)
  - Fixed FAQ links in `.github/` (PR #132 @polyzen)
  - Fixed Homebrew command instructions in readme (PR #133 @teddy-error)
  - Fixed markdown rendering issues in readme (PR #148 @aloisdg)
  - Fixed glyph offsets (especially Powerline) (fixes #142)
  - Fixed incorrect typeface names on some fonts (fixes #126)
  - Fixed `Font Linux` screenshot with correct code points (fixes #138) (PR #149 @agriffis)
  - Fixed trailing spaces in readme (clean-up) (PR #167 @thyrlian)
  - Fixed wiki link in issue template (fixes #174) (PR #179 @kballard)
  - Fixed misc typos and link references in readme and `font-patcher` (PR #184 @reujab)
  - Fixed font family name conflicts by adding `Mono` to single-width fonts (fixes #176) (PR #178 @kballard)
  - Fixed `font-patcher` progress bar rounding output (PR #183 @reujab)
  - Fixed executing scripts from other directories (PR #185 @reujab)
  - Fixed missing glyph `e0ca` (ice waveform mirrored) (fixes #182)
  - Fixed `Hasklig` (`Hasklug`) SIL OFL compliance issue
  - Fixed missing or out of date patched font readmes
  - Fixed `font-patcher` glyph set count not ignoring empty codepoints
  - Fixed `font-patcher` progress bars stopping at incorrect percentage

## v1.0.0

### New Features
  - Added 6 new fonts:
    - Code New Roman (enhancement #85)
    - Gohu (enhancement #90)
    - Hasklig (enhancement PR #103) (@jrolfs)
    - Mononoki (enhancement #89)
    - Share Tech Mono (enhancement #105)
    - Space Mono (enhancement #93)
  - Added new Glyph Sets:
    - [Font Awesome Extension](http://andrelzgava.github.io/font-awesome-extension/) (Over 170 glyphs) (enhancement #96)
    - [IEC Power Symbols](http://unicodepowersymbol.com/) (enhancement #94)
  - Added additional methods to download the fonts:
    - Support for [Home Brew fonts](https://github.com/caskroom/homebrew-fonts) (enhancement #72)
    - Archive downloads via releases with scripts to generate archive downloads for patched fonts (enhancement #32)
  - Added single Nerd Fonts glyphs only fonts for Fontconfig aliasing (enhancement #84)
  - Added TTF version of Terminess (Terminus) font (fixes #23)
  - Added support for custom symbol fonts (with `--custom` flag) (PR #107 @sharkusk)
  - Added progress bars options: `--progressbars` & `--no-progressbars` to patcher script
  - Added `--postprocess` flag to allow additional scripts to run after patching (related to #70)

### Updates / Improvements
  - Improved repository size greatly (partially fixes #73)
    - Provides only `complete` version of patched fonts by default (others are still possible via patcher script)
  - Removed `minimal` version of patched fonts (not particularly useful)
  - Removed `variation` versions of patched fonts and instead provides generated list of commands for each combination
  - Updated Font Awesome to the latest version v4.7.0:
    - https://github.com/FortAwesome/Font-Awesome/releases/tag/v4.7.0
    - https://github.com/FortAwesome/Font-Awesome/issues?q=milestone%3A4.7.0
  - Updated Octicons font from [v3.2.0](https://github.com/github/octicons/releases/tag/v3.2.0) to [v4.4.0](https://github.com/github/octicons/releases/tag/v4.4.0)
    - Last version with [font support](https://github.com/primer/octicons/issues/108)
    - Adds glyphs: `verified`, `smiley`, `unverified`, `ellipses`, `file`, `grabber`, `plus-small`, `reply`
    - Various glyph modifications and fixes
  - Updated [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Changelog) from version 2.33 to 2.37
  - Updated readme with information on shallow cloning (enhancement #102)
  - Updated readme with better readability, prose, and removes some passive voice issues
  - Updated sankey diagram in readme with a more visual representation of the glyphs combined
  - Updated readability and format of changelog (even past versions)
  - Removed redundant flag `--limit-font-name-length`

### Fixes
  - Added missing glyphs in range `2630` through `2637` (trigrams) to DejaVu Sans Mono (fixes #100)
  - Fixed various missing glyphs such as `heart`, `zap`, `desktop` (fixes #87)
  - Fixed several long standing issues (fix & enhancement PR #107) (@sharkusk)
    - glyphs (scaling and positioning) (fixes #74, #37)
    - Monospaced font issues
    - Windows and macOS issues (fixes #111)
  - Fixed font name for glyph font 'PowerlineExtraSymbols.otf' (fixes #109)
  - Fixed and tweaked various powerline gaps (PR #107 @sharkusk)
  - Fixed Hack hints being removed in patched versions (Knack) (fixes #70, with help from @chrissimpkins)
  - Fixed various issues with '--careful' flag (PR #107 @sharkusk)
  - Fixed missing codepoint conflict information for Octicons & Font Awesome (fixes #116) (image from @kaymmm)
  - Fixed and refactored various code logic and style
  - Fixed missing Powerline glyphs in `MPlus` font (fixes #40)

## v0.8.0
  - Added 2 new fonts:
    - [Fantasque Sans Mono](https://github.com/belluzj/fantasque-sans) (enhancement #80)
    - [Iosevka](https://github.com/be5invis/Iosevka) (enhancement #81)
  - Added new Glyph set: [Font Linux](https://github.com/Lukas-W/font-linux) (enhancement #75)
  - Updated font install script to limit to a single font family (more typical use case) (enhancement PR #82) (@rawkode)
  - Updated readme: Misc readability tweaks and clean-up
  - Fixed Powerline Symbols not correctly rendering (if font already has the symbols) (fixes #78)
  - Fixed AttributeError with Python 3 version of font patcher script (fixes #79)
  - Fixed certain Hack/Knack font style sets by updating version of Hack to [v2.020](https://github.com/chrissimpkins/Hack/releases/tag/v2.020) (fixes #63)

## v0.7.0
  - Added 3 new fonts:
    - Monoid (enhancement #54)
    - Roboto Mono (enhancement #55)
    - Fira Code (enhancement PR #62, fixes #59) (@jrolfs)
  - Added 1 new font variant:
    - Proggy Clean (Slashed Zero) (fixes #69)
  - Added contributing and issue PR templates (enhancement #66)
  - Added Python 3 version of the font-patcher script (fixes #49)
  - Improved explanation of font choices (complete vs alternative vs minimal choices) with bash script to maintain (fixes #52)
  - Updated Hack to v2.019 (fixes #53)
  - Updated Font Awesome to the latest version v4.5.0 (20 new icons) (fixes #48):
    - https://github.com/FortAwesome/Font-Awesome/releases/tag/v4.5.0
    - https://github.com/FortAwesome/Font-Awesome/issues?q=milestone%3A4.5.0
  - Fixed fonts showing as duplicates in OS X Font Book (fixes #56, enhancement PR #61) (@jrolfs)
  - Fixed Powerline Symbols not being applied correctly to patched fonts since v0.5.0 (fixes #68, fix PR #71) (@F1LT3R)

## v0.6.1
  - Added 'font installation' section from [vim-devicons](https://github.com/ryanoasis/vim-devicons) with changes (enhancement PR #47) (@her)
  - Improved various readme updates and fixes: Improved section headers, gitter badge, misc
  - Fixed possible error with '--careful' flag (fixes #45)
  - Fixed default font directory on linux install script to `~/.local/share/fonts` as the previous was deprecated (fix PR #51) (@shaief)
  - Fixed broken curl download example (fixes #50)
- v0.6.0
  - Updated Font naming conventions and directory paths that are more manageable (partially fixes #32, #42)
  - Updated Font variations to use same Font Family (partially fixes #25, #42)
  - Updated Hack/Knack font to [v2.018](https://github.com/chrissimpkins/Hack/releases/tag/v2.018) (enhancement #39)
  - Updated Source Code Pro (Sauce Code Pro) font to [v2.010/v1.030](https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro%2F1.030R-it) (enhancement #33)
  - Updated Octicons font to [v3.2.0](https://github.com/github/octicons/releases/tag/v3.2.0) plus latest master commits
  - Updated readme with alternate OSX install and execution options (enhancement #38)
  - Improved performance of 'Multiple Fonts Patcher (Gotta Patch 'em All Font Patcher!) by using parallelization (background processes) (enhancement #44)
  - Added new flag/option to font patcher (--outputdir) to allow specifying where to save patched font instead of current directory (enhancement #44)
  - Added 'Powerline Extra' symbols (enhancement #30, #35)
  - Added more Glyphs from Vim-devicons glyph set (various folders, Go, Windows logo, Vim logo, etc)
  - Fixed patched fonts not retaining glyph names (fixes #41)
  - Fixed Ligatures being lost/overwritten when patching (fixes #43)
  - Regenerated all patched fonts

## v0.5.1
  - Added Gitter chat badge
  - Updated readme with badges

## v0.5.0
  - Added Hack font (as 'Knack' for now) (enhancement PR #28) (@cheba)
  - Updated and improved all fonts patcher script (enhancement PR #27) (@cheba)
  - Updated Font Awesome to the latest version v4.4.0
    - for more details see https://github.com/FortAwesome/Font-Awesome/releases/tag/v4.4.0
  - Updated readme with Reserved Font Name info, Hack font, and various version updates
  - Updated the directory structures to make it easier to find font styles
  - Updated all patch fonts to use latest changes and fixes
  - Fixed unicode codepoints for Font Awesome glyphs (fixes #31)
  - Fixed potential SIL Open Font License (OFL) issue with 'Fira Mono' (patched as 'Fura')

## v0.4.1
  - Fixed wrong em sizes on some glyphs (particularly Font Awesome) (fixes #24)
    - Regenerated all patched fonts
  - Added version, comment and fontlog (with changelog notes) to fonts
  - Added image: non text version of patcher logo
  - Removed misc unnecessary code (clean-up)
  - Updated changelog: added missing release details and updated other releases

## v0.4.0
 - Added support for 'octicons', 'font-awesome' font glyphs
 - Added missing font combinations
 - Added Hermit (as 'Hurmit' to comply with SIL Open Font License (OFL)) font
 - Added more sample fonts (Hermit and SourceCodePro variants)
 - Added logos
 - Added 'Code of Conduct'
 - Added missing Pomicons.otf source file and update .gitignore (fixes #19)
 - Added 'all fonts patcher script' pattern parameter support (fuzzy matching)
 - Updated readme: python-fontforge minimum version & link to FontForge install docs (enhancement PR #18) (@blueyed)
 - Updated readme: various misc improvements and fixes
 - Fixed font-patcher to only load Pomicons.otf with '--pomicons' flag (enhancement PR #20) (fixes #19) (@blueyed)
 - Fixed other misc issues
 - Added font files versioning

## v0.3.1
 - Updated readme
 - Fixed font patcher output name for Mono fonts
 - Fixed patcher overwriting fonts with 'Mono' versions preventing all combinations from being generated (only 220 instead of 352)
 - Fixed more possible license issues by completely removed 'Input Mono' font related files
 - Fixed all patched fonts: Re-patched all the fonts due to issue with font patcher and all fonts

## v0.3.0
 - Added new fonts, set up unpatched sources, and set up patched version folders (enhancement #10)
   - Fonts: 3270, Aurulent Sans Mono, Bitstream Vera Sans Mono, Heavy Data, Lekton, MPlus (M+), ProFont
 - Added script to re-patch all of the fonts (work in progress) for enhancement (enhancement #11)
 - Added pomicon glyphs (enhancement #14)
 - Updated devicons font source to latest version 1.8.0 release
 - Updated the range to include new glyphs from latest devicons 1.8.0 (work toward but NOT does not fix #12)
 - Updated scripts and files: various clean-up and refactoring tasks
 - Updated readme

## v0.2.1
 - Added fonts install script for Linux and Mac OS (enhancement PR #5) (@srijanshetty)
 - Added detection and warnings when using unsupported (old) fontforge versions (fixes #6)
 - Added missing patched fonts
 - Fixed Licensing compliance issues (#7)
   - includes removing PragmataPro (@abl)
 - Updated readme: misc updates and tweaks

## v0.2.0
 - True mono support
   - Script can now build single and double width glyphs!
 - Added details of cli parameters and updated fonts list with the true mono spaced fonts (#4)
 - Added/fixed mono fonts single width glyphs support
 - Updated readme

## v0.1.2
 - Updated readme with better description and explanation of the options available
 - Added new unpatched font PragmataPro for Powerline
 - Added new patched font PragmataPro for Powerline Plus Nerd File Types

## v0.1.1
 - Fixes scaling issues in first set of glyphs in certain fonts (fixes issue #1)

## v0.1.0
 - Release
 - Inital port from 'features/1-script-patch-fonts' branch on vim-webdevicons repo
