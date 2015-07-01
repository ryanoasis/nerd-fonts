font nerd icons
=========================================
[![GitHub version](https://badge.fury.io/gh/ryanoasis%2Ffont-nerd-icons.svg)](http://badge.fury.io/gh/ryanoasis%2Ffont-nerd-icons)

* A [fontforge python script](#font-patcher) to patch any font
* Over 20 already [patched font families](#patched-fonts)
* Over 350 unique permutations/variations of patched fonts:
 * 44 font variations (just counting otf and ttf)
 * 8 permutations (1 no flags, 3 flagged options)
 * Calculated Permutations (8 * 44) = 352
 * Permutations for each font are any combination of (plus no flags option):
    * Monospaced extra glyphs
    * Windows Compatible
    * Pomicons

## Glyph set 1 ([Seti-UI] / icomoon plus misc custom glyphs)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.3.0/fontforge-glyph-set-1.png)

## Glyph set 2 (devicons from [vorillaz-devicons])
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.3.0/fontforge-glyph-set-2.png)

## Glyph set 3 (pomicons from [gabrielelana-pomicons])
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.3.0/fontforge-glyph-set-3.png)

## Usage

### Option A

Install any of the already [provided patched fonts](#patched-fonts)

### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Currently Included Patched Fonts (extra glyphs are *double* width)                        | em size  | status                   |
|-------------------------------------------------------------------------------------------|----------|--------------------------|
| [3270 Plus Nerd File Types](patched-fonts/3270)                                           |   1000   | [OKAY]                   |
| [Anonymice Powerline Plus Nerd File Types](patched-fonts/AnonymousPro)                    |   2048   | [OKAY]                   |
| [Aurulent Sans Mono Plus Nerd File Types](patched-fonts/AurulentSansMono)                 |   1000   | [OKAY]                   |
| [Bitstream Vera Sans Mono Plus Nerd File Types](patched-fonts/BitstreamVeraSansMono)      |   2048   | [OKAY]                   |
| [DejaVu Sans Mono Plus Nerd File Types](patched-fonts/DejaVuSansMono)                     |   2048   | [OKAY]                   |
| [Droid Sans Mono for Powerline Plus Nerd File Types](patched-fonts/DroidSansMono)         |   2048   | [OKAY]                   |
| [Fira Mono for Powerline Plus Nerd File Types](patched-fonts/FiraMono)                    |   1000   | [OKAY]                   |
| [Heavy Data Mono for Powerline Plus Nerd File Types](patched-fonts/HeavyData)             |   2048   | [OKAY]                   |
| [Inconsolata for Powerline Plus Nerd File Types](patched-fonts/Inconsolata)               |   1000   | [OKAY]                   |
| [Lekton for Powerline Plus Nerd File Types](patched-fonts/Lekton)                         |   1000   | [OKAY]                   |
| [Literation Mono for Powerline Plus Nerd File Types](patched-fonts/LiberationMono)        |   2048   | [OKAY]                   |
| [Meslo for Powerline Plus Nerd File Types](patched-fonts/Meslo)                           |   2048   | [OKAY]                   |
| [Monofur for Powerline Plus Nerd File Types](patched-fonts/Monofur)                       |   2400   | [OKAY]                   |
| [M+ (MPlus) for Powerline Plus Nerd File Types](patched-fonts/MPlus)                      |   1000   | [OKAY]                   |
| [ProFont (Windows tweaked) for Powerline Plus Nerd File Types](patched-fonts/Profont)     |   1200   | [OKAY]                   |
| [ProFont (x11) for Powerline Plus Nerd File Types](patched-fonts/ProFont)                 |   1000   | [FAIL]                   |
| [ProggyCleanTT Plus Nerd File Types](patched-fonts/ProggyClean)                           |   2048   | [OKAY]                   |
| [Sauce Code Powerline Plus Nerd File Types](patched-fonts/SourceCodePro)                  |   1000   | [OKAY]                   |
| [Terminess for Powerline Plus Nerd File Types](patched-fonts/Terminus)                    |   1000   | [OKAY]                   |
| [Ubuntu Mono derivative Powerline Plus Nerd File Types](patched-fonts/UbuntuMono)         |   1000   | [OKAY]                   |
| [Ubuntu Mono Plus Nerd File Types](patched-fonts/UbuntuMono)                              |   1000   | [OKAY]                   |

| Currently Included Absolute Mono Patched Fonts (extra glyphs are *single* width)          | em size  | status                   |
|-------------------------------------------------------------------------------------------|----------|--------------------------|
| [3270 Plus Nerd File Types Mono](patched-fonts/3270)                                      |   2048   | [OKAY]                   |
| [Anonymice Powerline Plus Nerd File Types Mono](patched-fonts/AnonymousPro)               |   2048   | [OKAY]                   |
| [Aurulent Sans Mono Plus Nerd File Types Mono](patched-fonts/AurulentSansMono)            |   1000   | [OKAY]                   |
| [Bitstream Vera Sans Mono Plus Nerd File Types Mono](patched-fonts/BitstreamVeraSansMono) |   2048   | [OKAY]                   |
| [DejaVu Sans Mono Plus Nerd File Types Mono](patched-fonts/DejaVuSansMono)                |   2048   | [OKAY]                   |
| [Droid Sans Mono for Powerline Plus Nerd File Types Mono](patched-fonts/DroidSansMono)    |   2048   | [OKAY]                   |
| [Fira Mono for Powerline Plus Nerd File Types Mono](patched-fonts/FiraMono)               |   1000   | [OKAY]                   |
| [Heavy Data Mono for Powerline Plus Nerd File Types Mono](patched-fonts/HeavyData)        |   2048   | [OKAY]                   |
| [Inconsolata for Powerline Plus Nerd File Types Mono](patched-fonts/Inconsolata)          |   1000   | [OKAY]                   |
| [Lekton for Powerline Plus Nerd File Types Mono](patched-fonts/Lekton)                    |   1000   | [OKAY]                   |
| [Literation Mono for Powerline Plus Nerd File Types Mono](patched-fonts/LiberationMono)   |   2048   | [OKAY]                   |
| [Meslo for Powerline Plus Nerd File Types Mono](patched-fonts/Meslo)                      |   2048   | [OKAY]                   |
| [Monofur for Powerline Plus Nerd File Types Mono](patched-fonts/Monofur)                  |   2400   | [OKAY]                   |
| [M+ (MPlus) for Powerline Plus Nerd File Types Mono](patched-fonts/MPlus)                 |   1000   | [OKAY]                   |
| [ProFont (Windows tweaked) for Powerline Plus Nerd File Types Mono](patched-fonts/Profont)|   1200   | [OKAY]                   |
| [ProFont (x11) for Powerline Plus Nerd File Types Mono](patched-fonts/Profont)            |   1000   | [FAIL]                   |
| [ProggyCleanTT Plus Nerd File Types Mono](patched-fonts/ProggyClean)                      |   2048   | [OKAY]                   |
| [Sauce Code Powerline Plus Nerd File Types Mono](patched-fonts/SourceCodePro)             |   1000   | [OKAY]                   |
| [Terminess for Powerline Plus Nerd File Types Mono](patched-fonts/Terminus)               |   1000   | [OKAY]                   |
| [Ubuntu Mono derivative Powerline Plus Nerd File Types Mono](patched-fonts/UbuntuMono)    |   1000   | [OKAY]                   |
| [Ubuntu Mono Plus Nerd File Types Mono](patched-fonts/UbuntuMono)                         |   1000   | [OKAY]                   |

## Other Good Fonts to Patch

* a list of additional good fonts to patch that I cannot provide or share due to the license:
 * [Input Mono](http://input.fontbureau.com/)
 * [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm)

## Font Install Script (Linux & Mac OS X)

	> ./install.sh

### Examples

	./install.sh
	All fonts installed to /home/ryan/.fonts

## Font Patcher

Patching the font of your own choosing for use with the [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) vim plugin:
* requires: python2, python-fontforge package
* usage:


```
./font-patcher PATH_TO_FONT
```

```
usage: font-patcher [-h] [-s] [-q] [-w] font

Patches a given font with programming and web development related glyphs
(mainly for vim-webdevicons)

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
	./font-patcher Inconsolata.otf


## Gotta Patch 'em All Font Patcher!

* re-patches **all** fonts in the unpatched directory
* mostly for Contributor/Dev use only

```
./gotta-patch-em-all-font-patcher\!.sh
```

## Rationale

* Originally created for use with [vim-webdevicons] vim plugin to add glyphs (icons) as labels for files based on the filetype extension or entire path

## Other

* previously known as 'nerd-filetype-glyphs-fonts-patcher'

## License

see [LICENSE](LICENSE)

[vim-webdevicons]:https://github.com/ryanoasis/vim-webdevicons
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
