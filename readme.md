<div align="center">
  <img src="images/nerd-fonts-logo.svg" alt="Nerd Fonts Logo" />
  <hr />
  <img src="images/project-subtitle-phrase.svg" alt="Iconic font aggregator, collection, and patcher" />
  <hr />

  [Releases](https://github.com/ryanoasis/nerd-fonts/releases) • 
  [Fonts](#patched-fonts) • 
  [Font Patcher](#font-patcher) • 
  [Wiki](https://github.com/ryanoasis/nerd-fonts/wiki) • 
  [VimDevIcons](https://github.com/ryanoasis/vim-devicons)
  
  [![Version](https://img.shields.io/github/release/ryanoasis/nerd-fonts.svg?style=for-the-badge)](https://github.com/ryanoasis/nerd-fonts/releases) 
  [![Gitter](https://img.shields.io/gitter/room/ryanoasis/nerd-fonts?style=for-the-badge)](https://gitter.im/ryanoasis/nerd-fonts) 
  [![Code of Conduct](https://img.shields.io/badge/code%20of-conduct-ff69b4.svg?style=for-the-badge)](https://github.com/ryanoasis/nerd-fonts/blob/master/CODE_OF_CONDUCT.md) 
  [![OS Support](https://raw.githubusercontent.com/wiki/ryanoasis/nerd-fonts/images/faux-shield-badge-os-logos.svg)](https://github.com/ryanoasis/nerd-fonts#font-installation)
</div>

**Nerd Fonts** is a project that enhances developer-focused fonts by adding a large number of glyphs. It adds glyphs from popular fonts like [Font Awesome](https://github.com/FortAwesome/Font-Awesome), [Devicons](https://github.com/devicons/devicon), [Octicons](https://github.com/primer/octicons), and others to expand functionality.

The flow diagram below illustrates the glyph sets currently included:

<div align="center">
  <img src="images/sankey-glyphs-combined-diagram.svg" alt="Glyph Set Flow Diagram" />
  <sub><i>Diagram created using <a href="http://sankeymatic.com/" title="SankeyMATIC: A user-friendly Sankey diagram builder">@SankeyMATIC</a></i></sub>
</div>

> [!IMPORTANT]  
> Cloning this repository is not recommended due to its large size and potentially unstable `master` branch, unless you are contributing to development.

## Features
* A [FontForge Python script](#font-patcher) to patch any font
  * Includes an option to create **Monospaced (fixed-pitch, fixed-width)** _or_ **double-width (non-monospaced)** glyphs
  * For more details see the [**Font Patcher**](#font-patcher) section
* **`67`** already [patched font families](#patched-fonts)
* Over **`10,000`** glyphs/icons combined [(more details)](#combinations)
  * Current glyph sets include: [Powerline with Extra Symbols][ryanoasis-powerline-extra-symbols], [Font Awesome][font-awesome], [Material Design Icons][font-material-design-icons], [Weather][font-weather], [Devicons][devicons], [Octicons][octicons], [Font Logos][font-logos] (Formerly Font Linux), [Pomicons][gabrielelana-pomicons], [Codeicons][codicons]
* **Monospaced (fixed-pitch, fixed-width)** _or_ **double-width (non-monospaced)** _or_ **proportional** glyphs version of each font
  * This refers to the Nerd Font glyphs themselves not necessarily the Font as a whole
* A Developer/Contributor provided [bash script](#gotta-patch-em-all) to re-patch all the fonts


## Glyph Sets

:mag: :mag: You can search for glyphs easily on [NerdFonts.com][Cheat Sheet] via the [Cheat Sheet][]

See [Wiki: Glyph Sets and Codepoints for more details][wiki-glyph-sets-codepoints]

### Icon names in shell

See [Wiki: Icon names in shell][wiki-icon-names-in-shell]

## Patched Fonts

A preview of all fonts can be found [here](https://www.nerdfonts.com/font-downloads).

<details>
  <summary>Expand available fonts</summary>
  
| Patched Font                                      | Original Font                          | Version    | Reserved |
| ------------------------------------------------- | -------------------------------------- | ---------- | ------   |
| [0xProto Nerd Font](patched-fonts/0xProto)        | [0xProto][f-0xProto]                   | 2.201      | No       |
| [3270 Nerd Font](patched-fonts/3270)              | [3270][f-3270]                         | 3.0.1      | No       |
| [Agave Nerd Font](patched-fonts/Agave)                       | [Agave][f-agave]                       | 37         | No       |
| [AnonymicePro Nerd Font](patched-fonts/AnonymousPro)         | [Anonymous Pro][f-a-pro]               | 1.002      | Yes      |
| [Arimo Nerd Font](patched-fonts/Arimo)                        | [Arimo][f-arimo]                       | 1.33       | No       |
| [AurulentSansMono Nerd Font](patched-fonts/AurulentSansMono)           | Aurulent Sans Mono (Stephen G. Hartke) |            | No       |
| [BigBlueTerminal Nerd Font](patched-fonts/)         | BigBlueTerminal (VileR)                |            | No       |
| [BitstromWera Nerd Font](patched-fonts/)             | Vera Sans Mono (Bitstream Inc)         | 1.1        | Yes      |
| [BlexMono Nerd Font](patched-fonts/)                      | [IBM Plex Mono][f-ibm-plex]            | 2.004      | Yes      |
| [CaskaydiaCove Nerd Font](patched-fonts/)              | [Cascadia Code][f-cascadia]            | 2111.01    | Yes      |
| [CaskaydiaMono Nerd Font](patched-fonts/)        | [Cascadia Mono][f-cascadia]            | 2111.01    | Yes      |
| [CodeNewRoman Nerd Font](patched-fonts/)              | Code New Roman (Sam Radian)            | 2.0        | No       |
| [ComicShannsMono Nerd Font](patched-fonts/)              | [Comic Shanns Mono][f-comic]           | 1.3.1      | No       |
| [CommitMono Nerd Font](patched-fonts/)                 | [Commit Mono][f-commit]                | 1.143      | No       |
| [Cousine Nerd Font](patched-fonts/)                    | [Cousine][f-cousine]                   | 1.211      | No       |
| [D2Coding Nerd Font](patched-fonts/)                 | [D2Coding][f-d2coding]                 | 1.3.2      | No       |
| [DaddyTimeMono Nerd Font](patched-fonts/)         | [DaddyTimeMono][f-daddytimemono]       | 1.2.3      | No       |
| [DepartureMono Nerd Font](patched-fonts/)         | [Departure Mono][f-departuremono]      | 1.422      | No       |
| [DejaVuSansMono Nerd Font][p-dejavu]              | [DejaVu][f-dejavu]                     | 2.37       | No       |
| [DroidSansMono Nerd Font][p-droid]                | Droid Sans Mono (Ascender Corp)        | 1.00-113   | No       |
| [EnvyCodeR Nerd Font][p-envy]                     | [Envy Code R][f-envy]                  | 0.79       | Yes      |
| [FantasqueSansMono Nerd Font][p-fantasque]        | [Fantasque Sans Mono][f-fant]          | 1.8.0      | No       |
| [FiraCode Nerd Font][p-fira-code]                 | [Fira Code][f-fira-code]               | 6.2        | No       |
| [FiraMono Nerd Font][p-fira-mono]                 | [Fira Mono][f-fira-mono]               | 3.206      | No       |
| [GeistMono Nerd Font][p-geist-mono]               | [Geist Mono][f-geist-mono]             | 1.200      | No       |
| [GoMono Nerd Font][p-go-mono]                     | [Go-Mono][f-go-mono]                   | 2.010      | No       |
| [Gohu Nerd Font][p-gohu]                          | [Gohu TTF][f-gohu2], [Gohu][f-gohu]    | 2.0        | No       |
| [Hack Nerd Font][p-hack]                          | [Hack][f-hack]                         | 3.003      | No       |
| [Hasklug Nerd Font][p-hasklig]                    | [Hasklig][f-hasklig]                   | 1.2        | Yes      |
| [HeavyDataMono Nerd Font][p-heavy-data]           | HeavyData (Vic Fieger)                 | 1          | No       |
| [Hurmit Nerd Font][p-hermit]                      | [Hermit][f-hermit]                     | 2.0        | Yes      |
| [iM-Writing Nerd Font][p-im-writing]              | [iA-Writer][f-ia-writer]               | Dec 2018   | Yes      |
| [Inconsolata Nerd Font][p-inconsolata]            | [Inconsolata][f-inconsolata]           | 3.000      | No       |
| [InconsolataGo Nerd Font][p-inconsolata-go]       | [InconsolataGo][f-inconsolatago]       | 1.013      | No       |
| [Inconsolata LGC Nerd Font][p-inconsolata-lgc]    | [Inconsolata LGC][f-inconsolatalgc]    | 1.5.2      | No       |
| [IntoneMono Nerd Font][p-intel-one-mono]          | [Intel One Mono][f-intel-one-mono]     | 1.4.0      | Yes      |
| [Iosevka Nerd Font][p-iosevka]                    | [Iosevka][f-iosevka]                   | 29.0.4     | No       |
| [IosevkaTerm Nerd Font][p-iosevka-term]           | [Iosevka Term][f-iosevka]              | 29.0.4     | No       |
| [IosevkaTermSlab Nerd Font][p-iosevka-term-slab]  | [Iosevka Term Slab][f-iosevka]         | 29.0.4     | No       |
| [JetBrainsMono Nerd Font][p-jetbrains-mono]       | [JetBrains Mono][f-jetbrains-mono]     | 2.304      | No       |
| [Lekton Nerd Font][p-lekton]                      | [Lekton][f-lekton]                     | 34         | No       |
| [Literation Nerd Font][p-liberation]              | [Liberation][f-liberation]             | 2.1.5      | Yes      |
| [Lilex Nerd Font][p-lilex]                        | [Lilex][f-lilex]                       | 2.400      | No       |
| [MartianMono Nerd Font][p-martian]                | [MartianMono][f-martian]               | 1.0.0      | No       |
| [Meslo Nerd Font][p-meslo]                        | [Meslo][f-meslo]                       | 1.21       | No       |
| [Monaspice Nerd Font][p-monaspace]                | [Monaspace][f-monaspace]               | 1.101      | Yes      |
| [Monofur Nerd Font][p-monofur]                    | Monofur (Tobias B Koehler)             | 1.0        | No       |
| [Monoid Nerd Font][p-monoid]                      | [Monoid][f-monoid]                     | 0.61       | No       |
| [Mononoki Nerd Font][p-mononoki]                  | [Mononoki][f-mononoki]                 | 1.6        | Yes      |
| [M+ Nerd Font][p-mplus]                           | [MPlus Fonts][f-mplus]                 | 2023/09    | No       |
| [Noto Nerd Font][p-noto]                          | [Noto][f-noto]                         | div        | No       |
| [OpenDyslexic Nerd Font][p-opendyslexic]          | [OpenDyslexic][f-opendyslexic]         | 2.001      | No       |
| [Overpass Nerd Font][p-overpass]                  | [Overpass][f-overpass]                 | 3.0.5      | No       |
| [ProFont Nerd Font][p-profont]                    | [ProFont][f-profont]                   | 2.3, 2.2   | No       |
| [ProggyClean Nerd Font][p-proggy-clean]           | ProggyClean (Tristan Grimmer)          | 2004/04/15 | No       |
| [RecMono Nerd Font][p-recursive]                  | [Recursive Mono][f-recursive]          | 1.085      | No       |
| [RobotoMono Nerd Font][p-roboto]                  | [Roboto Mono][f-roboto]                | 3.0        | No       |
| [SauceCodePro Nerd Font][p-source-code-pro]       | [Source Code Pro][f-source]            | 2.042      | Yes      |
| [ShureTechMono Nerd Font][p-share-tech-mono]      | [Share Tech Mono][f-share]             | 1.003      | Yes      |
| [SpaceMono Nerd Font][p-space-mono]               | [Space Mono][f-space]                  | 1.001      | No       |
| [Terminess Nerd Font][p-terminus]                 | [Terminus TTF][f-terminus]             | 4.49.3     | Yes      |
| [Tinos Nerd Font][p-tinos]                        | [Tinos][f-tinos]                       | 1.23       | No       |
| [Ubuntu Nerd Font][p-ubuntu]                      | [Ubuntu Font][f-ubuntu]                | 0.83       | No       |
| [UbuntuMono Nerd Font][p-ubuntu-mono]             | [Ubuntu Font][f-ubuntu]                | 0.80       | No       |
| [UbuntuSans Nerd Font][p-ubuntu-sans]             | [Ubuntu Sans][f-ubuntu-sans]           | 1.004      | No       |
| [VictorMono Nerd Font][p-victor]                  | [Victor Mono][f-victor]                | 1.5.6      | No       |
| [ZedMono Nerd Font][p-zed-mono]                   | [Zed Mono][f-zed-mono]                 | 1.2.0      | No       |
</details>

### Variations

- no flags given (defaults to only **Seti-UI + Custom** and **[Devicons][devicons]**)
- **double _(variable/proportional)_** or **single _(fixed/monospaced)_** or **proportional** width icon-glyphs
- [Font Awesome][font-awesome]
- [Font Awesome Extension][font-awesome-extension]
- [Material Design Icons][font-material-design-icons]
- [Weather][font-weather]
- [GitHub Octicons][octicons]
- [Font Logos][font-logos] (Formerly Font Linux)
- [Powerline Extra Symbols][ryanoasis-powerline-extra-symbols]
- [IEC Power Symbols][website-iecpower]
- [Pomicons][gabrielelana-pomicons]
- [Codicons][codicons]

## Font Installation

Some of the options below just help you to download the font file(s) (i.e. `.ttf` or `.otf`) or archives of font files.
These must be installed on your system, depending on your OS. Usually (double) clicking the font files individually does the trick.
Ask your OS' community if installing a font file is a problem.

### `Option 1: Release Archive Download`

> Best option if you want an **archive** or complete **font family** of variations (Bold, Italic, etc.).

Fonts are available for download as packages in the [latest release](https://github.com/ryanoasis/nerd-fonts/releases/latest)
A nice overview is [on the Nerd Font site](https://www.nerdfonts.com/font-downloads) (but misses the more compact `xv` archives).

If you want download the latest release of a given font inside a script you can use (replace "JetBrainsMono" with your font):
```sh
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
```

### `Option 2: Homebrew Fonts`

> Best option if on **macOS** and want to use **Homebrew**.

All fonts are available via [Homebrew Cask](https://github.com/Homebrew/homebrew-cask) on macOS (OS X)

```sh
brew install font-hack-nerd-font
```

### `Option 3: Unofficial Chocolatey or Scoop Repositories`

> Option for **Windows** and wanting to use **Chocolatey** or **Scoop**.

Chocolatey users can download fonts published to the [Chocolatey Community Repository (CCR)](https://community.chocolatey.org/packages):

```powershell
choco install nerd-fonts-hack
```

Scoop users can download fonts using the [Scoop bucket for Nerd Fonts](https://github.com/matthewjberger/scoop-nerd-fonts):

```powershell
scoop bucket add nerd-fonts
scoop install Hack-NF
```

### `Option 4: Arch Extra Repository`

> Option for **Arch Linux** and wanting to use **Extra packages**.

Most fonts are available via [Arch Extra packages](https://archlinux.org/groups/any/nerd-fonts/).
Some special packages are [in AUR](https://aur.archlinux.org/packages?K=nerd-fonts-&outdated=off).

### `Option 5: PowerShell Web Installer`

> Best option for **interactive setup guidance** or **automating** installations through **PowerShell scripts**.

_Note_:
  - **Requires PowerShell 7+** to be installed on Windows, macOS, or Linux.
  - **Windows PowerShell 5.1** is also supported.
  - This is a 3rd-party community tool. More information can be found on its GitHub repository [here](https://github.com/jpawlowski/nerd-fonts-installer-PS), including advanced installation options.

#### Run the Interactive Installer

To run the interactive installer, use the following command:

```powershell
& ([scriptblock]::Create((iwr 'https://to.loredo.me/Install-NerdFont.ps1')))
```

#### Install Fonts Directly

To install specific fonts directly, use the following command:

```powershell
& ([scriptblock]::Create((iwr 'https://to.loredo.me/Install-NerdFont.ps1'))) -Name hack, heavy-data
```

To install fonts without a confirmation prompt, use:

```powershell
& ([scriptblock]::Create((iwr 'https://to.loredo.me/Install-NerdFont.ps1'))) -Confirm:$false -Name hack, heavy-data
```

To get a list of possible font names, use:

```powershell
& ([scriptblock]::Create((iwr 'https://to.loredo.me/Install-NerdFont.ps1'))) -List All
```

### `Option 6: Ad Hoc Curl Download`

> Option if you want to use the **`curl` command** or for use in **scripts**.

_Note_: Will not work to get newer fonts as they are not inside the repo anymore.

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
```

_Note:_ deprecated alternative paths: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
```

### `Option 7: Install Script`

> Best option if you want to **automate** installing or for use in **scripts**.

_Note_:
  - **Requires (shallow) cloning** the repo as of now :-(
  - Will not work to get newer fonts as they are not inside the repo anymore.

#### All fonts:

* Installs all the patched Fonts (_Warning: This is a lot of Fonts adding up to a large size_)

```sh
./install.sh
```

or, in PowerShell (Windows only):

```powershell
./install.ps1
```

#### Single font:

* Installs a single Font of your choice

```sh
./install.sh <FontName>
./install.sh Hack
./install.sh HeavyData
```

or, in PowerShell (Windows only):

```powershell
./install.ps1 <FontName>
./install.ps1 Hack
./install.ps1 HeavyData
./install.ps1 FiraCode, Hack
./install.ps1 DejaVuSansMono -WhatIf
```

### `Option 8: Font Fallback`
Most systems have a mechanism to search for an alternative font when the current font does not
have a glyph that is needed. For example you edit a Latin text and insert a Chinese character,
that glyph is taken not from your active font (it does not have it) but from some other font.

For this font fallback you can use one of the `SymbolsOnly` fonts.

For fontconfig based systems like Linux you can improve the behavior with the
`10-nerd-font-symbols.conf` configuration file, that needs to be manually installed.

* Pro: One symbol font is sufficient for all text fonts
* Con: Scaling and placement of the fallback symbols can be hit or miss

### `Option 9: Clone the Repo`

> Best option for **full control**, **all** or **some** of the fonts, or **contributing** to development.

_Note_: Will not work to get newer fonts as they are not inside the repo anymore.

A full clone of this repository is **not** required nor efficient (mostly due to Repository size) if you are simply only interested in a limited set of fonts.

If you do want to clone the entire repo be sure to _shallow_ clone:
```sh
git clone --depth 1
```

Even if you develop you probably do not need the old versions of the font files. With this command you have all commits but not all the old data - it will be loaded only if you check out old binaries (or do a blame):

```sh
git clone --filter=blob:none git@github.com:ryanoasis/nerd-fonts
```

If you want to clone just a sub-directory, use `git sparse-checkout`.

```sh
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/JetBrainsMono
```

### `Option 10: Patch Your Own Font`

> The option for **patching** your **own font** or fully **customizing** the patched font.

Use the provided Python command line script to generate a patched font from your own font to get the extra new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)
* you will still need to copy the generated font to the correct font directory on your system

## font-patcher

<p align="center">
  <img src="images/nerd-fonts-patcher-logo.png" alt="Nerd Fonts Patcher">
</p>

Patching the font of your own choosing:
* Use the script
  * Download script and its helper files as [archive](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip) and extract
  * Just downloading the `font-patcher` script is not enough.
  * Requires: Fontforge, Python 3, `python-fontforge` and `argparse` packages
    * Fontforge can be installed as package
    * or on OSX via `brew install fontforge`
    * or as [AppImage](https://github.com/fontforge/fontforge/releases)
  * Usage, recommended:
  ```
  fontforge -script font-patcher PATH_TO_FONT
  ```
  * Usage, direct (more convenient call, if it works for you):
  ```
  ./font-patcher PATH_TO_FONT
  ```
  * Usage, with Fontforge AppImage

    _Note_: `chmod u+x` the AppImage after download. All supplied paths need to be **absolute** and an explicit output path is required! If everything is located in the same directory, you can use the `$PWD` shorthand.
  ```
  ./FontForge.AppImage -script $PWD/font-patcher $PWD/BaseFont.ttf -out /tmp
  ```

* Use docker
  * Default parallel tasks
  ```
  docker run --rm -v /path/to/fonts:/in:Z -v /path/for/output:/out:Z nerdfonts/patcher [OPTIONS]
  ```
  * Single process (slow)
  ```
  docker run --rm -v /path/to/fonts:/in:Z -v /path/for/output:/out:Z -e "PN=1" nerdfonts/patcher [OPTIONS]
  ```
  * Specify the parallel tasks number to 10
  ```
  docker run --rm -v /path/to/fonts:/in:Z -v /path/for/output:/out:Z -e "PN=10" nerdfonts/patcher [OPTIONS]
  ```


> [!NOTE]
> The resulting font's family (aka font name) will be set to the original family after CamelCasing, removing whitespace and appending ` Nerd Font`. For example, `iosevka term` would become `IosevkaTerm Nerd Font`.

Full options follow, see also [**page explaining all options**](https://github.com/ryanoasis/nerd-fonts/wiki/ScriptOptions):

```
Nerd Fonts Patcher v3.3.0-21 (4.16.1) (ff 20230101)
usage: font-patcher [-h] [-v] [-s] [--variable-width-glyphs]
                    [--debug [{0,1,2,3}]] [-q] [--careful] [-ext EXTENSION]
                    [-out OUTPUTDIR] [--makegroups [{-1,0,1,2,3,4,5,6}]] [-c]
                    [--codicons] [--fontawesome] [--fontawesomeext]
                    [--fontlogos] [--material] [--octicons] [--powersymbols]
                    [--pomicons] [--powerline] [--powerlineextra] [--weather]
                    [--boxdrawing] [--configfile CONFIGFILE] [--custom CUSTOM]
                    [--dry] [--glyphdir GLYPHDIR] [--has-no-italic] [-l]
                    [--metrics {HHEA,TYPO,WIN}] [--name FORCE_NAME]
                    [--postprocess POSTPROCESS] [--removeligs]
                    [--xavgcharwidth [XAVGWIDTH]]
                    [--progressbars | --no-progressbars]
                    font

Nerd Fonts Font Patcher: patches a given font with programming and development related glyphs

* Website: https://www.nerdfonts.com
* Version: 3.3.0-21
* Development Website: https://github.com/ryanoasis/nerd-fonts
* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/-/changelog.md

positional arguments:
  font                  The path to the font to patch (e.g., Inconsolata.otf)

options:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -s, --mono, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not double-width (default is double-width) (Nerd Font Mono)
  --variable-width-glyphs
                        Do not adjust advance width (no "overhang") (Nerd Font Propo)
  --debug [{0,1,2,3}]   Verbose mode (optional: 1=just to file; 2*=just to terminal; 3=display and file)
  -q, --quiet           Do not generate verbose output
  --careful             Do not overwrite existing glyphs if detected
  -ext EXTENSION, --extension EXTENSION
                        Change font file type to create (e.g., ttf, otf)
  -out OUTPUTDIR, --outputdir OUTPUTDIR
                        The directory to output the patched font file to
  --makegroups [{-1,0,1,2,3,4,5,6}]
                        Use alternative method to name patched fonts (default=1)

Symbol Fonts:
  -c, --complete        Add all available Glyphs
  --codicons            Add Codicons Glyphs (https://github.com/microsoft/vscode-codicons)
  --fontawesome         Add Font Awesome Glyphs (http://fontawesome.io/)
  --fontawesomeext      Add Font Awesome Extension Glyphs (https://andrelzgava.github.io/font-awesome-extension/)
  --fontlogos           Add Font Logos Glyphs (https://github.com/Lukas-W/font-logos)
  --material, --mdi     Add Material Design Icons (https://github.com/templarian/MaterialDesign)
  --octicons            Add Octicons Glyphs (https://octicons.github.com)
  --powersymbols        Add IEC Power Symbols (https://unicodepowersymbol.com/)
  --pomicons            Add Pomicon Glyphs (https://github.com/gabrielelana/pomicons)
  --powerline           Add Powerline Glyphs
  --powerlineextra      Add Powerline Extra Glyphs (https://github.com/ryanoasis/powerline-extra-symbols)
  --weather             Add Weather Icons (https://github.com/erikflowers/weather-icons)

Expert Options:
  --boxdrawing          Force patching in (over existing) box drawing glyphs
  --configfile CONFIGFILE
                        Specify a file path for JSON configuration file (see sample: src/config.sample.json)
  --custom CUSTOM       Specify a custom symbol font, all glyphs will be copied; absolute path suggested
  --dry                 Do neither patch nor store the font, to check naming
  --glyphdir GLYPHDIR   Path to glyphs to be used for patching
  --has-no-italic       Font family does not have Italic (but Oblique), to help create correct RIBBI set
  -l, --adjust-line-height
                        Whether to adjust line heights (attempt to center powerline separators more evenly)
  --metrics {HHEA,TYPO,WIN}
                        Select vertical metrics source (for problematic cases)
  --name FORCE_NAME     Specify naming source ('full', 'postscript', 'filename', or concrete free name-string)
  --postprocess POSTPROCESS
                        Specify a Script for Post Processing
  --removeligs, --removeligatures
                        Removes ligatures specificed in JSON configuration file (needs --configfile)
  --xavgcharwidth [XAVGWIDTH]
                        Adjust xAvgCharWidth (optional: concrete value)
  --progressbars        Show percentage completion progress bars per Glyph Set (default)
  --no-progressbars     Don't show percentage completion progress bars per Glyph Set
```

#### Examples

```
./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf
./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf -s -q
./font-patcher Droid\ Sans\ Mono\ for\ Powerline.otf --use-single-width-glyphs --quiet

./font-patcher Inconsolata.otf --fontawesome
./font-patcher Inconsolata.otf --fontawesome --octicons --pomicons
./font-patcher Inconsolata.otf

./FontForge.AppImage -script /tmp/nerdfonts/font-patcher /tmp/nerdfonts/CascadiaMonoPL-Semibold.ttf --fontawesome -out /tmp
./FontForge.AppImage -script $PWD/font-patcher $PWD/CascadiaMonoPL-Semibold.ttf --octicons -out $HOME

docker run --rm -v ~/myfont/patchme:/in:Z -v ~/myfont/patched:/out:Z nerdfonts/patcher
docker run --rm -v ~/Desktop/myfont/patchme:/in:Z -v ~/Desktop/myfont/patched:/out:Z nerdfonts/patcher --fontawesome
```

Usually you want the `--complete` option.

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

* or to specific directory name start:

  ```
  ./gotta-patch-em-all-font-patcher\!.sh /Heavy
  ```

Full options:

```
Usage: ./gotta-patch-em-all-font-patcher!.sh [OPTION] [FILTER]

    OPTION:
        -c, --checkfont     Create the font(s) in check-fonts/ instead
        -t, --keeptime      Try to preserve timestamp of previously patched
                            font in patched-fonts/ directory
        -v, --verbose       Show more information when running
        -i, --info          Rebuild JUST the readmes
        -j, --jobs          Run up to 8 patch processes in parallel
        -h, --help          Show this help

    FILTER:
        The filter argument to this script is a filter for the fonts to patch.
        The filter is a regex (glob * is expressed as [^/]*, see `man 7 glob`)
        All font files that start with that filter (and are ttf, otf, or sfd files) will
        be processed only.
          Example ./gotta-patch-em-all-font-patcher\!.sh "iosevka"
          Process all font files that start with "iosevka"
        If the argument starts with a '/' all font files in a directory that matches
        the filter are processed only.
          Example ./gotta-patch-em-all-font-patcher\!.sh "/iosevka"
          Process all font files that are in directory "iosevka"
```

## Contributing

See [contributing.md](contributing.md)

## Common Problems

Some solutions can be found on the Wiki, if you are lucky. For example hints to use the pager `less` are there:

* https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting
* https://github.com/ryanoasis/nerd-fonts/wiki/Terminal-Emulators
* https://github.com/ryanoasis/nerd-fonts/wiki/Reporting-Issues

## Unstable File Paths

:warning: Warning: File paths may change based on releases (especially **major** version bumps)

Reference the **release** tag or branch and _not_ the ~~master~~ branch because paths are subject to change for each release

* For example:
  * :white_check_mark: Use: <code>https\://github.com/ryanoasis/nerd-fonts/tree/<b>v3.0.0</b>/patched-fonts/Hermit/Regular/HurmitNerdFont-Regular.otf</code>
  * :white_check_mark: Use: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<b>0.9.0</b>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>
  * :x: Instead of: <code>https\://github.com/ryanoasis/nerd-fonts/blob/<del>master</del>/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf</code>


## Other Good Fonts to Patch

Non exhaustive list of fonts that would benefit from being patched but are not included in Nerd Fonts due to their license (proprietary, commercial, etc.):

* [Consolas][consolas]
* [Dank Mono][dank]
* [Input Mono][input-mono]
* [Operator Mono][operator]
* [PragmataPro][pragmatapro]
* [SF Mono][sf-mono]
