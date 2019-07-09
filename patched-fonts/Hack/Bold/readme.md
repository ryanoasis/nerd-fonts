
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


## Variations (Combinations)

> The combinations and total number of combinations are provided here for reference if you want to create your own variation of a patched Nerd Font.

### Why aren't all variations included ?

Combinations are no longer included by default because of the large inflation in size it caused the Repository _and_ the amount of time it takes to rebuild all of the combinations. This issue would exponentially get worse as the numbers of Fonts and Glyph Sets provided increase.


```sh
# 2046 Possible Combinations:

./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --windows
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesome
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --octicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontlinux
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --pomicons
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --powersymbols
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --weather --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --weather
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs --material
./font-patcher Hack-Bold.ttf  --use-single-width-glyphs
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --octicons
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontlinux
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --pomicons
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesome --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesome --material
./font-patcher Hack-Bold.ttf  --windows --fontawesome
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --octicons --pomicons
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --octicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --octicons --weather
./font-patcher Hack-Bold.ttf  --windows --octicons --material
./font-patcher Hack-Bold.ttf  --windows --octicons
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux --weather
./font-patcher Hack-Bold.ttf  --windows --fontlinux --material
./font-patcher Hack-Bold.ttf  --windows --fontlinux
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --windows --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --windows --pomicons --weather
./font-patcher Hack-Bold.ttf  --windows --pomicons --material
./font-patcher Hack-Bold.ttf  --windows --pomicons
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --windows --powerlineextra --material
./font-patcher Hack-Bold.ttf  --windows --powerlineextra
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --windows --fontawesomeextension
./font-patcher Hack-Bold.ttf  --windows --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --windows --powersymbols --weather
./font-patcher Hack-Bold.ttf  --windows --powersymbols --material
./font-patcher Hack-Bold.ttf  --windows --powersymbols
./font-patcher Hack-Bold.ttf  --windows --weather --material
./font-patcher Hack-Bold.ttf  --windows --weather
./font-patcher Hack-Bold.ttf  --windows --material
./font-patcher Hack-Bold.ttf  --windows
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --pomicons
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --weather
./font-patcher Hack-Bold.ttf  --fontawesome --octicons --material
./font-patcher Hack-Bold.ttf  --fontawesome --octicons
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontlinux
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --weather
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons --material
./font-patcher Hack-Bold.ttf  --fontawesome --pomicons
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontawesome --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesome --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontawesome --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesome --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesome --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesome --weather --material
./font-patcher Hack-Bold.ttf  --fontawesome --weather
./font-patcher Hack-Bold.ttf  --fontawesome --material
./font-patcher Hack-Bold.ttf  --fontawesome
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --weather
./font-patcher Hack-Bold.ttf  --octicons --fontlinux --material
./font-patcher Hack-Bold.ttf  --octicons --fontlinux
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons --weather
./font-patcher Hack-Bold.ttf  --octicons --pomicons --material
./font-patcher Hack-Bold.ttf  --octicons --pomicons
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --octicons --powerlineextra
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --octicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --octicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --octicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --octicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --octicons --powersymbols
./font-patcher Hack-Bold.ttf  --octicons --weather --material
./font-patcher Hack-Bold.ttf  --octicons --weather
./font-patcher Hack-Bold.ttf  --octicons --material
./font-patcher Hack-Bold.ttf  --octicons
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --weather
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons --material
./font-patcher Hack-Bold.ttf  --fontlinux --pomicons
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra --material
./font-patcher Hack-Bold.ttf  --fontlinux --powerlineextra
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontlinux --fontawesomeextension
./font-patcher Hack-Bold.ttf  --fontlinux --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontlinux --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontlinux --powersymbols
./font-patcher Hack-Bold.ttf  --fontlinux --weather --material
./font-patcher Hack-Bold.ttf  --fontlinux --weather
./font-patcher Hack-Bold.ttf  --fontlinux --material
./font-patcher Hack-Bold.ttf  --fontlinux
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra --material
./font-patcher Hack-Bold.ttf  --pomicons --powerlineextra
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --pomicons --fontawesomeextension
./font-patcher Hack-Bold.ttf  --pomicons --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --powersymbols --weather
./font-patcher Hack-Bold.ttf  --pomicons --powersymbols --material
./font-patcher Hack-Bold.ttf  --pomicons --powersymbols
./font-patcher Hack-Bold.ttf  --pomicons --weather --material
./font-patcher Hack-Bold.ttf  --pomicons --weather
./font-patcher Hack-Bold.ttf  --pomicons --material
./font-patcher Hack-Bold.ttf  --pomicons
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --powerlineextra --fontawesomeextension
./font-patcher Hack-Bold.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --powerlineextra --powersymbols --weather
./font-patcher Hack-Bold.ttf  --powerlineextra --powersymbols --material
./font-patcher Hack-Bold.ttf  --powerlineextra --powersymbols
./font-patcher Hack-Bold.ttf  --powerlineextra --weather --material
./font-patcher Hack-Bold.ttf  --powerlineextra --weather
./font-patcher Hack-Bold.ttf  --powerlineextra --material
./font-patcher Hack-Bold.ttf  --powerlineextra
./font-patcher Hack-Bold.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher Hack-Bold.ttf  --fontawesomeextension --powersymbols --material
./font-patcher Hack-Bold.ttf  --fontawesomeextension --powersymbols
./font-patcher Hack-Bold.ttf  --fontawesomeextension --weather --material
./font-patcher Hack-Bold.ttf  --fontawesomeextension --weather
./font-patcher Hack-Bold.ttf  --fontawesomeextension --material
./font-patcher Hack-Bold.ttf  --fontawesomeextension
./font-patcher Hack-Bold.ttf  --powersymbols --weather --material
./font-patcher Hack-Bold.ttf  --powersymbols --weather
./font-patcher Hack-Bold.ttf  --powersymbols --material
./font-patcher Hack-Bold.ttf  --powersymbols
./font-patcher Hack-Bold.ttf  --weather --material
./font-patcher Hack-Bold.ttf  --weather
./font-patcher Hack-Bold.ttf  --material
```