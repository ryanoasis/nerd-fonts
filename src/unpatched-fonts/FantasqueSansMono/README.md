Fantasque Sans Mono
===================

A programming font, designed with functionality in mind, and with some
wibbly-wobbly handwriting-like fuzziness that makes it unassumingly cool.
[Download](https://github.com/belluzj/fantasque-sans/releases/latest) or 
see [installation instructions](#installation).


![](Specimen/urxvt13.png)

Previously known as *Cosmic Sans Neue Mono*. It
appeared that [similar names were already in use for other
fonts](https://github.com/belluzj/cosmic-sans-neue/issues/16), and that
people tended to extend their instinctive hatred of Comic Sans to this very
font of mine (which of course can only be *loved*). Why the previous name?
Here is my original explanation:

> The name comes from my realization that at some point it looked like the
> mutant child of Comic Sans and Helvetica Neue. Hopefully it is not the
> case any more.

Inspirational sources include Inconsolata and Monaco. I have also been using
Consolas a lot in my programming life, so it may have some points in common.

![](Specimen/kdevelop11.png)
![](Specimen/sublime11.png)

Weights, variants and glyph coverage
------------------------------------

The font includes a bold version, with the same metrics as the regular one.
Both versions include the same ranges of characters : latin letters, some
accented glyphs (quite a lot), some greek letters, some arrows.

Please note that I have not tested all of the glyphs I have drawn (some letters
have those two layers of crazy accents that I have never witnessed before), so
it might look bad in some cases. Please report these problems: see next section.

It also features a good italic version, which I designed in a fashion similar
to Consolas' italic version, with new glyph designs, not just an added slant.

![](Specimen/vim21.png)

Stylistic set(s)
----------------

### `ss01`: nondescript `k`

No ~~distractive~~ lovely loop.
[Get the pre-activated version here](https://github.com/belluzj/fantasque-sans/releases/download/1.8.0/FantasqueSansMono-NoLoopK.zip)
or see the [issue #67](https://github.com/belluzj/fantasque-sans/issues/67)
for techniques to activate the stylistic set.

![](Specimen/noloopk.png)

Author and license
------------------

Created by Jany Belluz \<jany.belluz AT hotmail.fr\>

Licensed under the SIL Open Font License (see [LICENSE.txt](LICENSE.txt)).

Please send me an e-mail or [report an issue on
Github](http://github.com/belluzj/cosmic-sans-neue/issues) if you stumble upon
bad design or rendering problems (with screen shot if possible), or if you need
more characters, or if you want to compliment me (I love compliments).

Installation
------------

You can [download the latest version](https://github.com/belluzj/fantasque-sans/releases/latest)
and install it by hand. In the `NoLoopK` variant, the looped lowercase `k` is 
replaced with a straight version. The `LargeLineHeight` variant is especially 
useful for users of accented capitals. For more info, see the [CHANGELOG](CHANGELOG.md).

Automatic installation on macOS with [homebrew](https://brew.sh):

    brew tap homebrew/cask-fonts #You only need to do this once for cask-fonts
    brew cask install font-fantasque-sans-mono

Instructions for other platforms might follow.

Building installable font files
-------------------------------

The build process requires:
* FontForge with python scripting support,
* `ttfautohint`
* `sfnt2woff` (from the `woff-tools` package on Ubuntu)
* `woff2_compress` from [the Google WOFF2
  tools](https://github.com/google/woff2) or `woff2` package on Ubuntu

Run `make`. You should see green stuff and some "OK" messages.

If you are using Ubuntu, please note that the FontForge version
in the default Ubuntu repositories is much outdated at the time of this writing,
and that [is known to have caused subtle problems](https://github.com/belluzj/fantasque-sans/issues/59).
You are advised to install FontForge from
[this PPA](https://launchpad.net/~fontforge/+archive/ubuntu/fontforge)
(using `sudo add-apt-repository ppa:fontforge/fontforge` prior to the installation).
Alternatively, you can always [download](https://github.com/belluzj/fantasque-sans/releases/latest)
the latest prebuilt release of these fonts.

`make install` will install the TTF fonts into your local `.fonts/` directory
and update the font cache. It comes in handy while modifying the font.

[![](Specimen/Specimen.png)](Specimen/Specimen.pdf)

Webfonts
--------

Each variant has a `Webfonts/` folder which contains various font formats for
use on the web, along with the matching CSS font declarations. To use them,
you must combine in the same folder:
* a custom `.css` file that you can assemble from the `*-decl.css` fragments
  (you can only pick the styles that you need, e.g. normal and bold)
* the matching `.svg`, `.woff`, `.woff2` files from `Webfonts/`
* the matching `.ttf` files from the `TTF/` folder
* the matching `.otf` files from the `OTF/` folder.

Versions
--------

[Check out the changelog](CHANGELOG.md).
