<h1 align="center">
	<img src="images/nerd-fonts-logo.png" alt="nerd fonts">
</h1>
[![GitHub version](https://badge.fury.io/gh/ryanoasis%2Fnerd-fonts.svg)](http://badge.fury.io/gh/ryanoasis%2Fnerd-fonts)
***
| **[Fonts](#patched-fonts)** | **[Patcher](#font-patcher)** |
|-----------------------------|------------------------------|
| [![fonts-logo-small](images/nerd-fonts-character-logo-md.png)](#patched-fonts) | [![patcher-logo-small](images/nerd-fonts-patcher-logo-md.png)](#font-patcher) |
***

* A [fontforge python script](#font-patcher) to patch any font
* Over **20** already [patched font families](#patched-fonts)
* Over **1,700** unique combinations/variations of patched fonts [(more details)](#combinations)
* Over **900** glyphs/icons combined [(more details)](#combinations)
* Originally created for use with [vim-devicons ➶][vim-devicons] vim plugin

## Table of Contents
- [font nerd icons](#)
	- [Glyph sets](#glyph-sets)
	- [Usage](#usage)
	- [Patched Fonts List](#patched-fonts)
	- [Combinations](#combinations)
	- [Font Install Script (Linux & Mac OS X)](#font-install-script)
	- [Font Patcher](#font-patcher)
	- [Gotta Patch 'em All Font Patcher!](#gotta-patch-em-all)
	- [Other Good Fonts to Patch](#other-good-fonts-to-patch)
	- [Rationale](#rationale)
	- [Other](#other)
	- [License](#license)

## Glyph Sets

### Seti-UI + Custom
* [Seti-UI] / icomoon plus misc custom glyphs
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-1.png)

### [devicons][vorillaz-devicons]
* [devicons][vorillaz-devicons] from [vorillaz-devicons]
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-2.png)

### [font-awesome][font-awesome]
* [font-awesome][font-awesome] (experimental and work-in-progress)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-font-awesome-1.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-font-awesome-2.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-font-awesome-3.png)

### [octicons][octicons]
* [octicons][octicons] (experimental and work-in-progress)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-octicons.png)

### [Pomicons][gabrielelana-pomicons]
* [Pomicons][gabrielelana-pomicons] from [gabrielelana-pomicons]
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/fontforge-glyph-set-pomicons.png)

### [powerline-extra-symbols][ryanoasis-powerline-extra-symbols]
* Work In Progress... :)
![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

## Usage

### Option A

Install any of the already [provided patched fonts](#patched-fonts)

### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Font Name                                                                              | Reserved Font Name | EM Size | Status |
|----------------------------------------------------------------------------------------|--------------------|---------|--------|
| [3270 Plus Nerd File Types](patched-fonts/3270)                                        |                    |   1000  | [TEST] |
| [Anonymice Powerline Plus Nerd File Types](patched-fonts/AnonymousPro)                 | Anonymous Pro      |   2048  | [TEST] |
| [Aurulent Sans Mono Plus Nerd File Types](patched-fonts/AurulentSansMono)              |                    |   1000  | [TEST] |
| [Bitstream Vera Sans Mono Plus Nerd File Types](patched-fonts/BitstreamVeraSansMono)   |                    |   2048  | [TEST] |
| [DejaVu Sans Mono Plus Nerd File Types](patched-fonts/DejaVuSansMono)                  |                    |   2048  | [TEST] |
| [Droid Sans Mono for Powerline Plus Nerd File Types](patched-fonts/DroidSansMono)      |                    |   2048  | [TEST] |
| [Fira Mono for Powerline Plus Nerd File Types](patched-fonts/FiraMono)                 |                    |   1000  | [TEST] |
| [Heavy Data Mono for Powerline Plus Nerd File Types](patched-fonts/HeavyData)          |                    |   2048  | [TEST] |
| [Hermut Plus Nerd File Types](patched-fonts/Hermit)                                    |                    |   1000  | [TEST] |
| [Inconsolata for Powerline Plus Nerd File Types](patched-fonts/Inconsolata)            |                    |   1000  | [TEST] |
| [Knack Plus Nerd File Types](patched-fonts/Hack)                                       | Hack               |   2048  | [TEST] |
| [Lekton for Powerline Plus Nerd File Types](patched-fonts/Lekton)                      |                    |   1000  | [TEST] |
| [Literation Mono for Powerline Plus Nerd File Types](patched-fonts/LiberationMono)     | Liberation         |   2048  | [TEST] |
| [Meslo for Powerline Plus Nerd File Types](patched-fonts/Meslo)                        |                    |   2048  | [TEST] |
| [Monofur for Powerline Plus Nerd File Types](patched-fonts/Monofur)                    |                    |   2400  | [TEST] |
| [M+ (MPlus) for Powerline Plus Nerd File Types](patched-fonts/MPlus)                   |                    |   1000  | [TEST] |
| [ProFont (Windows tweaked) for Powerline Plus Nerd File Types](patched-fonts/Profont)  |                    |   1200  | [TEST] |
| [ProFont (x11) for Powerline Plus Nerd File Types](patched-fonts/ProFont)              |                    |   1000  | [FAIL] |
| [ProggyCleanTT Plus Nerd File Types](patched-fonts/ProggyClean)                        |                    |   2048  |        |
| [Sauce Code Powerline Plus Nerd File Types](patched-fonts/SourceCodePro)               | Source             |   1000  | [TEST] |
| [Terminess for Powerline Plus Nerd File Types](patched-fonts/Terminus)                 | Terminus Font      |   1000  | [FAIL](https://github.com/ryanoasis/nerd-fonts/issues/16) |
| [Ubuntu Mono derivative Powerline Plus Nerd File Types](patched-fonts/UbuntuMono)      |                    |   1000  | [TEST] |
| [Ubuntu Mono Plus Nerd File Types](patched-fonts/UbuntuMono)                           |                    |   1000  | [TEST] |

* Variations include:
 * extra glyphs that are *double* or *single* (monospaced) width
 * [Font Awesome][font-awesome]
 * [GitHub Octicons][octicons]
 * [Pomicons][gabrielelana-pomicons]
 * Full Windows Compatibility (WIP)

## Combinations

* Over 1,700 unique variations/combinations (Power Set) of patched fonts:
 * 54 font variations (just counting otf and ttf)
 * 32 (2⁵) combinations (1 no flags, 5 flagged options)
 * Calculated combinations (32 * 54) = 1,728
 * Combinations for each font are any combination of (plus no flags option):
    * Monospaced extra glyphs
    * Windows Compatible
    * [Font Awesome][font-awesome]
    * [GitHub Octicons][octicons]
    * [Pomicons][gabrielelana-pomicons]

## Glyphs Combined

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.5.x/sankey-glyphs-combined-diagram.png)

Diagram created using [@SankeyMATIC](http://sankeymatic.com/)

## Font Install Script
* Linux & Mac OS X

	> ./install.sh

### Examples

	./install.sh
	All fonts installed to /home/ryan/.fonts

<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</h2>

Patching the font of your own choosing for use with the [vim-devicons](https://github.com/ryanoasis/vim-devicons) vim plugin:
* requires: python2, python-fontforge package (version 20141231 or later, see
  the [install instructions](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* usage:

```
./font-patcher PATH_TO_FONT
```

```
usage: font-patcher [-h] [-s] [-q] [-w] [--fontawesome] [--octicons]
                    [--pomicons]
                    font

Patches a given font with programming and web development related glyphs
(mainly for https://github.com/ryanoasis/vim-devicons)

positional arguments:
  font                  The path to the font to be patched (e.g.
                        Inconsolata.otf)

optional arguments:
  -h, --help            show this help message and exit
  -s, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not
                        double-width (default is double-width)
  -q, --quiet, --shutup
                        Do not generate verbose output
  -w, --windows, --limit-font-name-length
                        Limit the internal font name to a maximum of 31
                        characters (for safe Windows compatiblity)
  --fontawesome         Add Font Awesome Glyphs (http://fortawesome.github.io
                        /Font-Awesome/)
  --octicons            Add Octicons Glyphs (https://octicons.github.com/)
  --pomicons            Add Pomicon Glyphs
                        (https://github.com/gabrielelana/pomicons)
```

### Examples

	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf -s -q
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf --use-single-width-glyphs --quiet
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf -w
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf --windows --quiet
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf --windows --pomicons --quiet
	./font-patcher Inconsolata.otf --fontawesome
	./font-patcher Inconsolata.otf --fontawesome --octicons --pomicons
	./font-patcher Inconsolata.otf


<a name="gotta-patch-em-all"></a>
## Gotta Patch 'em All Font Patcher!

* re-patches **all** fonts in the unpatched directory
* mostly for Contributor/Dev use only
* can optionally limit to specific font pattern (second example)
```
./gotta-patch-em-all-font-patcher\!.sh
./gotta-patch-em-all-font-patcher\!.sh Hermit
```
## Other Good Fonts to Patch

* a list of additional good fonts to patch that I cannot provide or share due to the license:
 * [Input Mono](http://input.fontbureau.com/)
   * Coming soon with external hosting :)
 * [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm)

## Rationale

* Originally created for use with [vim-devicons] vim plugin to add glyphs (icons) as labels for files based on the filetype extension or entire path

## Other

* project/repo previously known as 'nerd-filetype-glyphs-fonts-patcher', 'font-nerd-icons'

## License

see [LICENSE](LICENSE)

[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/github/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
