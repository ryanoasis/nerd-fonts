<h1 align="center">
	<img src="images/nerd-fonts-logo.png" alt="nerd fonts" />
</h1>

[![GitHub version][img-version-badge]][badge-version] [![Join the chat at https://gitter.im/ryanoasis/nerd-fonts][img-gitter-badge]][badge-gitter] [![Flattr this git repo][img-flattr-badge]][badge-flattr]

**Nerd Fonts** is a project that attempts to patch as many developer targeted fonts as possible with a high number of additional glyphs (icons). The main goal is to specifically add a high number of additional glyphs from popular 'iconic fonts' such as [Font Awesome][font-awesome], [Devicons][vorillaz-devicons], [Octicons][octicons], and [others](#glyph-sets).

The following Sankey flow diagram shows the current glyph sets included:

<h1 align="center">
	<img src="https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/sankey-glyphs-combined-diagram.png" alt="@SankeyMATIC Diagram" />
</h1>

<sub>_Diagram created using [@SankeyMATIC](http://sankeymatic.com/)_</sub>

For more high level information see the [wiki][wiki]. If you are looking for the Vim plugin see [vim-devicons ➶][vim-devicons].


## Quick Links

| **[Fonts](#patched-fonts)** | **[Patcher](#font-patcher)** | **[Vim Plugin ➶][vim-devicons]** |
|-----------------------------|------------------------------|----------------------------------|
| [![fonts-logo-small](images/nerd-fonts-character-logo-md.png)](#patched-fonts) | [![patcher-logo-small](images/nerd-fonts-patcher-logo-md.png)](#font-patcher) | [![vim-devicons-logo-small][img-visual-toc-vim-devicons]][vim-devicons] |

<!--
Start notice section
-->
| Warning: _master_ branch file paths are _not_ considered stable: [Please read if you are referencing the repo directly](#unstable-file-paths) |
-------------------------------
<!--
End notice section
-->

## Features
* A [FontForge python script](#font-patcher) to patch any font
* **26** already [patched font families](#patched-fonts)
* Over **5,700** unique combinations/variations of patched fonts [(more details)](#combinations)
* Over **1,000** glyphs/icons combined [(more details)](#combinations)
  * Current glyph sets include: [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome],  [Devicons][vorillaz-devicons], [Octicons][octicons], [Font Linux][font-linux], [Pomicons][gabrielelana-pomicons]
* A Developer/Contributor provided [bash script](#gotta-patch-em-all) to re-patch all the fonts


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
- [Project History](#project-history)
  - [Motivation](#motivation-original-rationale)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)

## Glyph Sets

### Seti-UI + Custom
> Based off of [Seti-UI] Icomoon with additional custom glyphs added from various sources.

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-1.png)

### [Devicons][vorillaz-devicons]
> An iconic font made for developers, code jedis, ninjas, HTTPsters, evangelists and nerds(sic). / ([repo][vorillaz-devicons]) / ([website](http://vorillaz.github.io/devicons))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-2.png)

### [Font Awesome][font-awesome]
> The iconic font and CSS toolkit. / ([repo][font-awesome]) / ([website](https://fortawesome.github.io/Font-Awesome))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-font-awesome-1.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-font-awesome-2.png)
![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-font-awesome-3.png)

### [Octicons][octicons]
> GitHub's icons. / ([repo][octicons]) / ([website](https://octicons.github.com))

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-octicons.png)

### [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
> Provides additional Powerline separator glyphs and a column number glyph (CN). / ([repo][ryanoasis-powerline-extra-symbols])

![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

### [Font Linux][font-linux]
> Font-linux is an icon font containing logos of popular linux distributions for inclusion in websites. / ([repo][font-linux])

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-font-linux.png)

### [Pomicons][gabrielelana-pomicons]
> 8 symbols for the ["Pomodoro Technique"®](http://pomodorotechnique.com). / ([repo][gabrielelana-pomicons])

![image](https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/wiki/screenshots/v0.8.x/fontforge-glyph-set-pomicons.png)

## Usage

#### Option A

Install any of the already [provided patched fonts](#patched-fonts)

#### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Font Name                                         | Font Name and Repository    | *RFN | EM Size | Status            |
|---------------------------------------------------|-----------------------------|------|---------|-------------------|
| [3270 Nerd Font][p-3270]                          | [3270][f-3270]              | NO   | 1000    | [TEST]            |
| [Anonymice Nerd Font][p-anonymous-pro]            | [Anonymous Pro][f-a-pro]    | NO   | 2048    | [TEST]            |
| [Aurulent Sans Mono Nerd Font][p-aurulent]        |                             | NO   | 1000    | [TEST]            |
| [Bitstream Vera Sans Mono Nerd Font][p-bitstream] |                             | NO   | 2048    | [TEST]            |
| [DejaVu Sans Mono Nerd Font][p-dejavu]            |                             | NO   | 2048    | [TEST]            |
| [Droid Sans Mono Nerd Font][p-droid]              |                             | NO   | 2048    | [TEST]            |
| [Fantasque Sans Nerd Font][p-fantasque]           | [Fantasque Sans][f-fant]    | NO   | 2048    | [TEST]            |
| [Fura Code Nerd Font][p-fira-code]                | [Fira][f-fira-code]         | YES  | 1000    | [TEST]            |
| [Fura Mono Nerd Font][p-fira-mono]                | [Fira][f-fira-mono]         | YES  | 1000    | [TEST]            |
| [Heavy Data Mono Nerd Font][p-heavy-data]         |                             | NO   | 2048    | [TEST]            |
| [Hermut Nerd Font][p-hermit]                      |                             | NO   | 1000    | [TEST]            |
| [Inconsolata Nerd Font][p-inconsolata]            |                             | NO   | 1000    | [TEST]            |
| [Iosevka][p-iosevka]                              | [Iosevka][f-iosevka]        | YES  | 1000    | [#83][s-iosevka]  |
| [Knack Nerd Font][p-hack]                         | [Hack][f-hack]              | YES  | 2048    | [#70][s-hack]     |
| [Lekton Nerd Font][p-lekton]                      |                             | NO   | 1000    | [TEST]            |
| [Literation Mono Nerd Font][p-liberation]         | [Liberation][f-liberation]  | YES  | 2048    | [TEST]            |
| [Meslo Nerd Font][p-meslo]                        |                             | NO   | 2048    | [TEST]            |
| [Monofur Nerd Font][p-monofur]                    |                             | NO   | 2400    | [TEST]            |
| [Monoid Nerd Font][p-monoid]                      |                             | NO   | 1536    | [TEST]            |
| [M+ (MPlus) Nerd Font][p-mplus]                   |                             | NO   | 1000    | [TEST]            |
| [ProFont (Windows tweaked) Nerd Font][p-profont]  |                             | NO   | 1200    | [TEST]            |
| [ProFont (x11) Nerd Font][p-profont]              |                             | NO   | 1000    | [FAILING]         |
| [ProggyClean Nerd Font][p-proggy-clean]           |                             | NO   | 2048    | [FAILING]         |
| [Roboto Mono][p-roboto]                           |                             | NO   | 2048    | [FAILING]         |
| [Sauce Code Nerd Font][p-source-code-pro]         | [Source][f-source]          | YES  | 1000    | [TEST]            |
| [Terminess Nerd Font][p-terminus]                 | [Terminus Font][f-terminus] | YES  | 1000    | [#16][s-terminus] |
| [Ubuntu Mono derivative Nerd Font][p-ubuntu]      |                             | NO   | 1000    | [TEST]            |
| [Ubuntu Mono Nerd Font][p-ubuntu]                 |                             | NO   | 1000    | [TEST]            |

<sub>_*RFN = Reserved Font Name_</sub>

* Variations include:
 * extra glyphs that are *double* or *single* (monospaced) width
 * [Font Awesome][font-awesome]
 * [GitHub Octicons][octicons]
 * [Font Linux][font-linux]
 * [Pomicons][gabrielelana-pomicons]
 * Full Windows Compatibility (WIP)

## Combinations

* Over 5,700 unique variations/combinations (Power Set) of patched fonts:
 * 102 unpatched font variations (just counting otf and ttf)
 * 56 combinations (Powerline Extra included by default currently)
 * Calculated combinations (56 * 102) = 5,712
 * Combinations for each font are any combination of (plus no flags option):
    * Monospaced extra glyphs
    * Windows Compatible
    * [Font Awesome][font-awesome]
    * [GitHub Octicons][octicons]
    * [Font Linux][font-linux]
    * [Pomicons][gabrielelana-pomicons]


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

* Linux & Mac OS X

### To install all fonts:

* Installs all of the patched Fonts (_Warning: This is a lot of Fonts adding up to a large size_)

```sh
./install.sh
```

### To install a single font:

```sh
./install.sh <FontName>
./install.sh Hack
./install.sh HeavyData
```


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
usage: font-patcher [-h] [-v] [-s] [-q] [-w] [--fontawesome] [--fontlinux]
                    [--octicons] [--pomicons] [--powerline] [--powerlineextra]
                    [--careful] [-out [OUTPUTDIR]]
                    font

Patches a given font with programming and web development related glyphs
(mainly for https://github.com/ryanoasis/vim-devicons)

positional arguments:
  font                  The path to the font to be patched (e.g.
                        Inconsolata.otf)

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -s, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not
                        double-width (default is double-width)
  -q, --quiet, --shutup
                        Do not generate verbose output
  -w, --windows, --limit-font-name-length
                        Limit the internal font name to a maximum of 31
                        characters (for safe Windows compatiblity)
  --fontawesome         Add Font Awesome Glyphs (http://fortawesome.github.io
                        /Font-Awesome)
  --fontlinux           Add Font Linux Glyphs (https://github.com/Lukas-W
                        /font-linux)
  --octicons            Add Octicons Glyphs (https://octicons.github.com)
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
| Please use: https://github.com/ryanoasis/nerd-fonts/blob/0.8.0/patched-fonts/DroidSansMono/< font_path >.otf |

## Other Good Fonts to Patch

* a list of additional good fonts to patch that I cannot provide or share due to the license:
 * [Input Mono](http://input.fontbureau.com/)
   * Coming soon with external hosting :)
 * [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm)

## Project History

### Motivation (Original Rationale)

* Originally created for use with [vim-devicons] vim plugin to add glyphs (icons) as labels for files based on the filetype extension or entire path. This project began as a part of the [vim-devicons] repo but soon it became apparent it did not belong tied to the vim plugin. I thought it might benefit others better as a separate project and allow a wider range of uses. This project started before I knew about Fontconfig provided solution, although a patched font still has some benefits over the Fontconfig.

* project and repository previously known as 'nerd-filetype-glyphs-fonts-patcher' and 'font-nerd-icons'

## Contributing

See [contributing.md](contributing.md)

## Changelog

See [changelog.md](changelog.md)

## License

[MIT](LICENSE) © Ryan L McIntyre

<!--
Repo References
-->

[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/github/octicons
[font-linux]:https://github.com/Lukas-W/font-linux
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[wiki]:https://github.com/ryanoasis/nerd-fonts/wiki

<!--
Link References
-->

[badge-version]:http://badge.fury.io/gh/ryanoasis%2Fnerd-fonts
[badge-gitter]:https://gitter.im/ryanoasis/nerd-fonts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[badge-flattr]:https://flattr.com/submit/auto?user_id=ryanoasis&url=https://github.com/ryanoasis/nerd-fonts&title=nerd-fonts&language=python&tags=github&category=software

[img-version-badge]:https://badge.fury.io/gh/ryanoasis%2Fnerd-fonts.svg
[img-gitter-badge]:https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat
[img-flattr-badge]:https://img.shields.io/badge/donate-flattr%20this!-8DB65B.svg?style=flat
[img-visual-toc-vim-devicons]:https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v1.0.0/branding-logo-sm.png

<!--
Font repos
-->

[f-hack]:https://github.com/chrissimpkins/Hack
[f-a-pro]:http://www.marksimonson.com/fonts/view/anonymous-pro
[f-3270]:https://github.com/rbanffy/3270font
[f-source]:https://github.com/adobe-fonts/source-code-pro
[f-liberation]:https://fedorahosted.org/liberation-fonts
[f-terminus]:http://terminus-font.sourceforge.net
[f-fira-mono]:https://github.com/mozilla/Fira
[f-fira-code]:https://github.com/tonsky/FiraCode
[f-monoid]:https://github.com/larsenwork/monoid
[f-iosevka]:https://github.com/be5invis/Iosevka
[f-fant]:https://github.com/belluzj/fantasque-sans

<!--
Patched Font internal links
-->

[p-3270]:patched-fonts/3270
[p-anonymous-pro]:patched-fonts/AnonymousPro
[p-aurulent]:patched-fonts/AurulentSansMono
[p-bitstream]:patched-fonts/BitstreamVeraSansMono
[p-dejavu]:patched-fonts/DejaVuSansMono
[p-droid]:patched-fonts/DroidSansMono
[p-fantasque]:patched-fonts/FantasqueSansMono
[p-fira-code]:patched-fonts/FiraCode
[p-fira-mono]:patched-fonts/FiraMono
[p-heavy-data]:patched-fonts/HeavyData
[p-hermit]:patched-fonts/Hermit
[p-inconsolata]:patched-fonts/Inconsolata
[p-iosevka]:patched-fonts/Iosevka
[p-hack]:patched-fonts/Hack
[p-lekton]:patched-fonts/Lekton
[p-liberation]:patched-fonts/LiberationMono
[p-meslo]:patched-fonts/Meslo
[p-monofur]:patched-fonts/Monofur
[p-monoid]:patched-fonts/Monoid
[p-mplus]:patched-fonts/MPlus
[p-profont]:patched-fonts/ProFont
[p-proggy-clean]:patched-fonts/ProggyClean
[p-roboto]:patched-fonts/RobotoMono
[p-source-code-pro]:patched-fonts/SourceCodePro
[p-terminus]:patched-fonts/Terminus
[p-ubuntu]:patched-fonts/UbuntuMono

<!--
Patched Font Statuses
-->

[s-hack]:https://github.com/ryanoasis/nerd-fonts/issues/70
[s-terminus]:https://github.com/ryanoasis/nerd-fonts/issues/16
[s-iosevka]:https://github.com/ryanoasis/nerd-fonts/issues/83
