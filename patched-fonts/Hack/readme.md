
# Hack  [![Contributors](https://img.shields.io/badge/contributors-104-orange.svg?style=flat)] (https://github.com/chrissimpkins/Hack/blob/master/CONTRIBUTORS.md)
### A typeface designed for source code

<a href="https://sourcefoundry.org/hack/"><img src="img/hack-specimen-2.png" alt="Hack-a monospaced sans-serif font for source code" width="728"></a>
<br>
<a href="https://sourcefoundry.org/hack/"><img src="img/c-mockup.png" alt="C source code example" width="728"></a>
<br>
<a href="https://sourcefoundry.org/hack/"><img src="img/python-mockup.png" alt="Python source code example" width="728"></a>
<br>
<a href="https://sourcefoundry.org/hack/"><img src="img/js-mockup.png" alt="JavaScript source code example" width="728"></a>
<br>
<a href="https://sourcefoundry.org/hack/playground.html"><img src="img/font-playground.png" alt="Click to Try Hack in the Font Playground" width="728"></a>

## Contents

- [About](https://github.com/chrissimpkins/Hack#about)
- [Typeface Data](https://github.com/chrissimpkins/Hack#data)
- [Type Specimen](http://chrissimpkins.github.io/Hack/font-specimen.html)
- [Desktop Installation](https://github.com/chrissimpkins/Hack#desktop-installation)
- [Web Font Usage](https://github.com/chrissimpkins/Hack#webfont-usage)
	- [Hack by CDN](https://github.com/chrissimpkins/Hack#hack-by-cdn)
	- [Self-Hosted Font Files](https://github.com/chrissimpkins/Hack#host-hack-font-files-on-your-server)
- [Build Binary List](https://github.com/chrissimpkins/Hack#build-binaries)
- [Changelog](https://github.com/chrissimpkins/Hack/blob/master/CHANGELOG.md)
- [Contributors](https://github.com/chrissimpkins/Hack/blob/master/CONTRIBUTORS.md)
- [License](https://github.com/chrissimpkins/Hack/blob/master/LICENSE.md)

### New!

You can now modify the default line spacing in Hack fonts with our new `font-line` tool.  Hack uses a default value of 20% UPM for line spacing.  Decrease the value to tighten the spacing, increase it to widen your spacing.  Modification details are available on the `font-line` repository:

https://github.com/source-foundry/font-line

or [use one of our handy shell scripts](https://github.com/chrissimpkins/Hack/tree/master/tools/line-spacing) that automates the `font-line` install and line spacing modification process for a range of line spacing % UPM values between 10 - 30%.  Select the script that fits your needs and execute it in the download directory that contains your .ttf and/or .otf font files **before you install them**.


### About

No frills. No gimmicks.  Hack is hand groomed and optically balanced to be a workhorse face for code.

It has deep roots in the libre, open source typeface community and expands upon the contributions of the Bitstream Vera &amp; DejaVu projects.  The face has been re-designed with a larger glyph set, modifications of the original glyph shapes (including distinct point styles and semi-bold punctuation weight in the regular set to make analphabetic characters less transparent), and meticulous attention to metrics (including numerous spacing adjustments to improve the rhythm of the face and the legibility of code at small text sizes).  The large x-height + wide aperture + low contrast design combined with PostScript hinting/hint replacement programs and a TrueType instruction set make it highly legible at commonly used source code text sizes with a sweet spot that runs in the 8px - 12px range on modern desktop and laptop monitors.  Combine it with an HD monitor and you can comfortably work at 6 or 7px sizes. The full set of changes are available in the [changelog](https://github.com/chrissimpkins/Hack/blob/master/CHANGELOG.md).

The font binaries are released under a license that permits unlimited print, desktop, and web use for commercial and non-commercial applications.  It may be embedded and distributed in documents and applications.  The source is released in the widely supported UFO format and may be modified to derive new typeface branches.  The full text of the license is available in [LICENSE.md](https://github.com/chrissimpkins/Hack/blob/master/LICENSE.md)

### Data

- **Typeface Name**: Hack
- **Category**: Monospaced
- **Powerline Support**: Yes
- **Glyph Number**: 1561
- **Included Styles**: Regular, Bold, Italic, Bold Italic


### Specimen

<a href="http://chrissimpkins.github.io/Hack/font-specimen.html"><img src="img/hack-waterfall.png" alt="Hack font specimen" width="728"></a>

Click the image for the full type specimen.


### Desktop Installation

Hack is available for download in either [OTF][otf_latest] or [TTF][ttf_latest] formats. The best format and install approach depends on your operating system. If you do not know which format is optimal for your system, the TTF files should be used as your default.

Because Hack is under active development and updates are released frequently we highly recommended using a package manager or other auto-updating utility.  While the package manager releases may be a bit delayed relative to the repository releases, the package managers automate and simplify font updates on your system.  Please note that the Hack packages in these package managers are not maintained by the Hack project developers.  If you come across a problem with the release schedule in your package manager, please report it directly to the respective package maintainer on your platform.

#### OS X

The easiest way to install and update Hack on OS X is to use the [Homebrew](http://brew.sh/) package manager. To install the fonts on OS X use the command:

    $ brew cask install caskroom/fonts/font-hack


**OS X Users Please Note**: There has been a change in the Homebrew-Cask system that requires an update of `brew-cask`.  If you encounter an error during your Hack install attempt, please execute the following command and then install with the above command again:

```
$ brew uninstall --force brew-cask && brew update
```

Please see [issue report #169](https://github.com/chrissimpkins/Hack/issues/169) for additional details.

To install the fonts manually you may use either the [OTF][otf_latest] or [TTF][ttf_latest] formats. Download the zip file and extract it. Double clicking each of the font files will open a preview in [Font Book](https://support.apple.com/en-us/HT201749) and the "Install Font" button will copy the font to the correct system location.

#### Linux / BSD

Most Linux and BSD systems can handle either [TTF][ttf_latest] or [OTF][otf_latest] format fonts. We are aware of package manager support on the following distros:

* *Arch Linux*: install the [ttf-hack](https://www.archlinux.org/packages/community/any/ttf-hack/) package from the community repository ([otf-hack](https://aur.archlinux.org/packages/otf-hack/) is available in the AUR):

        $ pacman -S ttf-hack

* *Fedora / CentOS*: install from [copr](https://copr.fedoraproject.org/coprs/heliocastro/hack-fonts/). For Fedora >= 23:

        $ dnf install dnf-plugins-core
        $ dnf copr enable heliocastro/hack-fonts
        $ dnf install hack-fonts

  For Fedora <= 22 and CentOS <= 7:

        $ yum install yum-plugin-copr
        $ yum copr enable heliocastro/hack-fonts

* *Gentoo Linux*: install the [media-fonts/hack](https://packages.gentoo.org/packages/media-fonts/hack) package from the main Portage tree:

        $ emerge -av media-fonts/hack

* *Ubuntu / Debian*: install either [fonts-hack-ttf](http://packages.ubuntu.com/xenial/fonts-hack-ttf) or [fonts-hack-otf](http://packages.ubuntu.com/xenial/fonts-hack-otf). Packages are currently available for Ubuntu Xenial or later and the Debian unstable branch:

        $ apt-get install fonts-hack-ttf

   For older systems either manually download and install one of the deb packages or see the [manual install instructions](https://wiki.ubuntu.com/Fonts) and [issue report #189](https://github.com/chrissimpkins/Hack/issues/189).

For other systems, check for packages using your distro's package manager search function. If no packages exist download your preferred format and copy the font files to either your system font folder (often `/usr/share/fonts/`) or user font folder (often `~/.local/share/fonts/`). On systems using Fontconfig you may need to regenerate the font caches and indexes after copying the files (e.g. `fc-cache -s; mkfontscale <install_path>; mkfontdir <install_path>`).


#### Windows

On Windows, the [TTF][ttf_latest] format files are recommended. Download the zip, extract the files, and double click on them to open them in the font previewer. Clicking the "Install" button will then copy them to the correct place on your system.

@texhex created a [multi-font installer for Windows 7 - Windows 10](https://github.com/texhex/OSFontPack) that is actively maintained and includes the current release of the Hack fonts.  Windows has a complex font caching mechanism that has led to problems for many users who try to install a new version of the Hack fonts over previously installed versions.  Michael's tool addresses these caching issues.  See [issue report #177](https://github.com/chrissimpkins/Hack/issues/177) for details about the tool and check out his repository for more information.

**Windows Users Please Note**: If you have previously installed the Hack fonts on your Windows system and are having issues with installation of a newer version, please remove the old Hack fonts before you attempt the new font install.  Either navigate to `c:\windows\fonts` and delete all Hack fonts in the directory, or open the directory path `Control Panel\Appearance and Personalization\Fonts`, right click on each of the Hack fonts and delete them.  See [issue report #152](https://github.com/chrissimpkins/Hack/issues/152) and [issue report #177](https://github.com/chrissimpkins/Hack/issues/177) for additional information.


### Webfont Usage

Hack webfonts are released in eot, ttf, woff, and woff2 formats.  They include a complete Hack character set build and a smaller [basic Latin](http://www.unicode.org/charts/PDF/U0000.pdf) + [Latin-1 supplement](http://www.unicode.org/charts/PDF/U0080.pdf) Unicode character block build.  The latter build set is smaller in size and is intended to improve page loading times when you do not need the entire Hack character set.

You can view the rendering of the webfonts at a range of sizes on the [Hack type specimen](http://chrissimpkins.github.io/Hack/font-specimen.html).

#### Hack by CDN

Thanks to the generous gang at [jsDelivr](https://github.com/jsdelivr/jsdelivr), you can use a CDN to include Hack on your site with a single stylesheet link in the head of your HTML files.  There is no need to download font files from the repository or serve them from your web server.

Average latency, average uptime, and total downtime data for jsDelivr vs. other popular CDN are available for [http](http://www.cdnperf.com/#jsdelivr,cdnjs,google,yandex,microsoft,jquery,bootstrapcdn/http/30) and [https](http://www.cdnperf.com/#jsdelivr,cdnjs,google,yandex,microsoft,jquery,bootstrapcdn/https/30) protocols.  Please understand that this is a free CDN resource and, while it does have industry backing, it could go away at anytime.  If this is a critical issue for your use scenario, please purchase your own CDN plan and host the webfonts yourself.

Include **one** of the following lines in the `<head>` section of your site's HTML:

##### Basic Latin + Latin-1 Supplement Character Set

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-hack/2.019/css/hack.min.css">
```

##### Full Character Set

```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-hack/2.019/css/hack-extended.min.css">
```

Then style your text by including `Hack` in the appropriate `font-family` property of your CSS.  For example:

```css
code {
	font-family: Hack, monospace;
}
```

The **bold**, *oblique*, and <b><i>bold oblique</i></b> text styles are formatted with HTML using `<b>text block</b>`, `<i>text block</i>`, and `<b><i>text block</i></b>` HTML tags, respectively.


#### Host Hack Font Files on Your Server

Download the entire web font archive at this link:

- [Download Web Font Archive (all)](https://github.com/chrissimpkins/Hack/releases/download/v2.019/Hack-v2_019-webfonts.zip)

Or select the fonts that you need in subdirectories of the build directory:

- [Download .eot fonts](https://github.com/chrissimpkins/Hack/tree/master/build/webfonts/fonts/eot)
- [Download .ttf fonts](https://github.com/chrissimpkins/Hack/tree/master/build/webfonts/fonts/web-ttf) - **Note**: these differ from the desktop versions and are intended for web use
- [Download .woff fonts](https://github.com/chrissimpkins/Hack/tree/master/build/webfonts/fonts/woff)
- [Download .woff2 fonts](https://github.com/chrissimpkins/Hack/tree/master/build/webfonts/fonts/woff2)

The web font archive download is structured like this:

```
.
├── css
│   ├── hack-extended.css
│   ├── hack-extended.min.css
│   ├── hack.css
│   └── hack.min.css
└── fonts
    ├── eot
    │   ├── hack-bold-webfont.eot
    │   ├── hack-bolditalic-webfont.eot
    │   ├── hack-regular-webfont.eot
    │   ├── hack-italic-webfont.eot
    │   └── latin
    │       ├── hack-bold-latin-webfont.eot
    │       ├── hack-bolditalic-latin-webfont.eot
    │       ├── hack-regular-latin-webfont.eot
    │       └── hack-italic-latin-webfont.eot
    ├── ttf
    │   ├── hack-bold-webfont.ttf
    │   ├── hack-bolditalic-webfont.ttf
    │   ├── hack-regular-webfont.ttf
    │   ├── hack-italic-webfont.ttf
    │   └── latin
    │       ├── hack-bold-latin-webfont.ttf
    │       ├── hack-bolditalic-latin-webfont.ttf
    │       ├── hack-regular-latin-webfont.ttf
    │       └── hack-italic-latin-webfont.ttf
    ├── woff
    │   ├── hack-bold-webfont.woff
    │   ├── hack-bolditalic-webfont.woff
    │   ├── hack-regular-webfont.woff
    │   ├── hack-italic-webfont.woff
    │   └── latin
    │       ├── hack-bold-latin-webfont.woff
    │       ├── hack-bolditalic-latin-webfont.woff
    │       ├── hack-regular-latin-webfont.woff
    │       └── hack-italic-latin-webfont.woff
    └── woff2
        ├── hack-bold-webfont.woff2
        ├── hack-bolditalic-webfont.woff2
        ├── hack-regular-webfont.woff2
        ├── hack-italic-webfont.woff2
        └── latin
            ├── hack-bold-latin-webfont.woff2
            ├── hack-bolditalic-latin-webfont.woff2
            ├── hack-regular-latin-webfont.woff2
            └── hack-italic-latin-webfont.woff2
```

Push the `css` and `fonts` directories to your web server, then import **one** of the included CSS files in the `head` section of the HTML where you would like to use it.

Replace `path/to/` with the actual path to your css directory.

##### Basic Latin + Latin-1 Supplement Character Set

```html
<link rel="stylesheet" href="path/to/css/hack.min.css">
```


##### Full Character Set

```html
<link rel="stylesheet" href="path/to/css/hack-extended.min.css">
```

You can alter the path to the Hack files (e.g. place the files in a `hack` resource subdirectory); however, please make sure that you preserve the relative file paths included in the release archive (*or be prepared to modify the paths to the font files*).

Then style your text by including `Hack` in the appropriate `font-family` property of your CSS.  For example:

```css
code {
	font-family: Hack, monospace;
}
```

The **bold**, *oblique*, and <b><i>bold oblique</i></b> text styles are formatted with HTML using `<b>text block</b>`, `<i>text block</i>`, and `<b><i>text block</i></b>` HTML tags, respectively.


##### Webfont Caching and gzip Compression with Cloudflare

*The following information applies to both paid and free accounts*

If you use [Cloudflare](https://cloudflare.com), woff files are cached by default.  To cache the remaining webfont files, add a new page rule for the path to your fonts directory:

```
yoursite.com/path/to/fonts/
```

 and set the rule to `Cache Everything`.

 Cloudflare automates gzip compression of ttf, eot, woff, and svg font files.  The service does not gzip compress woff2 files.


### Build Binaries

#### Desktop Fonts

##### TTF Builds
- `build/ttf/Hack-Regular.ttf`
- `build/ttf/Hack-Bold.ttf`
- `build/ttf/Hack-Italic.ttf`
- `build/ttf/Hack-BoldItalic.ttf`

##### OTF Builds
- `build/otf/Hack-Regular.otf`
- `build/otf/Hack-Bold.otf`
- `build/otf/Hack-Italic.otf`
- `build/otf/Hack-BoldItalic.otf`

#### Web Fonts

##### EOT
- `build/webfonts/fonts/eot/hack-regular-webfont.eot`
- `build/webfonts/fonts/eot/hack-bold-webfont.eot`
- `build/webfonts/fonts/eot/hack-italic-webfont.eot`
- `build/webfonts/fonts/eot/hack-bolditalic-webfont.eot`
- `build/webfonts/fonts/eot/latin/hack-regular-latin-webfont.eot`
- `build/webfonts/fonts/eot/latin/hack-bold-latin-webfont.eot`
- `build/webfonts/fonts/eot/latin/hack-italic-latin-webfont.eot`
- `build/webfonts/fonts/eot/latin/hack-bolditalic-latin-webfont.eot`

##### Web TTF
- `build/webfonts/fonts/web-ttf/hack-regular-webfont.ttf`
- `build/webfonts/fonts/web-ttf/hack-bold-webfont.ttf`
- `build/webfonts/fonts/web-ttf/hack-italic-webfont.ttf`
- `build/webfonts/fonts/web-ttf/hack-bolditalic-webfont.ttf`
- `build/webfonts/fonts/web-ttf/latin/hack-regular-latin-webfont.ttf`
- `build/webfonts/fonts/web-ttf/latin/hack-bold-latin-webfont.ttf`
- `build/webfonts/fonts/web-ttf/latin/hack-italic-latin-webfont.ttf`
- `build/webfonts/fonts/web-ttf/latin/hack-bolditalic-latin-webfont.ttf`

##### WOFF
- `build/webfonts/fonts/woff/hack-regular-webfont.woff`
- `build/webfonts/fonts/woff/hack-bold-webfont.woff`
- `build/webfonts/fonts/woff/hack-italic-webfont.woff`
- `build/webfonts/fonts/woff/hack-bolditalic-webfont.woff`
- `build/webfonts/fonts/woff/latin/hack-regular-latin-webfont.woff`
- `build/webfonts/fonts/woff/latin/hack-bold-latin-webfont.woff`
- `build/webfonts/fonts/woff/latin/hack-italic-latin-webfont.woff`
- `build/webfonts/fonts/woff/latin/hack-bolditalic-latin-webfont.woff`

##### WOFF2
- `build/webfonts/fonts/woff2/hack-regular-webfont.woff2`
- `build/webfonts/fonts/woff2/hack-bold-webfont.woff2`
- `build/webfonts/fonts/woff2/hack-italic-webfont.woff2`
- `build/webfonts/fonts/woff2/hack-bolditalic-webfont.woff2`
- `build/webfonts/fonts/woff2/latin/hack-regular-latin-webfont.woff2`
- `build/webfonts/fonts/woff2/latin/hack-bold-latin-webfont.woff2`
- `build/webfonts/fonts/woff2/latin/hack-italic-latin-webfont.woff2`
- `build/webfonts/fonts/woff2/latin/hack-bolditalic-latin-webfont.woff2`


### Changes

Changes are in the [Changelog](https://github.com/chrissimpkins/Hack/blob/master/CHANGELOG.md).


### License

Hack Copyright 2015-2016, Christopher Simpkins with Reserved Font Name Hack.<br>
Hack Open Font License & Bitstream Vera License

Bitstream Vera Sans Mono Copyright 2003 Bitstream, Inc. with Reserved Font Names Bitstream and Vera<br>
Bitstream Vera License

The full texts of these licenses are available in [LICENSE.md](https://github.com/chrissimpkins/Hack/blob/master/LICENSE.md)

  [otf_latest]:https://github.com/chrissimpkins/Hack/releases/download/v2.019/Hack-v2_019-otf.zip
  [ttf_latest]: https://github.com/chrissimpkins/Hack/releases/download/v2.019/Hack-v2_019-ttf.zip


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


## Variations (Combinations)

> The combinations and total number of combinations are provided here for reference if you want to create your own variation of a patched Nerd Font.

### Why aren't all variations included ?

Combinations are no longer included by default because of the large inflation in size it caused the Repository _and_ the amount of time it takes to rebuild all of the combinations. This issue would exponentially get worse as the numbers of Fonts and Glyph Sets provided increase.


