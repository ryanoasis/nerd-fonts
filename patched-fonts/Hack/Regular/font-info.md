
# Hack

[![GitHub release](https://img.shields.io/github/release/source-foundry/hack.svg?style=flat)](https://github.com/source-foundry/Hack/releases/latest)
[![Build Status](https://semaphoreci.com/api/v1/sourcefoundry/hack/branches/master/shields_badge.svg)](https://semaphoreci.com/sourcefoundry/hack)
[![Contributors](https://img.shields.io/badge/contributors-128-orange.svg?style=flat)](https://github.com/source-foundry/Hack/blob/master/docs/CONTRIBUTORS.md)
[![Join the chat at https://gitter.im/source-foundry/Hack](https://badges.gitter.im/source-foundry/Hack.svg)](https://gitter.im/source-foundry/Hack)
[![Github All Releases](https://img.shields.io/github/downloads/source-foundry/hack/total.svg?style=flat)](https://github.com/source-foundry/Hack/releases/latest)
[![](https://data.jsdelivr.com/v1/package/npm/hack-font/badge?style=rounded)](https://www.jsdelivr.com/package/npm/hack-font)

Don't like the development noise from the repository but want to keep up with changes? Check out our [gitter Hack channel](https://gitter.im/source-foundry/Hack).  Have a quick question that doesn't require an issue report?  Drop by our [gitter Help channel](https://gitter.im/source-foundry/Help) and ask away.

### A typeface designed for source code

Hack is designed to be a workhorse typeface for source code. It has deep roots in the free, open source typeface community and expands upon the contributions of the [Bitstream Vera](https://www.gnome.org/fonts/) &amp; [DejaVu](http://dejavu-fonts.org/wiki/Main_Page) projects.  The large x-height + wide aperture + low contrast design make it legible at commonly used source code text sizes with a sweet spot that runs in the 8 - 14 range.  The full set of changes to the upstream source are available in the [changelog](CHANGELOG.md).

The project is in active development, and we welcome your input and contributions.  You may view our design objectives and instructions on how to contribute in [CONTRIBUTING.md](CONTRIBUTING.md).

Frequently asked questions are answered in our [FAQ](FAQ.md).

### Contents

* [Features](#overview-of-features)
* [Quick installation](#quick-installation)
* [Package manager installation](#package-managers)
* [Web font usage](#web-font-usage)
* [Additional tools for font customization](#additional-tools-for-hack-font-customization)
* [Resources](#resources)
* [Contributing](#contributing)
* [Build tools](#built-with)
* [Acknowledgments](#acknowledgments)
* [License](#license)


### Specimen

<a href="http://source-foundry.github.io/Hack/font-specimen.html"><img src="img/hack-specimen-3-crunch.png" alt="Hack &mdash; a typeface designed for source code" width="728"></a>

## Overview of features

- **Typeface Name**: Hack
- **Category**: Monospaced
- **Character set support**: ASCII, Latin-1, Latin Extended A, Greek, Cyrillic
- **Powerline Support**: Yes, included by default
- **Included Styles**: Regular, Bold, Italic, Bold Italic

## Quick installation

**NOTE ON FONT UPDATES**
*If you are updating your version of Hack, be sure to remove the previously installed version and clear your font cache first to avoid conflicts that can lead to platform-specific rendering errors.  Many platforms/distros offer package managers that automate this process. We release a Windows installer to automate the install/update process on the Windows platform. See below for additional details.*

### Linux

1. Download the [latest version of Hack][ttf_latest].
2. Extract the files from the archive (`.zip`).
3. Copy the font files to either your system font folder (often `/usr/share/fonts/`) or user font folder (often `~/.local/share/fonts/` or `/usr/local/share/fonts`).
4. Copy the font configuration file in `config/fontconfig/` to either the system font configuration folder (often `/etc/fonts/conf.d/`) or the font user folder (often `~/.config/fontconfig/conf.d`)
5. Clear and regenerate your font cache and indexes with the following command:

```
$ fc-cache -f -v
```

You can confirm that the fonts are installed with the following command:

```
$ fc-list | grep "Hack"
```

Some Linux users may find that font rendering is improved on their distro with [these instructions](https://wiki.manjaro.org/index.php?title=Improve_Font_Rendering).

### macOS

1. Download the [latest version of Hack][ttf_latest].
2. Extract the files from the archive (`.zip`) and click to open them.
3. Follow the instructions from your operating system.
4. Enjoy!


### Windows

[![Hack Windows Installer](https://img.shields.io/badge/Windows-Installer-blue.svg?style=flat-square)](https://github.com/source-foundry/Hack-windows-installer/releases/latest)

The [Hack Windows Installer](https://github.com/source-foundry/Hack-windows-installer/releases/latest) simplifies installation on the Windows platform.  The tool guides you through the installation process and addresses some common rendering issues that occur with font installs/updates on the Windows platform.  This tool is the recommended installation approach for Windows users.


### Chrome/ChromeOS

To use with [Secure Shell](https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo),
edit the following fields in Options:

  - font-family: `"Hack"`
  - user-css: `https://cdn.jsdelivr.net/npm/hack-font@3/build/web/hack.css`

## Package managers

We highly recommend the convenience of a community developed package manager or other auto-updating utility if this is available on your platform. While the package manager releases may be a bit delayed relative to the repository releases, the packages distributed through these package managers were designed to tune and automate font installs and updates on your system.

We are aware of Hack support in the following package managers (with associated package names):

- **Arch Linux**: `ttf-hack`
- **Chocolatey (Windows)**: `hackfont`
- **Debian**: `fonts-hack-ttf`
- **Fedora / CentOS**: `dnf-plugins-core :: heliocastro/hack-fonts :: hack-fonts`
- **Gentoo Linux**: `media-fonts/hack`
- **Homebrew Cask (OS X)**: `caskroom/fonts/font-hack`
- **Open BSD**: `fonts/hack-fonts`
- **OpenSUSE**: `hack-fonts`
- **Ubuntu**: `fonts-hack-ttf`
- **Visual Studio Package Manager**: `hack.font`

For installation issues with Hack packages, please contact the package maintainer directly.


## Web font usage

Hack is available in the woff and woff2 web font formats. **Bold** and *italic* styles are included by default and work out-of-the-box via the `<strong>` and `<em>` tags.

Hack is available through the jsDelivr and cdnjs CDN services:

[![jsDelivr](https://img.shields.io/badge/jsDelivr-Hack_web_font_CDN-blue.svg?style=flat-square)](https://www.jsdelivr.com/package/npm/hack-font)
[![cdnjs](https://img.shields.io/badge/cdnjs-Hack_web_font_CDN-blue.svg?style=flat-square)](https://cdnjs.com/libraries/hack-font)

The following snippets provide examples of Hack web font use through the jsDelivr CDN.  Adjust the URL paths to those provided by cdnjs (click the link above to find the appropriate URL) to switch to the cdnjs CDN.

#### 1. Add Hack to HTML

Include one of the following in the &lt;head&gt; section of your HTML file:

**Subset web fonts**

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/hack-font@3/build/web/hack-subset.css">
```

**Full character set web fonts**

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/hack-font@3/build/web/hack.css">
```

#### 2. Add Hack to CSS


```css
pre, code { font-family: Hack, monospace; }
```

See the [WEBFONT_USAGE.md](docs/WEBFONT_USAGE.md) documentation for additional details, including instructions on how to download, host, and serve the web fonts on your web server.

## Additional tools for Hack font customization

### Customize your build with alternate glyph styles

The [alt-hack](https://github.com/source-foundry/alt-hack) library includes a (growing) collection of alternate glyph styles that can be used to customize your Hack fonts.  Don't like the default zero style?  Swap out the UFO design source with a slashed zero or dotted zero and build new fonts that work better for you.

We welcome contributions of new alternate glyph styles in the alt-hack repository.  Design something new that works well with rest of the typeface and submit a pull request to the alt-hack repository so that others can use it in their custom builds.

Detailed build instructions are available on the [alt-hack repository README.md](https://github.com/source-foundry/alt-hack).  Font renaming instructions to support side-by-side installs with upstream Hack are available below.

### Line spacing adjustments

[font-line](https://github.com/source-foundry/font-line) is a tool that modifies the default line spacing used in the Hack design (20% UPM).

The following gist installs font-line and modifies line spacing for all desktop font files contained in the same directory:

- [linespace.sh](https://gist.github.com/chrissimpkins/f39e85f5f157d839e46168de1b61a174) ([download .zip](https://gist.github.com/chrissimpkins/f39e85f5f157d839e46168de1b61a174/archive/f3f93dea87d64ddc4684a61cbc96ddf79d30824a.zip))

### Install modified and unmodified versions of Hack on the same system

If you modify the upstream Hack source or the released font binaries and would like to install your modified fonts on the same system with the Hack fonts as released here, you can use the [fontname.py Python script](https://github.com/chrissimpkins/fontname.py) to define a new font name in the binary files.  For example, you can install `Hack` on your platform along with a 15% UPM line spacing adjusted version as `Hack Fifteen`.  Modify default glyphs with those in our [alt-hack repository](https://github.com/source-foundry/alt-hack) or design your own and define your creation with any name that you'd like.  Following installation, your renamed fonts should show under the name that you define with the script so that you can switch between any of them as you need.

Usage details and examples are provided on the fontname.py repository README.


## Resources
* [Full specimen](http://source-foundry.github.io/Hack/font-specimen.html)
* [Changelog](CHANGELOG.md)
* [Project website](http://sourcefoundry.org/hack/)
* [Contributors](docs/CONTRIBUTORS.md)


## Contributing

We welcome contributions to Hack!  Please review our [CONTRIBUTING.md](CONTRIBUTING.md) document for details.


## Built With

Hack is built with the following free, open source projects:

- [Font Bakery](https://github.com/googlefonts/fontbakery) - post-compilation modifications
- [fontmake](https://github.com/googlei18n/fontmake) - UFO to ttf compilation
- [fontTools](https://github.com/fonttools/fonttools) - OpenType table read/write
- [font-v](https://github.com/source-foundry/font-v) - font version string editor
- [ink](https://github.com/chrissimpkins/ink) - stream editor for text file templating
- [OpenFV](https://github.com/openfv/openfv) - open specification for semantic typeface versioning
- [sfnt2woff_zopfli](https://github.com/bramstein/sfnt2woff-zopfli) - ttf to woff web font compilation
- [ttfautohint](https://www.freetype.org/ttfautohint/) - ttf instruction sets
- [uni](https://github.com/source-foundry/uni) - Unicode code point search
- [ufodiff](https://github.com/source-foundry/ufodiff) - UFO source diffs
- [ufoLib](https://github.com/unified-font-object/ufoLib) - UFO source file reads/writes/testing
- [ufolint](https://github.com/source-foundry/ufolint) - UFO source file linting for CI testing
- [woff2](https://github.com/google/woff2) - ttf to woff2 web font compilation


## Acknowledgments

We would like to acknowledge and thank the [jsDelivr](https://www.jsdelivr.com/) and [cdnjs](https://cdnjs.com) teams for their support of the Hack project through their free web font CDN services.  We greatly appreciate the tremendous support of open source software development by the [Semaphore CI](https://semaphoreci.com/) team.  Their free CI testing service and rapid, excellent technical support have been tremendous assets for our project. Lastly, a huge thanks go out to all of those who do the unrecognized work to get Hack out there to users so that it is easy to access, install, upgrade, and use.  There are redistribution package managers, review committee members, testers, and others across platforms/distros/applications who perform this thankless work and often go unrecognized.  Your efforts are much appreciated.


## License

**Hack** work is &copy; 2018 Source Foundry Authors. MIT License

**Bitstream Vera Sans Mono** &copy; 2003 Bitstream, Inc. (with Reserved Font Names _Bitstream_ and _Vera_). Bitstream Vera License.

The font binaries are released under a license that permits unlimited print, desktop, web, and software embedding use for commercial and non-commercial applications.

See [LICENSE.md](https://github.com/source-foundry/Hack/blob/master/LICENSE.md) for the full texts of the licenses.



<!-- Link to the latest release archive for README.md file -->

[ttf_latest]: https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip

## Which font?

### TL;DR

* Pick your font family and then select from the `'complete'` directory.
  * If you are on Windows pick a font with the `'Windows Compatible'` suffix.
    * This includes specific tweaks to ensure the font works on Windows, in particular monospace identification and font name length limitations
  * If you are limited to monospaced fonts (because of your terminal, etc) then pick a font with the `'Mono'` suffix.
    * This denotes that the Nerd Font glyphs will be monospaced not necessarily that the entire font will be monospaced

### Ligatures

By the *Nerd Font* policy, the variant with the `'Mono'` suffix is not supposed to have any ligatures.
Use the non-*Mono* variants to have ligatures.

### Explanation

Once you narrow down your font choice of family (`Droid Sans`, `Inconsolata`, etc) and style (`bold`, `italic`, etc) you have 2 main choices:

#### `Option 1: Download already patched font`

 * download an already patched font from the `complete` folder
   * This is most likely the one you want. It includes **all** of the glyphs from all of the glyph sets. Only caution here is that some fonts have glyphs in the _same_ code point so to include everything some had to be moved to alternate code points.

#### `Option 2: Patch your own font`

 * patch your own variations with the various options provided by the font patcher (see each font's readme for full list of combinations available)
   * This is the option you want if the font you use is _not_ already included or you want maximum control of what's included
   * This contains a list of _all permutations_ of the various glyphs. E.g. You want the font with only [Octicons][octicons] or you want the font with just [Font Awesome][font-awesome] and [Devicons][vorillaz-devicons]. The goal is to provide every combination possible in this folder.


For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)


[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/primer/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a

