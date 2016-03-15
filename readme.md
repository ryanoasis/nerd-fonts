<h1 align="center">
	<img src="images/nerd-fonts-logo.png" alt="nerd fonts">
</h1>

[![GitHub version][img-version-badge]][badge-version] [![Join the chat at https://gitter.im/ryanoasis/nerd-fonts][img-gitter-badge]][badge-gitter] [![Flattr this git repo][img-flattr-badge]][badge-flattr]

**Nerd Fonts** is a project that attempts to patch as many developer targeted and/or used fonts as possible. The patch is to specifically add a high number of additional glyphs from popular 'iconic fonts' such as [Font Awesome][font-awesome], [Devicons][vorillaz-devicons], [Octicons][octicons], and others. 

For more high level info see the [wiki][wiki]. Looking for the Vim plugin see [vim-devicons ➶][vim-devicons].

***
| **[Fonts](#patched-fonts)** | **[Patcher](#font-patcher)** | **[Vim Plugin ➶][vim-devicons]** |
|-----------------------------|------------------------------|----------------------------------|
| [![fonts-logo-small](images/nerd-fonts-character-logo-md.png)](#patched-fonts) | [![patcher-logo-small](images/nerd-fonts-patcher-logo-md.png)](#font-patcher) | [![vim-devicons-logo-small][img-visual-toc-vim-devicons]][vim-devicons] |
***

Included in this repo:
* A [FontForge python script](#font-patcher) to patch any font
* Over **20** already [patched font families](#patched-fonts)
* Over **2,000** unique combinations/variations of patched fonts [(more details)](#combinations)
* Over **1,000** glyphs/icons combined [(more details)](#combinations)

<!---
Start notice section
-->
| Unstable file paths warning: [To avoid font file references breaking on releases please read](#unstable-file-paths) |
-------------------------------
<!---
End notice section
-->

## Table of Contents

- [Glyph sets](#glyph-sets)
- [Usage](#usage)
- [Patched Fonts List](#patched-fonts)
- [Combinations](#combinations)
- [Font Installation](#font-installation)
- [Font Install Script (Linux & Mac OS X)](#font-install-script)
- [Font Patcher](#font-patcher)
- [Gotta Patch 'em All Font Patcher!](#gotta-patch-em-all)
- [Unstable file paths on master](#unstable-file-paths)
- [Other Good Fonts to Patch](#other-good-fonts-to-patch)
- [Motivation](#motivation-original-rationale)
- [Other](#other)
- [License](#license)

## Glyph Sets

### Seti-UI + Custom
> Based off of [Seti-UI] Icomoon with additional custom glyphs added from various sources.

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-1.png)

### [Devicons][vorillaz-devicons]
> An iconic font made for developers, code jedis, ninjas, HTTPsters, evangelists and nerds(sic). / ([repo][vorillaz-devicons]) / ([website](http://vorillaz.github.io/devicons))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-2.png)

### [Font Awesome][font-awesome]
> The iconic font and CSS toolkit. / ([repo][font-awesome]) / ([website](https://fortawesome.github.io/Font-Awesome))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-font-awesome-1.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-font-awesome-2.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-font-awesome-3.png)

### [Octicons][octicons]
> GitHub's icons. / ([repo][octicons]) / ([website](https://octicons.github.com))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-octicons.png)

### [Pomicons][gabrielelana-pomicons]
> 8 symbols for the ["Pomodoro Technique"®](http://pomodorotechnique.com). / ([repo][gabrielelana-pomicons])

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/fontforge-glyph-set-pomicons.png)

### [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
> Provides additional Powerline separator glyphs and a column number glyph (CN). / ([repo][ryanoasis-powerline-extra-symbols])

![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

## Usage

#### Option A

Install any of the already [provided patched fonts](#patched-fonts)

#### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Font Name                                                                   | Reserved Font Name | EM Size | Status |
|-----------------------------------------------------------------------------|--------------------|---------|--------|
| [3270 Nerd Font](patched-fonts/3270)                                        |                    |   1000  | [TEST] |
| [Anonymice Powerline Nerd Font](patched-fonts/AnonymousPro)                 | Anonymous Pro      |   2048  | [TEST] |
| [Aurulent Sans Mono Nerd Font](patched-fonts/AurulentSansMono)              |                    |   1000  | [TEST] |
| [Bitstream Vera Sans Mono Nerd Font](patched-fonts/BitstreamVeraSansMono)   |                    |   2048  | [TEST] |
| [DejaVu Sans Mono Nerd Font](patched-fonts/DejaVuSansMono)                  |                    |   2048  | [TEST] |
| [Droid Sans Mono for Powerline Nerd Font](patched-fonts/DroidSansMono)      |                    |   2048  | [TEST] |
| [Fira Mono for Powerline Nerd Font](patched-fonts/FiraMono)                 |                    |   1000  | [TEST] |
| [Heavy Data Mono for Powerline Nerd Font](patched-fonts/HeavyData)          |                    |   2048  | [TEST] |
| [Hermut Nerd Font](patched-fonts/Hermit)                                    |                    |   1000  | [TEST] |
| [Inconsolata for Powerline Nerd Font](patched-fonts/Inconsolata)            |                    |   1000  | [TEST] |
| [Knack Nerd Font](patched-fonts/Hack)                                       | Hack               |   2048  | [TEST] |
| [Lekton for Powerline Nerd Font](patched-fonts/Lekton)                      |                    |   1000  | [TEST] |
| [Literation Mono for Powerline Nerd Font](patched-fonts/LiberationMono)     | Liberation         |   2048  | [TEST] |
| [Meslo for Powerline Nerd Font](patched-fonts/Meslo)                        |                    |   2048  | [TEST] |
| [Monofur for Powerline Nerd Font](patched-fonts/Monofur)                    |                    |   2400  | [TEST] |
| [M+ (MPlus) for Powerline Nerd Font](patched-fonts/MPlus)                   |                    |   1000  | [TEST] |
| [ProFont (Windows tweaked) for Powerline Nerd Font](patched-fonts/Profont)  |                    |   1200  | [TEST] |
| [ProFont (x11) for Powerline Nerd Font](patched-fonts/ProFont)              |                    |   1000  | [FAILING] |
| [ProggyCleanTT Nerd Font](patched-fonts/ProggyClean)                        |                    |   2048  | [FAILING] |
| [Sauce Code Powerline Nerd Font](patched-fonts/SourceCodePro)               | Source             |   1000  | [TEST] |
| [Terminess for Powerline Nerd Font](patched-fonts/Terminus)                 | Terminus Font      |   1000  | [FAILING](https://github.com/ryanoasis/nerd-fonts/issues/16) |
| [Ubuntu Mono derivative Powerline Nerd Font](patched-fonts/UbuntuMono)      |                    |   1000  | [TEST] |
| [Ubuntu Mono Nerd Font](patched-fonts/UbuntuMono)                           |                    |   1000  | [TEST] |

* Variations include:
 * extra glyphs that are *double* or *single* (monospaced) width
 * [Font Awesome][font-awesome]
 * [GitHub Octicons][octicons]
 * [Pomicons][gabrielelana-pomicons]
 * Full Windows Compatibility (WIP)

## Combinations

* Over 2,000 unique variations/combinations (Power Set) of patched fonts:
 * 57 font variations (just counting otf and ttf)
 * 36 combinations (Powerline Extra included by default currently)
 * Calculated combinations (36 * 57) = 2,052
 * Combinations for each font are any combination of (plus no flags option):
    * Monospaced extra glyphs
    * Windows Compatible
    * [Font Awesome][font-awesome]
    * [GitHub Octicons][octicons]
    * [Pomicons][gabrielelana-pomicons]

## Glyphs Combined

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.6.x/sankey-glyphs-combined-diagram.png)

Diagram created using [@SankeyMATIC](http://sankeymatic.com/)

## Font Installation

Put any font you would like to use into the `~/.local/share/fonts` (Linux) or `~/Library/Fonts/`(OS X) folder. For example:


Linux
```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
```

deprecated alternate paths: `~/.fonts`

OS X
```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
```

## Font Install Script

Installs all of the patched Fonts (_Warning: This is a lot of Fonts adding up to a large size_)

* Linux & Mac OS X

```sh
./install.sh
```

#### Examples

	./install.sh
	All fonts installed to /home/ryan/.fonts

<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</h2>

Patching the font of your own choosing for use with the [vim-devicons](https://github.com/ryanoasis/vim-devicons) vim plugin:
* requires: python2, python-fontforge package (version 20141231 or later, see
  the [install instructions](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* can alternately be installed on OSX via: `brew install fontforge`
* Usage:

```
./font-patcher PATH_TO_FONT
```

* Alternate usage: Alternately the patcher can be run through the FontForge binary using the script flag:

```
./fontforge -script font-patcher PATH_TO_FONT
```


```
usage: font-patcher [-h] [-s] [-q] [-w] [--fontawesome] [--octicons]
                    [--pomicons] [--powerline] [--powerlineextra] [--careful]
                    [-out [OUTPUTDIR]]
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
  --powerline           Add Powerline Glyphs
  --powerlineextra      Add Powerline Glyphs (https://github.com/ryanoasis
                        /powerline-extra-symbols)
  --careful             Do not overwrite existing glyphs if detected
  -out [OUTPUTDIR], --outputdir [OUTPUTDIR]
                        The directory to output the patched font file to
```

#### Examples

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

## Unstable file paths

| Unstable file paths warning |
-------------------------------
| Please make sure to reference via the **release** branch and _not_ the ~~**master**~~ branch because paths are subject to being improved/changed per release |
| For example (paths shorted for demonstation purposes): |
| Instead of: ~~https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/< font_path >.otf~~ |
| Please use: https://github.com/ryanoasis/nerd-fonts/blob/0.6.0/patched-fonts/DroidSansMono/< font_path >.otf |


## Other Good Fonts to Patch

* a list of additional good fonts to patch that I cannot provide or share due to the license:
 * [Input Mono](http://input.fontbureau.com/)
   * Coming soon with external hosting :)
 * [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm)

## Motivation (Original Rationale)

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
[wiki]:https://github.com/ryanoasis/nerd-fonts/wiki

<!---
Link References
-->

[badge-version]:http://badge.fury.io/gh/ryanoasis%2Fnerd-fonts
[badge-gitter]:https://gitter.im/ryanoasis/nerd-fonts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[badge-flattr]:https://flattr.com/submit/auto?user_id=ryanoasis&url=https://github.com/ryanoasis/nerd-fonts&title=nerd-fonts&language=python&tags=github&category=software

[img-version-badge]:https://badge.fury.io/gh/ryanoasis%2Fnerd-fonts.svg
[img-gitter-badge]:https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat
[img-flattr-badge]:https://img.shields.io/badge/donate-flattr%20this!-8DB65B.svg?style=flat
[img-visual-toc-vim-devicons]:https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v1.0.0/branding-logo-sm.png
