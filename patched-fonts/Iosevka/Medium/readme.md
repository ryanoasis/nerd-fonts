# Iosevka ![Version](https://img.shields.io/github/release/be5invis/Iosevka.svg) [![Patreon](https://img.shields.io/badge/donate-patreon-red.svg)](https://www.patreon.com/user?u=5787198) [![Donate](https://img.shields.io/badge/donate-alipay-orange.svg)](http://7xpdnl.dl1.z0.glb.clouddn.com/T1v4huXnleXXXXXXXX.png)

Coders’ typeface, built from code.

![](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/preview-all.png)

Chinese and Japanese users → [Inziu Iosevka for Chinese and Japanese.](http://be5invis.github.io/Iosevka/inziu.html) (A **hinted** Composite with M+ and Source Han Sans.)

## Installation

Quit your editor/program. Unzip and open the folder.

* **[Instructions for Windows](https://www.microsoft.com/en-us/Typography/TrueTypeInstall.aspx)**
* **[Instructions for macOS](http://support.apple.com/kb/HT2509)**
  * Standard distribution in Homebrew: `brew tap caskroom/fonts && brew cask install font-iosevka` (May be outdated).
  * Customizable install using Homebrew: see [robertgzr/homebrew-tap](https://github.com/robertgzr/homebrew-tap).
* **Linux** : Copy the TTF files to your fonts directory → Run `sudo fc-cache`. 
  - Arch Linux users can install the font from the AUR [here](https://aur.archlinux.org/packages/ttf-iosevka) using an AUR wrapper or by doing it manually. [All variants](https://aur.archlinux.org/packages/?O=0&SeB=nd&K=ttf-iosevka&SB=n&SO=a&PP=50&do_Search=Go).
  - Void Linux users can install the font with `xbps-install font-iosevka`.

## Weights, Variants and OpenType features

The typeface contains seven weights (thin, extra-light, light, regular, medium, bold and heavy) alongside with both italic and oblique versions, with the same metrics as the regular one. 

![Weights sample](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/weights.png)

All versions include the same ranges of characters: Latin letters, Greek letters (including Polytonic), some Cyrillic letters, IPA symbols and common punctuations and some symbols. You can check out the full list [here](http://be5invis.github.io/Iosevka/specimen.html).

![Languages Sample](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/languages.png)

Iosevka supports accessing all letter variants using OpenType features.

![Style Sets](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/stylesets.png)

![Character Variants](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/charvars.png)

### Ligations

![Ligations Sample](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/ligations.png)

Iosevka’s default ligation set is assigned to `calt` feature, though not all of them are enabled by default.

Iosevka supports Language-Specific Ligations, which is the ligation set enabled only under certain languages. These ligation sets are assigned to custom feature tags, like `XHS0`.

## Building from Source

To build Iosevka you should:

1. Ensure that [`nodejs`](http://nodejs.org) (≥ 8.4), [`ttfautohint`](http://www.freetype.org/ttfautohint/), [`otfcc`](https://github.com/caryll/otfcc) (≥ 0.9.3) and GNU `make` (≥ 4.1; BSD `make` may not work) are runnable in your terminal.
   - Windows users may need to install MinGW and make POSIX utilities accessible (`mkdir.exe`, `cp.exe`, `cat.exe` and `rm.exe`, in particular) from Command Prompt. Utilities provided by [Git for Windows](https://git-for-windows.github.io/) or MSYS2 works fine.
2. Install necessary libs by `npm install`. If you’ve installed them, upgrade to the latest.
3. `make` (or `gmake`).


You will find TTFs in the `dist/` directory.

### Building the Web Font

The `webfonts/` directory is used to build Iosevka for web font uses. To build the web fonts you should:

1. Build Iosevka.
2. Ensure that `sfnt2woff` and `woff2_compress` are installed and runnable.
3. Run `make web` .

The web fonts will be generated into `dist/iosevka/web` and `dist/iosevka-slab/web`.

## Build Your Own Style

![Styles Preview](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/variants.png)

Iosevka comes with several visual styles, however they are inactive using the default build. To build these variants, you should perform custom build:

1. `make custom-config [set=<name>]` with the parameters listed below to create a configuration. The `set=<name>` part is optional, it will be set to `custom` when absent.
2. `make custom [set=<name>]` to acquire your custom font.
   - `make custom-web [set=<name>]` is for web fonts.

The first step, `make custom-config` takes following parameters to set styles of your custom build. All of them are optional, and would default to Iosevka’s default configuration:

* `design='<styles>'`, styles for your custom font set.
* `upright='<styles>'`, styles for uprights only.
* `italic='<styles>'`, styles for italics only.
* `oblique='<styles>'`, styles for obliques only.

You can add arbitary styles for these variables, for example, `make custom-config upright='v-l-zshaped v-i-zshaped' && make custom` will create a variant with Z-shaped letter `l` and `i` for uprights.

The current available styles are:

* Styles for general shape:
  * `sans` : Sans serif (default).
  * `slab` : Slab serif. When present, the family of your font would be `Iosevka Slab`.
* Styles related to ligations and spacing:
  - `term` : Disable ligations. When this style is present, the font built will not contain ligatures, and its family name will be set to “`Iosevka Term`”. In case of your OS or editor cannot handle ligatures correctly, you can disable ligations with it.
  - `type` : Make some symbols, like arrows (`→`) and mathematical operators full-width.
  - `stress-fw` : When included, full-width characters varying form `U+FF00` to `U+FFFF` will be boxed to present a clear distinguish between ASCII and Full-width. The family name will be set to “`Iosevka StFW`”.
* All registered `ss##` and `cv##` feature tags, including:
  * `ss01`~`ss10` : Predefined stylistic sets based on other Monospace fonts.
  * `cv01`~`cv45` : Standalone character variants.
* Styles for ligation sets, include:
  * `ligset-haskell`: Default ligation set would be assigned to Haskell.
  * `ligset-idris`: Default ligation set would be assigned to Idris.
  * `ligset-coq`: Default ligation set would be assigned to Coq.
  * `ligset-elm`: Default ligation set would be assigned to Elm.
  * `ligset-ml`: Default ligation set would be assigned to ML.
  * `ligset-fs`: Default ligation set would be assigned to F#.
  * `ligset-fstar`: Default ligation set would be assigned to F\*.
  * `ligset-swift`: Default ligation set would be assigned to Swift.
  * `ligset-purescript`: Default ligation set would be assigned to PureScript.
* Styles for individual characters. They are easy-to-understand names of the `cv##` styles, including:
  * Styles for letter `l`:
    * `v-l-hooky` : Hooky `l`.
    * `v-l-zshaped` : Z-shaped `l`.
    * `v-l-serifed` : Serifed `l` (default for upright and oblique).
    * `v-l-italic` : Italic `l` (default for italic).
    * `v-l-tailed` : `l` with a curved tail.
    * `v-l-hookybottom` : `l` with a straight tail.
  * Styles for letter `i`:
    * `v-i-hooky` : Hooky `i`.
    * `v-i-zshaped` : Z-shaped `i`.
    * `v-i-serifed` : Serifed `i` (default for upright and oblique).
    * `v-i-italic` : Italic `i` (default for italic).
  * Styles for letter `a`:
    * `v-a-doublestorey` : Double-storey `a` (default for upright and oblique).
    * `v-a-singlestorey` : Single-storey `a` (default for italic).
  * Styles for letter `g`:
    * `v-g-doublestorey` : Double-storey `g` (default for upright and oblique).
    * `v-g-singlestorey` : Single-storey `g` (default for italic).
    * `v-g-opendoublestorey` : Open Double-storey `g`.
  * Styles for letter `m`:
    * `v-m-longleg` : `m` with long middle leg (default).
    * `v-m-shortleg` : `m` with shorter middle leg.
  * Styles for letter `t`:
    * `v-t-standard` : Standard `t` shape (default).
    * `v-t-cross` : Futura-like `t` shape.
  * Styles for letter `Q`:
    * `v-q-taily` : `Q` with a curly tail (default).
    * `v-q-straight` : `Q` with a straight tail in the old versions.
  * Styles for zero (`0`):
    * `v-zero-slashed` : Slashed Zero `0` (default).
    * `v-zero-dotted` : Dotted Zero `0`.
    * `v-zero-unslashed` : O-like `0`.
  * Styles for ASCII tilde (`~`), asterisk (`*`), paragaraph(`¶`), underscore (`_`) and ASCII Caret (^):
    * `v-tilde-high` : Higher tilde `~`.
    * `v-tilde-low` : Lower tilde `~` (default).
    * `v-asterisk-high` : Higher asterisk `*` (default).
    * `v-asterisk-low` : Lower asterisk `*`.
    * `v-paragraph-high` : Higher paragraph symbol `¶` (default).
    * `v-paragraph-low` : Lower paragraph symbol `¶`.
    * `v-caret-high` : Higher circumflex `^` (default).
    * `v-caret-low` : Lower circumflex `^`.
    * `v-underscore-high` : Higher underscore `_` (default).
    * `v-underscore-low` : Lower underscore `_`.
  * Styles for At (`@`):
    * `v-at-long` : The long, three-fold At symbol in Iosevka 1.7.x.
    * `v-at-fourfold` : The traditional, four-fold At symbol.
    * `v-at-short` : The shorter, Fira-like At symbol introduced in Iosevka 1.8.
  * Styles for Eszet (`ß`):
    * `v-eszet-traditional` : Tratidional, Fraktur-like Eszet.
    * `v-eszet-sulzbacher` : A more modern, beta-like Eszet (default).
  * Styles for curly brackets (`{}`):
    * `v-brace-straight` : More straight braces.
    * `v-brace-curly` : More curly braces (default).
  * Styles for dollar symbol (`$`):
    * `v-dollar-open` : Dollar symbol with open contour.
    * `v-dollar-through` : Dollar symbol with strike-through vertical bar (default).
  * Styles for Number sign (`#`):
    * `v-numbersign-upright` : Number sign with vertical bars (default).
    * `v-numbersign-slanted` : Number sign with slanted bars.

---

![Family Matrix](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/matrix.png)

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


```sh
# 2046 Possible Combinations:

./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --windows
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesome
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --octicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontlinux
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --pomicons
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --powersymbols
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --weather --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --weather
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs --material
./font-patcher iosevka-medium.ttf  --use-single-width-glyphs
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --octicons
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontlinux
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --pomicons
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesome --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesome --material
./font-patcher iosevka-medium.ttf  --windows --fontawesome
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --octicons --pomicons
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --octicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --octicons --weather
./font-patcher iosevka-medium.ttf  --windows --octicons --material
./font-patcher iosevka-medium.ttf  --windows --octicons
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux --weather
./font-patcher iosevka-medium.ttf  --windows --fontlinux --material
./font-patcher iosevka-medium.ttf  --windows --fontlinux
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --windows --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --windows --pomicons --weather
./font-patcher iosevka-medium.ttf  --windows --pomicons --material
./font-patcher iosevka-medium.ttf  --windows --pomicons
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --windows --powerlineextra --material
./font-patcher iosevka-medium.ttf  --windows --powerlineextra
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --windows --fontawesomeextension
./font-patcher iosevka-medium.ttf  --windows --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --windows --powersymbols --weather
./font-patcher iosevka-medium.ttf  --windows --powersymbols --material
./font-patcher iosevka-medium.ttf  --windows --powersymbols
./font-patcher iosevka-medium.ttf  --windows --weather --material
./font-patcher iosevka-medium.ttf  --windows --weather
./font-patcher iosevka-medium.ttf  --windows --material
./font-patcher iosevka-medium.ttf  --windows
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --pomicons
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --weather
./font-patcher iosevka-medium.ttf  --fontawesome --octicons --material
./font-patcher iosevka-medium.ttf  --fontawesome --octicons
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontlinux
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --weather
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons --material
./font-patcher iosevka-medium.ttf  --fontawesome --pomicons
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontawesome --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesome --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontawesome --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesome --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesome --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesome --weather --material
./font-patcher iosevka-medium.ttf  --fontawesome --weather
./font-patcher iosevka-medium.ttf  --fontawesome --material
./font-patcher iosevka-medium.ttf  --fontawesome
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --weather
./font-patcher iosevka-medium.ttf  --octicons --fontlinux --material
./font-patcher iosevka-medium.ttf  --octicons --fontlinux
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons --weather
./font-patcher iosevka-medium.ttf  --octicons --pomicons --material
./font-patcher iosevka-medium.ttf  --octicons --pomicons
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --octicons --powerlineextra
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --octicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --octicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --octicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --octicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --octicons --powersymbols
./font-patcher iosevka-medium.ttf  --octicons --weather --material
./font-patcher iosevka-medium.ttf  --octicons --weather
./font-patcher iosevka-medium.ttf  --octicons --material
./font-patcher iosevka-medium.ttf  --octicons
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --weather
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons --material
./font-patcher iosevka-medium.ttf  --fontlinux --pomicons
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra --material
./font-patcher iosevka-medium.ttf  --fontlinux --powerlineextra
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontlinux --fontawesomeextension
./font-patcher iosevka-medium.ttf  --fontlinux --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontlinux --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontlinux --powersymbols
./font-patcher iosevka-medium.ttf  --fontlinux --weather --material
./font-patcher iosevka-medium.ttf  --fontlinux --weather
./font-patcher iosevka-medium.ttf  --fontlinux --material
./font-patcher iosevka-medium.ttf  --fontlinux
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra --material
./font-patcher iosevka-medium.ttf  --pomicons --powerlineextra
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --pomicons --fontawesomeextension
./font-patcher iosevka-medium.ttf  --pomicons --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --powersymbols --weather
./font-patcher iosevka-medium.ttf  --pomicons --powersymbols --material
./font-patcher iosevka-medium.ttf  --pomicons --powersymbols
./font-patcher iosevka-medium.ttf  --pomicons --weather --material
./font-patcher iosevka-medium.ttf  --pomicons --weather
./font-patcher iosevka-medium.ttf  --pomicons --material
./font-patcher iosevka-medium.ttf  --pomicons
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --powerlineextra --fontawesomeextension
./font-patcher iosevka-medium.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --powerlineextra --powersymbols --weather
./font-patcher iosevka-medium.ttf  --powerlineextra --powersymbols --material
./font-patcher iosevka-medium.ttf  --powerlineextra --powersymbols
./font-patcher iosevka-medium.ttf  --powerlineextra --weather --material
./font-patcher iosevka-medium.ttf  --powerlineextra --weather
./font-patcher iosevka-medium.ttf  --powerlineextra --material
./font-patcher iosevka-medium.ttf  --powerlineextra
./font-patcher iosevka-medium.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-medium.ttf  --fontawesomeextension --powersymbols --material
./font-patcher iosevka-medium.ttf  --fontawesomeextension --powersymbols
./font-patcher iosevka-medium.ttf  --fontawesomeextension --weather --material
./font-patcher iosevka-medium.ttf  --fontawesomeextension --weather
./font-patcher iosevka-medium.ttf  --fontawesomeextension --material
./font-patcher iosevka-medium.ttf  --fontawesomeextension
./font-patcher iosevka-medium.ttf  --powersymbols --weather --material
./font-patcher iosevka-medium.ttf  --powersymbols --weather
./font-patcher iosevka-medium.ttf  --powersymbols --material
./font-patcher iosevka-medium.ttf  --powersymbols
./font-patcher iosevka-medium.ttf  --weather --material
./font-patcher iosevka-medium.ttf  --weather
./font-patcher iosevka-medium.ttf  --material
```