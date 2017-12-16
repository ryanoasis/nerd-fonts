
# Hack

[![Build Status](https://travis-ci.org/source-foundry/Hack.svg?branch=master)](https://travis-ci.org/source-foundry/Hack) [![Contributors](https://img.shields.io/badge/contributors-121-orange.svg?style=flat)](https://github.com/source-foundry/Hack/blob/master/docs/CONTRIBUTORS.md)

### A typeface designed for source code

Hack is designed to be a workhorse typeface for source code. It has deep roots in the free, open source typeface community and expands upon the contributions of the [Bitstream Vera](https://www.gnome.org/fonts/) &amp; [DejaVu](http://dejavu-fonts.org/wiki/Main_Page) projects.  The large x-height + wide aperture + low contrast design make it legible at commonly used source code text sizes with a sweet spot that runs in the 8px - 14px range.  The full set of changes to the upstream source are available in the [changelog](CHANGELOG.md).

The project is in active development and we welcome your input and contributions.  You may view our design objectives and contributing instructions in [CONTRIBUTING.md](CONTRIBUTING.md).

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

<a href="http://source-foundry.github.io/Hack/font-specimen.html"><img src="img/hack-specimen-2.png" alt="Hack &mdash; a typeface designed for source code" width="728"></a>

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

1. Download the [latest version of Hack](ttf_latest)
2. Extract the files from the archive (`.zip`)
3. Copy the font files to either your system font folder (often `/usr/share/fonts/`) or user font folder (often `~/.local/share/fonts/`)
4. Clear and regenerate your font cache and indexes with the following set of commands:

```
$ fc-cache
$ mkfontscale <install_path>
$ mkfontdir <install_path>
```

### Mac OS X

1. Download the [latest version of Hack][ttf_latest].
2. Extract the files from the archive (`.zip`) and click to open them.
3. Follow the instructions from your operating system.
4. Enjoy!


### Windows

To simplify the installation process on Windows systems, we've created the [Hack Windows Installer](https://github.com/source-foundry/Hack-windows-installer/releases/latest) which will guide you through the installation process. This installer addresses a number of common rendering issues that occur with font installs/updates on the Windows platform and is the recommended approach for Windows users.


### Chrome/ChromeOS

To use with [Secure Shell](https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo),
edit the following fields in Options:

  - font-family: `"Hack"`
  - user-css: `https://cdn.jsdelivr.net/font-hack/2.020/css/hack-extended.min.css`

## Package managers

We highly recommend the convenience of a community developed package manager or other auto-updating utility if this is available on your platform. While the package manager releases may be a bit delayed relative to the repository releases, the packages distributed through these package managers were designed to tune and automate font installs and updates on your system.

We are aware of Hack support in the following package managers (with associated package names):

- **Arch Linux**: `ttf-hack`
- **Chocolatey (Windows)**: `hackfont`
- **Debian**: `fonts-hack-ttf`
- **Fedora / CentOS**: `dnf-plugins-core :: heliocastro/hack-fonts :: hack-fonts`
- **Gentoo Linux**: `media-fonts/hack`
- **Homebrew Cask (OS X)**: `caskroom/fonts/font-hack`
- **OpenSUSE**: `hack-fonts`
- **Ubuntu**: `fonts-hack-ttf`
- **Visual Studio Package Manager**: `hack.font`

For installation issues with Hack packages, please contact the package maintainer directly.


## Web font usage

Hack is available in the woff and woff2 web font formats. Use the snippets below to quickly include Hack via a CDN. **Bold** and *italic* styles are included by default and work out-of-the-box via the `<strong>` and `<em>` tags.

#### 1. Add Hack to HTML

Include one of the following in the &lt;head&gt; section of your HTML file:

**Subset web fonts**

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-hack/2.020/css/hack.min.css">
```

**Full character set web fonts**

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-hack/2.020/css/hack-extended.min.css">
```

#### 2. Add Hack to CSS


```css
pre, code { font-family: Hack, monospace; }
```

See the [WEBFONT_USAGE.md](docs/WEBFONT_USAGE.md) documentation for additional details, including instructions on how to download, host, and serve the web fonts on your own web server.

## Additional tools for Hack font customization

### Customize your build with alternate glyph styles

The [alt-hack](https://github.com/source-foundry/alt-hack) library includes a (growing) collection of alternate glyph styles that can be used to customize your Hack fonts.  Don't like the default zero style?  Swap out the UFO design source with a slashed zero or dotted zero and build new fonts that work better for you.

Contributions of new glyph styles are welcomed in the alt-hack repository.  Design something new that works well with rest of the typeface and submit a pull request to the alt-hack repository so that others can use it in their own custom builds.

Detailed build instructions are available on the [alt-hack repository README.md](https://github.com/source-foundry/alt-hack).

### Line spacing adjustments

[font-line](https://github.com/source-foundry/font-line) is a tool that lets you easily modify the default line spacing that is used in the Hack design (20% UPM).

The following gist installs font-line and modifies line spacing for all ttf and otf fonts in the working directory where the script is located for the percent UPM value that you define at the top of the script:

- [linespace.sh](https://gist.github.com/chrissimpkins/f39e85f5f157d839e46168de1b61a174) ([download .zip](https://gist.github.com/chrissimpkins/f39e85f5f157d839e46168de1b61a174/archive/f3f93dea87d64ddc4684a61cbc96ddf79d30824a.zip))


## Resources
* [Full specimen](http://source-foundry.github.io/Hack/font-specimen.html)
* [Changelog](CHANGELOG.md)
* [Project website](http://sourcefoundry.org/hack/)
* [Contributors](docs/CONTRIBUTORS.md)


## Contributing

Contributions to the Hack project are welcomed.  Please review our [CONTRIBUTING.md](CONTRIBUTING.md) document for details.


## Built With

Hack is built with the following free, open source tools:

- [Font Bakery](https://github.com/googlefonts/fontbakery) - post-compilation modifications
- [fontmake](https://github.com/googlei18n/fontmake) - UFO to ttf compilation
- [font-v](https://github.com/source-foundry/font-v) - font versioning, git commit sha1 short string labeling of font versions
- [sfnt2woff_zopfli](https://github.com/bramstein/sfnt2woff-zopfli) - ttf to woff web font compilation
- [ttfautohint](https://www.freetype.org/ttfautohint/) - ttf instruction sets
- [ufodiff](https://github.com/source-foundry/ufodiff) - UFO source diffs
- [ufoLib](https://github.com/unified-font-object/ufoLib) - UFO source file reads/writes/testing
- [ufolint](https://github.com/source-foundry/ufolint) - UFO source file linting for CI testing
- [woff2](https://github.com/google/woff2) - ttf to woff2 web font compilation


## Acknowledgments

We would like to acknowledge and thank the [jsDelivr](https://www.jsdelivr.com/) team for their excellent web font CDN service and outstanding Hack project support.


## License

**Hack** work is &copy; 2017 Source Foundry Authors. MIT License

**Bitstream Vera Sans Mono** &copy; 2003 Bitstream, Inc. (with Reserved Font Names _Bitstream_ and _Vera_). Bitstream Vera License.

The font binaries are released under a license that permits unlimited print, desktop, web, and software embedding use for commercial and non-commercial applications.

See [LICENSE.md](https://github.com/source-foundry/Hack/blob/master/LICENSE.md) for the full texts of the licenses.



<!-- Link to the latest release archive for README.md file -->

[ttf_latest]: https://github.com/chrissimpkins/Hack/releases/download/v2.020/Hack-v2_020-ttf.zip


## Why `Knack` and not `Hack`?

What's in a name? The reason for the name change is to comply with the SIL Open Font License (OFL), in partcular the [Reserved Font Name mechanism][SIL-RFN]

Some fonts have parts of their name "reserved" per the [Reserved Font Name mechanism][SIL-RFN]:
> No Modified Version of the Font Software may use the Reserved Font
> Name(s) unless explicit written permission is granted by the corresponding
> Copyright Holder. This restriction only applies to the primary font name as
> presented to the users.

- The main goals seem to be to: `Avoid collisions`, `Protect authors`, `Minimize support`, and `Encourage derivatives`

See the [Reserved Font Name section][SIL-RFN] for additional information

## Which font?

### TL;DR

* Pick your font family and then select from the `'complete'` directory.
  * If you are on Windows pick a font with the `'Windows Compatible'` suffix.
    * This includes specific tweaks to ensure the font works on Windows, in particular monospace identification and font name length limitations
  * If you are limited to monospaced fonts (because of your terminal, etc) then pick a font with the `'Mono'` suffix.
    * This denotes that the Nerd Font glyphs will be monospaced not necessarily that the entire font will be monospaced

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

