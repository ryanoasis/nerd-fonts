<h1 align="center">
  <img src="images/nerd-fonts-logo.png" alt="Nerd Fonts Logo" />
</h1>

[![GitHub release][img-version-badge-with-logo]][repo]&nbsp;[![Gitter][img-gitter-badge]][gitter]&nbsp;[![CodeClimate][img-code-climate-badge]][code-climate]&nbsp;[![Code of Conduct][coc-badge]][coc]&nbsp;[![PRs Welcome][prs-badge]][prs]&nbsp;&nbsp;&nbsp;[![Windows Logo][w-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![macOS (OSX) Logo][m-top]](#patched-fonts)&nbsp;&nbsp;&nbsp;[![Linux Logo][l-top]](#patched-fonts)


**Nerd Fonts** is a project that patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular 'iconic fonts' such as [Font Awesome ➶][font-awesome], [Devicons ➶][vorillaz-devicons], [Octicons ➶][octicons], and [others](#glyph-sets).

The following Sankey flow diagram shows the current glyph sets included:

<p align="center">
  <img src="https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/custom-sankey-glyphs-combined-diagram.png" alt="@SankeyMATIC Diagram" />
</p>
<sub><i>Diagram created using <a href="http://sankeymatic.com/" title="SankeyMATIC (BETA): A Sankey diagram builder for everyone">@SankeyMATIC</a></i></sub>


## Quick Navigation

| **[Latest Release ➶][release]** | **[Fonts](#patched-fonts)** | **[Patcher](#font-patcher)** | **[VimDevIcons ➶][vim-devicons]** | **[Font Package <br/>Downloads ➶][release]** |
|:-------------------------------:|:---------------------------:|:----------------------------:|:---------------------------------:|:--------------------------------------------:|
| [![fonts-logo-small][ql-1]][release] | [![fonts-logo-small][ql-2]](#patched-fonts) | [![patcher-logo-small][ql-3]](#font-patcher) | [![vim-devicons-logo-small][ql-4]][vim-devicons] | [![fonts-logo-small][ql-5]][release] |


## Important Notices
* `master` branch file paths are **not** considered stable. [Verify your repository URI references](#unstable-file-paths)
* cloning this repository is **not** recommended unless you are going to be [contributing to development](#contributing)


## Table of Contents

[**Installation Options**](#font-installation)
  * [**1 - Install Script**](#option-1-install-script)
  * [**2 - Ad Hoc Curl Download**](#option-2-ad-hoc-curl-download)
  * [**3 - Release Archive Download**](#option-3-release-archive-download)
  * [**4 - Homebrew Fonts (macOS (OS X))**](#option-4-homebrew-fonts)
  * [**5 - Arch User Repository (AUR) (Arch Linux)**](#option-5-unofficial-arch-user-repository-aur)
  * [**6 - Manual**](#option-6-download-and-install-manually)
  * [**7 - Clone Repo**](#option-7-clone-the-repo)
  * [**8 - Patch Your Own Font**](#option-8-patch-your-own-font)

[**Features**](#features)
  * [**Glyph/Icon sets**](#glyph-sets)
  * [**Patched Fonts**](#patched-fonts)
  * [**Combinations**](#combinations)
  * [**Font Patcher**](#font-patcher)

[**Developer / Contributor**](#font-patcher)
  * [**Font Patcher**](#font-patcher)
  * [**Gotta Patch 'em All Font Patcher!**](#gotta-patch-em-all)
  * [**Other Good Fonts to Patch**](#other-good-fonts-to-patch)
  * [**Contributing**](#contributing)

[**Project History**](#project-history)
  * [**Motivation**](#motivation-original-rationale)

**Additional Info**
  * [**Unstable file paths on master**](#unstable-file-paths)
  * [**Changelog**](#changelog)
  * [**License**](#license)


## Features
* A [FontForge python script](#font-patcher) to patch any font
* **`37`** already [patched font families](#patched-fonts)
* Over **`71,000`** unique combinations/variations of patched fonts [(more details)](#combinations)
* Over **`1,300`** glyphs/icons combined [(more details)](#combinations)
  * Current glyph sets include: [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome],  [Devicons][vorillaz-devicons], [Octicons][octicons], [Font Linux][font-linux], [Pomicons][gabrielelana-pomicons]
* A Developer/Contributor provided [bash script](#gotta-patch-em-all) to re-patch all the fonts


## Glyph Sets

🔍 :mag: You can now search for glyphs easily on [NerdFonts.com][Cheat Sheet] via the [Cheat Sheet][]

### Seti-UI + Custom
> Based off of [Seti-UI] Icomoon with extra custom glyphs.

![image](images/fontforge-glyph-set-1.png)

### [Devicons][vorillaz-devicons]
> An iconic font made for developers, code jedis, ninjas, HTTPsters, evangelists and nerds(sic). / ([repo][vorillaz-devicons]) / ([website](http://vorillaz.github.io/devicons))

![image](images/fontforge-glyph-set-2.png)

### [Font Awesome][font-awesome]
> The iconic font and CSS toolkit. / ([repo][font-awesome]) / ([website](https://fortawesome.github.io/Font-Awesome))

![image](images/fontforge-glyph-set-font-awesome-1.png)
![image](images/fontforge-glyph-set-font-awesome-2.png)
![image](images/fontforge-glyph-set-font-awesome-3.png)
![image](images/fontforge-glyph-set-font-awesome-4.png)

### [Font Awesome Extension][font-awesome-extension]
> Simple Font Awesome Extension. / ([repo][font-awesome-extension]) / ([website](http://andrelgava.github.io/font-awesome-extension/))

![image](images/fontforge-glyph-set-font-awesome-extension-1.png)

### [Octicons][octicons]
> GitHub's icons. / ([repo][octicons]) / ([website](https://octicons.github.com))

#### Nerd Font Complete Codepoints:*

![image](images/fontforge-glyph-set-octicons.png)

<sub>* To avoid conflicts between icon sets, these were modified in the 'Complete' fonts. To view the original codepoints see the [Wiki](https://github.com/ryanoasis/nerd-fonts/wiki/Codepoint-Conflicts).</sub>

### [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
> Provides extra Powerline separator glyphs and a column number glyph (CN). / ([repo][ryanoasis-powerline-extra-symbols])

![image](https://raw.githubusercontent.com/ryanoasis/powerline-extra-symbols/master/fontforge.png)

### [IEC Power Symbols][website-iecpower]
> Adding new characters into Unicode / ([website][website-iecpower])

![image](images/fontforge-glyph-set-font-iec-power-1.png)
![image](images/fontforge-glyph-set-font-iec-power-2.png)

### [Font Linux][font-linux]
> Font-linux is an icon font containing logos of popular linux distributions for inclusion in websites. / ([repo][font-linux])

![image](images/fontforge-glyph-set-font-linux.png)

### [Pomicons][gabrielelana-pomicons]
> 8 symbols for the ["Pomodoro Technique"®](http://pomodorotechnique.com). / ([repo][gabrielelana-pomicons])

![image](images/fontforge-glyph-set-pomicons.png)

### Icon names in shell

Download provided `.sh` files from [bin/scripts/lib/](bin/scripts/lib/) directory somewhere, recommended locations are `~/.local/share/fonts/` or `~/bin/`.

- `i_all.sh` - helper to load all files you've downloaded at once
- `i_dev.sh` - Devicons (198 icons, 8 does not have an established name)
- `i_fa.sh` - Font Awesome (675 icons, 111 aliases)
- `i_fae.sh` - Font Awesome Extension (170 icons)
- `i_iec.sh` - IEC Power Symbols (5 icons)
- `i_linux.sh` - Font Linux (20 icons)
- `i_oct.sh` - Octicons (172 icons)
- `i_ple.sh` - Powerline Extra Symbols (37 icons, 2 aliases, 16 does not have an established name)
- `i_pom.sh` - Pomicons (11 icons)
- `i_seti.sh` - Seti-UI + Custom (50 icons, 2 aliases, 5 does not have an established name)

Then `source` the required file(s) and output `$i_*` variables to see icons:

```sh
source ~/.local/share/fonts/i_oct.sh
echo $i_oct_heart
# Output:
# ♥
```

**NOTE:** You have to use one of the Nerd Fonts to see correct icons for some icon sets (Devicons, Font Awesome Extension, Font Linux), but other sets should work with their standard fonts too.


## Patched Fonts

| Font Name                                         | Font Name and Repository    |\*RFN | EM Size | Status            |
|:--------------------------------------------------|:----------------------------|:-----|:--------|:------------------|
| [3270 Nerd Font][p-3270]                          | [3270][f-3270]              | NO   | 1000    | ![w2] ![m2] ![l2] |
| [Anonymice Nerd Font][p-anonymous-pro]            | [Anonymous Pro][f-a-pro]    | NO   | 2048    | ![w] ![m2] ![l]   |
| [Aurulent Sans Mono Nerd Font][p-aurulent]        |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Bitstream Vera Sans Mono Nerd Font][p-bitstream] |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [Code New Roman Nerd Font][p-code-nr]             |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [DejaVu Sans Mono Nerd Font][p-dejavu]            |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [Droid Sans Mono Nerd Font][p-droid]              |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [Fantasque Sans Nerd Font][p-fantasque]           | [Fantasque Sans][f-fant]    | NO   | 2048    | ![w] ![m2] ![l]   |
| [Fura Code Nerd Font][p-fira-code]                | [Fira][f-fira-code]         | YES  | 1000    | ![w] ![m2] ![l]   |
| [Fura Mono Nerd Font][p-fira-mono]                | [Fira][f-fira-mono]         | YES  | 1000    | ![w] ![m2] ![l]   |
| [Gohu Nerd Font][p-gohu]                          | [Gohu][f-gohu]              | NO   | 1000    | ![w2] ![m2] ![l2] |
| [Hasklug Nerd Font][p-hasklig]                    | [Hasklig][f-hasklig]        | YES  | 1000    | ![w] ![m2] ![l]   |
| [Heavy Data Mono Nerd Font][p-heavy-data]         |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [Hermut Nerd Font][p-hermit]                      |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Nerd Font][p-inconsolata]            |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Inconsolata Go Nerd Font][p-inconsolata-go]      |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Iosevka Nerd Font][p-iosevka]                    | [Iosevka][f-iosevka]        | YES  | 1000    | [#83][s-iosevka]  |
| [Knack Nerd Font][p-hack]                         | [Hack][f-hack]              | YES  | 2048    | ![w] ![m2] ![l]   |
| [Lekton Nerd Font][p-lekton]                      |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Literation Mono Nerd Font][p-liberation]         | [Liberation][f-liberation]  | YES  | 2048    | ![w] ![m2] ![l]   |
| [Meslo Nerd Font][p-meslo]                        |                             | NO   | 2048    | ![w] ![m2] ![l]   |
| [Monofur Nerd Font][p-monofur]                    |                             | NO   | 2400    | ![w] ![m2] ![l]   |
| [Monoid Nerd Font][p-monoid]                      |                             | NO   | 1536    | ![w] ![m2] ![l]   |
| [Mononoki Nerd Font][p-mononoki]                  | [Mononoki][f-mononoki]      | NO   | 1024    | ![w] ![m2] ![l]   |
| [M+ (MPlus) Nerd Font][p-mplus]                   |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [ProFont (Windows tweaked) Nerd Font][p-profont]  |                             | NO   | 1200    | ![w] ![m2] ![l]   |
| [ProFont (x11) Nerd Font][p-profont]              |                             | NO   | 1000    | [FAILING]         |
| [ProggyClean Nerd Font][p-proggy-clean]           |                             | NO   | 2048    | [FAILING]         |
| [Roboto Mono][p-roboto]                           |                             | NO   | 2048    | [FAILING]         |
| [Sauce Code Nerd Font][p-source-code-pro]         | [Source][f-source]          | YES  | 1000    | ![w] ![m2] ![l]   |
| [Shure Tech Mono Nerd Font][p-share-tech-mono]    | [Share Tech Mono][f-share]  | YES  | 1000    | ![w] ![m2] ![l]   |
| [Space Mono Nerd Font][p-space-mono]              | [Space Mono][f-space]       | NO   | 1000    | ![w] ![m2] ![l]   |
| [Terminess Nerd Font][p-terminus]                 | [Terminus Font][f-terminus] | YES  | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Mono derivative Nerd Font][p-ubuntu]      |                             | NO   | 1000    | ![w] ![m2] ![l]   |
| [Ubuntu Mono Nerd Font][p-ubuntu]                 |                             | NO   | 1000    | ![w] ![m2] ![l]   |

<sub>_*RFN = Reserved Font Name_</sub>

## Combinations

- Over **`71,000`** unique variations/combinations (Power Set) of patched fonts:
  - **`37`** patched font typefaces
  - **`138`** patched font families
  - **`552`** 'complete' variations/combinations
  - **`70,892`** _possible_ variations/combinations
  - **`71,444`** total calculated combinations (552 + 70,892)
- Combinations for each font are any combination of [Variations](#variations)
    
### Variations

- no flags given (defaults to only **Seti-UI + Custom** and **[Devicons][vorillaz-devicons]**)
- **double _(variable/proportional)_** or **single _(fixed/monospaced)_** width glyphs
- [Font Awesome][font-awesome]
- [Font Awesome Extension][font-awesome-extension]
- [GitHub Octicons][octicons]
- [Font Linux][font-linux]
- [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
- [IEC Power Symbols][website-iecpower]
- [Pomicons][gabrielelana-pomicons]
- Windows Compatibility


## Font Installation

### `Option 1: Install Script`

_Note_: only for Linux & macOS (OS X)

#### All fonts:

* Installs all the patched Fonts (_Warning: This is a lot of Fonts adding up to a large size_)

```sh
./install.sh
```

#### Single font:

* Installs a single Font of your choice

```sh
./install.sh <FontName>
./install.sh Hack
./install.sh HeavyData
```

### `Option 2: Ad Hoc Curl Download`

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
```

_Note:_ deprecated alternative paths: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
```
### `Option 3: Release Archive Download`

Fonts are available for download as packages in the [latest release](https://github.com/ryanoasis/nerd-fonts/releases/latest)

### `Option 4: Homebrew Fonts`

All fonts are available via [Homebrew Fonts](https://github.com/caskroom/homebrew-fonts) on macOS (OS X)

```sh
brew tap caskroom/fonts   
brew cask install font-hack-nerd-font
```
### `Option 5: Unofficial Arch User Repository (AUR)`

The following fonts are available via [AUR packages](https://aur.archlinux.org/) on Arch Linux:

* [Nerd Fonts Complete](https://aur.archlinux.org/packages/nerd-fonts-complete/)
* [Nerd Fonts DejaVu Complete](https://aur.archlinux.org/packages/nerd-fonts-dejavu-complete/)
* [Nerd Fonts Source Code Pro Complete](https://aur.archlinux.org/packages/nerd-fonts-source-code-pro/)
* [Nerd Fonts Git (out of date)](https://aur.archlinux.org/packages/nerd-fonts-git/)

### `Option 6: Download and Install Manually`

Download the specific [patched font](#patched-fonts) of your choice

### `Option 7: Clone the Repo`

Cloning of this repository is **not** required nor the most efficient way to get the fonts,
however if you want all the fonts and want to clone be sure to shallow clone:
> `git clone --depth 1`

For more high level information see the [wiki][wiki]. If you are looking for the Vim plugin see [VimDevIcons ➶][vim-devicons].

### `Option 8: Patch Your Own Font`

Use the provided python command line script to generate a patched font from your own font to get the extra new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)
* you will still need to copy the generated font to the correct font directory on your system


<h2 align="center" id="font-patcher">
	<img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</h2>

Patching the font of your own choosing for use with the [VimDevIcons ➶][vim-devicons]:
* requires: Python 2 (or Python 3), python-fontforge package (version 20141231 or later, see
  the [install instructions](http://designwithfontforge.com/en-US/Installing_Fontforge.html))
* alternative install method on OSX: `brew install fontforge`
* Usage:

```
./font-patcher PATH_TO_FONT
```

* Alternative usage: Execute the patcher with the FontForge binary using the script flag:

```
./fontforge -script font-patcher PATH_TO_FONT
```


```
usage: font-patcher [-h] [-v] [-s] [-q] [-w] [-c] [--fontawesome]
                    [--fontawesomeextension] [--fontlinux] [--octicons]
                    [--powersymbols] [--pomicons] [--powerline]
                    [--powerlineextra] [--custom [CUSTOM]]
                    [--postprocess [POSTPROCESS]]
                    [--progressbars | --no-progressbars] [--careful]
                    [-ext [EXTENSION]] [-out [OUTPUTDIR]]
                    font

Nerd Fonts Font Patcher: patches a given font with programming and development related glyphs

Website: https://github.com/ryanoasis/nerd-fonts

positional arguments:
  font                  The path to the font to patch (e.g., Inconsolata.otf)

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -s, --mono, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not double-width (default is double-width)
  -q, --quiet, --shutup
                        Do not generate verbose output
  -w, --windows         Limit the internal font name to 31 characters (for Windows compatibility)
  -c, --complete        Add all available Glyphs
  --fontawesome         Add Font Awesome Glyphs (http://fortawesome.github.io/Font-Awesome)
  --fontawesomeextension
                        Add Font Awesome Extension Glyphs (http://andrelgava.github.io/font-awesome-extension)
  --fontlinux           Add Font Linux Glyphs (https://github.com/Lukas-W/font-linux)
  --octicons            Add Octicons Glyphs (https://octicons.github.com)
  --powersymbols        Add IEC Power Symbols (http://unicodepowersymbol.com)
  --pomicons            Add Pomicon Glyphs (https://github.com/gabrielelana/pomicons)
  --powerline           Add Powerline Glyphs
  --powerlineextra      Add Powerline Glyphs (https://github.com/ryanoasis/powerline-extra-symbols)
  --custom [CUSTOM]     Specify a custom symbol font. All new glyphs will be copied, with no scaling applied.
  --postprocess [POSTPROCESS]
                        Specify a Script for Post Processing
  --progressbars        Show percentage completion progress bars per Glyph Set
  --no-progressbars     Don't show percentage completion progress bars per Glyph Set
  --careful             Do not overwrite existing glyphs if detected
  -ext [EXTENSION], --extension [EXTENSION]
                        Change font file type to create (e.g., ttf, otf)
  -out [OUTPUTDIR], --outputdir [OUTPUTDIR]
                        The directory to output the patched font file to
```

#### Examples

	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf -s -q
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --use-single-width-glyphs --quiet
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf -w
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --windows --quiet
	./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --windows --pomicons --quiet
	./font-patcher Inconsolata.otf --fontawesome
	./font-patcher Inconsolata.otf --fontawesome --octicons --pomicons
	./font-patcher Inconsolata.otf


<a name="gotta-patch-em-all"></a>
## Gotta Patch 'em All Font Patcher!

* for Contributor or Developer use

* re-patches **all** fonts in the unpatched directory:
```
./gotta-patch-em-all-font-patcher\!.sh
```

* can optionally limit to specific font name pattern:
```
./gotta-patch-em-all-font-patcher\!.sh Hermit
```


## Contributing

See [contributing.md](contributing.md)


## Unstable File Paths

⚠ Warning: File paths may change based on releases (especially **major** version bumps)

Reference the **release** branch and _not_ the ~~master~~ branch because paths are subject change for each release

* For example:
  * ✅ Use: `https://github.com/ryanoasis/nerd-fonts/blob/`**`0.9.0`**`/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf`
  * ❌ Instead of: `https://github.com/ryanoasis/nerd-fonts/blob/`~~`master`~~`/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf`


## Other Good Fonts to Patch

* a list of additional good fonts to patch that I cannot provide or share due to the license:
 * [Input Mono][input-mono] (license restriction)
   * Possibly coming with external hosting :)
 * [PragmataPro][pragmatapro] (not free)
 * [Consolas][consolas] (proprietary)


## Project Motivation

See [Wiki: Project Purpose][wiki-project-purpose]


## Changelog

See [changelog.md](changelog.md)

## License

[MIT](LICENSE) © Ryan L McIntyre

<!--
Repo References
-->

[vim-devicons]:https://github.com/ryanoasis/vim-devicons "VimDevIcons Vim Plugin (external link) ➶"
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[font-awesome-extension]:https://github.com/AndreLGava/font-awesome-extension
[octicons]:https://github.com/github/octicons
[font-linux]:https://github.com/Lukas-W/font-linux
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[wiki]:https://github.com/ryanoasis/nerd-fonts/wiki
[wiki-project-purpose]:https://github.com/ryanoasis/nerd-fonts/wiki/Project-Purpose
[repo]:https://github.com/ryanoasis/nerd-fonts
[gitter]:https://gitter.im/ryanoasis/nerd-fonts
[code-climate]:https://codeclimate.com/github/ryanoasis/nerd-fonts

<!--
Website References
-->

[website-iecpower]:http://unicodepowersymbol.com/
[Cheat Sheet]:http://nerdfonts.com/#cheat-sheet

<!--
Link References
-->

[badge-version]:http://badge.fury.io/gh/ryanoasis%2Fnerd-fonts
[badge-gitter]:https://gitter.im/ryanoasis/nerd-fonts?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

[img-version-badge-with-logo]:https://img.shields.io/github/release/ryanoasis/nerd-fonts.svg?style=flat-square&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAEAAAAAeCAYAAACc7RhZAAAABmJLR0QA%2FwD%2FAP%2BgvaeTAAAACXBIWXMAABJ0AAASdAHeZh94AAAAB3RJTUUH4AsTAw4JCvVTMQAABhNJREFUWMPtmX2MnFUVxs%2BdmZ3dYit0DaQKVfmwLaAxRQhIaqKpaCBSkCbQAkEUY0KFxFAkAomdaDeCCuJHqgQCQvnQjYABJEZJs2AhDS4xCIvgaDutsFmWmTLs7sz7dc%2Fv%2Bgd3zJvJu7O73bF2iTfZ7Mw79557nueee%2B5z7ivy%2F7Zwmqp%2BFRgBGoAFqsAu4HZVvTwMw%2BPelcCbzeb7gSeccw5QoO6macBuYJu1dt3Y2NhhCx68tfYc4E0P7o9RFJ1QLpeLqnop8BfXoQEB8JiqXlar1ZYsKOCjo6OLgJ%2B1Vl1VbyyVSiaDoLOAJzuQ8CKQAG%2Br6jXt482hCD5JktPy%2Bfx2Y8xK51wIXFIoFB6eYczp%2BXx%2BwBizVkTEOTcpIvtEJBaRpv%2BrOeeeE5E%2BEdmTz%2Bd%2FdUgBHxwczAFbgMSvXsNa%2B%2BnZjK1UKr1JkpwJ3AfsAP4KhB0iIxoeHi5IHMerVfU6a%2B0Xp6amjvpfEgDclnKwYa39zHR9a7XaEmvtOuBmYGcnsG3A3wT%2B7JxztVptiajqxtSPU8D3G43GsoMNvlQqGaDh%2FYittZ%2FP6hdF0QrgDmA%2FMAS8nfLf%2Bj3%2FMHCTqm4GbgO2AQNADLwM7AH%2B1Uoi506TPX8eRdEJB5mAt3gn421s%2F71cLhc9iBqwHXgQmAT2AT%2B01p6dlekrlUovMAiMAb9PYfydiIiJomhlsVh8Jcsp5xwi8oiq3trT0%2FNsJwDj4%2BPvWbp06epcLrfKGHO0iBwlIv0iskREFolIr4gURCQnIioiiYg0RGRCRMacc3tFJOece7lQKDzRluDOyOfz20TknyISicg5IvIocPfWrVufLpVKbqbcsn79%2Bq8bYzYYY8702L6Ty%2BW2tPbemFdUj7VFggL%2FAP4O7LLWXpAWJ6p6CfAL4AUffuqFyC7gGR9qs9qbqTnHgSFV%2FbaqfgP4A%2B%2B0Ma8AH5iamjryABPsZGueOI4%2F9p9jELhXRC4IguD4vr6%2Bi4wxtxhjCqlIeFVEHhWRk0TkAyLSZ4w50TkXiMiQc26nX83DjTGrROQUEfmIMSbnnLP%2BKApFpCoi4%2F7%2FlIgcISKrfcTM2Jxzcb1eP7K%2Fv39irgREUbSiWCy%2B6u08n8vlTk2LifM9%2B9%2F1mnsDoBmr81tr7ReAHaq6WVWvBR5p7V3gSVX9chzHH200GssqlUrvbJwLguCDqropndCmiY7n56Eo17bsqOrFWQnmDaAZBMFyT8IVgM1wIgSabc8Goyg6sRvFzgwE%2FGYeti%2FyNl4fHh4uZHX4GhCq6hXpyACCDEde8pFQUdUbu6j7z8qYazIljAbmQcAmb%2BMHc5Wla4DxDMfUOeeiKFrVxXJ3U8r%2B42EYHu%2BJWeefPTRXm5VKpbderx8B%2FMiH%2F1fm7FgQBMuB57LCspVNu6QE7%2FFAx0ZHRxel5j%2FGP39raGgoP0dSb1DVbwEjzjmXJMmpB%2BScFxS3txOQJMmaLhKw1wO9uT1HtebrJI8zwG8EGqp6vbe7N6uinGuYXpi%2BkLDWntsN8FEUrUqR%2BokMcnZ7ENtnc%2BS1VJ%2BXvkNZxM7H2RWt5Kiql3dp%2F1%2FnnfzbNNFxS0vvJ0lyegc732yJLy%2FEnvKfk65Ke%2BBuT8DmeRC5Evj1yMhID7Crk71Go7EMmPBgRuM4%2FnhGwj7D3xkOqOqVwJ9SSfWmrl9QHqjharW62JexMfBCHMcnt4qwycnJ93U4Js9LHYkR8NMkSdbU6%2FXDR0ZGesIw%2FJCqXgbsSAGPgYF57%2F3plBXwy7kKEuA1P7bsV%2FYu%2F%2F3HszyWn5lFTREC98VxfPJ%2FpXwNw%2FBYP9HO2fSP4%2FiktpUZDoLgGFX9Umu%2FVqvVxXNYgPW%2B9m96GV4HnlbVq6y1n5uYmOg%2FGDc4u4Gw2WwePYu%2B96dC8idenHzPV5FRkiSfWogvKm5oXVfv37%2F%2FvTNEwGpVvdpa%2B1mgBLzux6KqGxbknb1PZns8kH3AliRJPhkEwfJqtbo4CILl1tq1vq6%2FtyV0UtugYq09f0G%2FuAjD8NjpZHKHC4%2BHVPXicrlclHdDK5VKxlp7NnAr8Kx%2FEQEw6r%2FfqaobwjD88KHm%2B78BVBigctRUCFcAAAAASUVORK5CYII%3D
[img-gitter-badge]:https://img.shields.io/gitter/room/nwjs/nw.js.svg?style=flat-square
[img-code-climate-badge]:https://img.shields.io/codeclimate/github/ryanoasis/nerd-fonts.svg?style=flat-square
[coc-badge]: https://img.shields.io/badge/code%20of-conduct-ff69b4.svg?style=flat-square
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAACWFBMVEXXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWkrXWko2FeWCAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAAI28AACNvATX8B%2FsAAAAHdElNRQfhBQMBMCLAfV85AAAAi0lEQVQ4y2NgIBYszkPmJc5ORZE9DgEJqNxmmPS%2B43AA4h5B5TIwbD5%2BHFnoKCoXYSBMBIW7CF0eAxChoPM4ARXHB4GCZEIKKA8H%2FCoWE1LAwIBfBVp6wQA1DPhVzMJMcyggCVuqxGI%2FLhWY6Z6QPKoK7HmHkDwDwxYC8gwMdSDprXiz6PHjpQxUBgCLDfI7GXNh5gAAAABJRU5ErkJggg%3D%3D

[consolas]:https://www.microsoft.com/typography/fonts/family.aspx?FID=300
[input-mono]:http://input.fontbureau.com/download/
[pragmatapro]:http://www.fsd.it/shop/fonts/pragmatapro/

[release]:https://github.com/ryanoasis/nerd-fonts/releases/latest "Latest Release (external link) ➶"
[coc]:https://github.com/ryanoasis/nerd-fonts/blob/master/code_of_conduct.md "Contributor Covenant Code of Conduct"
[prs]:http://makeapullrequest.com "Make a Pull Request (external link) ➶"

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
[f-share]:https://fonts.google.com/specimen/Share+Tech+Mono
[f-space]:https://fonts.google.com/specimen/Space+Mono
[f-gohu]:http://font.gohu.org/
[f-mononoki]:http://madmalik.github.io/mononoki/
[f-hasklig]:https://github.com/i-tu/Hasklig

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
[p-inconsolata-go]:patched-fonts/InconsolataGo
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
[p-share-tech-mono]:patched-fonts/ShareTechMono
[p-space-mono]:patched-fonts/SpaceMono
[p-gohu]:patched-fonts/Gohu
[p-mononoki]:patched-fonts/Mononoki
[p-code-nr]:patched-fonts/CodeNewRoman
[p-hasklig]:patched-fonts/Hasklig


<!--
Quick Link Images
-->

[ql-1]:images/nerd-fonts-character-logo-md.png "Latest Release (external link) ➶"
[ql-2]:images/nerd-fonts-character-logo-md.png "↓ View Patched Fonts List ↓"
[ql-3]:images/nerd-fonts-patcher-logo-md.png "↓ Font Patcher Details ↓"
[ql-4]:https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v1.0.0/branding-logo-sm.png "VimDevIcons Vim Plugin (external link) ➶"
[ql-5]:images/nerd-fonts-character-logo-md.png "Font Package Archive (Zip) Downloads (external link) ➶"

<!--
Patched Font Statuses
-->

[w-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-pass-sm.png "↓ Windows Compatibility Status ↓"
[l-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-pass-sm.png "↓ Linux Compatibility Status ↓"
[m-top]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-pass-sm.png "↓ macOS (OSX) Compatibility Status ↓"

[w]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-pass-sm.png "Windows status is working ☺"
[l]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-pass-sm.png "Linux status is working ☺"
[m]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-pass-sm.png "macOS (OSX) status is working ☺"

[w2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/windows-unknown-sm.png "Windows status is Unknown/Un-tested"
[l2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/linux-unknown-sm.png "Linux status is Unknown/Un-tested"
[m2]:https://github.com/ryanoasis/nerd-fonts/wiki/screenshots/v1.0.x/mac-unknown-sm.png "macOS (OSX) status is Unknown/Un-tested"

[s-iosevka]:https://github.com/ryanoasis/nerd-fonts/issues/83
