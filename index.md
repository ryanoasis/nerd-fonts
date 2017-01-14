
<h1 align="center">
  <a href="https://github.com/ryanoasis/nerd-fonts"><img src="https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/images/nerd-fonts-logo.png" alt="Nerd Fonts Logo" /></a>
</h1>

<h1 align="center">
  <a href="https://github.com/ryanoasis/nerd-fonts"><img src="https://raw.githubusercontent.com/wiki/ryanoasis/nerd-fonts/screenshots/v1.0.x/custom-sankey-glyphs-combined-diagram.png" alt="Nerd Fonts Sankey Diagram" /></a>
</h1>

## Downloads

[3270.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/3270.zip)

[AnonymousPro.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/AnonymousPro.zip)

[AurulentSansMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/AurulentSansMono.zip)

[BitstreamVeraSansMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/BitstreamVeraSansMono.zip)

[CodeNewRoman.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/CodeNewRoman.zip)

[DejaVuSansMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/DejaVuSansMono.zip)

[DroidSansMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/DroidSansMono.zip)

[FantasqueSansMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/FantasqueSansMono.zip)

[FiraCode.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/FiraCode.zip)

[FiraMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/FiraMono.zip)

[Gohu.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Gohu.zip)

[Hack.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hack.zip)

[Hasklig.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hasklig.zip)

[HeavyData.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/HeavyData.zip)

[Hermit.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hermit.zip)

[Inconsolata.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Inconsolata.zip)

[Iosevka.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Iosevka.zip)

[Lekton.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Lekton.zip)

[LiberationMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/LiberationMono.zip)

[Meslo.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Meslo.zip)

[Monofur.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Monofur.zip)

[Monoid.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Monoid.zip)

[Mononoki.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Mononoki.zip)

[MPlus.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/MPlus.zip)

[ProFont.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/ProFont.zip)

[ProggyClean.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/ProggyClean.zip)

[RobotoMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/RobotoMono.zip)

[ShareTechMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/ShareTechMono.zip)

[SourceCodePro.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/SourceCodePro.zip)

[SpaceMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/SpaceMono.zip)

[Terminus.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Terminus.zip)

[UbuntuMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/UbuntuMono.zip)

## v1.0.0 Release Changelog

### New Features
  - Added 6 new fonts:
    - Code New Roman (enhancement #85)
    - Gohu (enhancement #90)
    - Hasklig (enhancement PR #103) (@jrolfs)
    - Mononoki (enhancement #89)
    - Share Tech Mono (enhancement #105)
    - Space Mono (enhancement #93)
  - Added new Glyph Sets:
    - [Font Awesome Extension](http://andrelgava.github.io/font-awesome-extension/) (Over 170 glyphs) (enhancement #96)
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
    - glyphs (scaling and positioning) (fixes #74)
    - Monospaced font issues
    - Windows and macOS issues (fixes #111)
  - Fixed font name for glyph font 'PowerlineExtraSymbols.otf' (fixes #109)
  - Fixed and tweaked various powerline gaps (PR #107 @sharkusk)
  - Fixed Hack hints being removed in patched versions (Knack) (fixes #70, with help from @chrissimpkins)
  - Fixed various issues with '--careful' flag (PR #107 @sharkusk)
  - Fixed missing codepoint conflict information for Octicons & Font Awesome (fixes #116) (image from @kaymmm)
  - Fixed and refactored various code logic and style 
