# Iosevka ![Version](https://img.shields.io/github/release/be5invis/Iosevka.svg) [![Patreon](https://img.shields.io/badge/donate-patreon-red.svg)](https://www.patreon.com/user?u=5787198) [![Donate](https://img.shields.io/badge/donate-alipay-orange.svg)](http://7xpdnl.dl1.z0.glb.clouddn.com/T1v4huXnleXXXXXXXX.png)

Coders’ typeface, built from code.

![](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/preview-all.png)

## Installation

Quit your editor/program. Unzip and open the folder.

* **[Instructions for Windows](https://www.microsoft.com/en-us/Typography/TrueTypeInstall.aspx)**
* **[Instructions for macOS](http://support.apple.com/kb/HT2509)**
  * Standard distribution in Homebrew: `brew tap caskroom/fonts && brew cask install font-iosevka` (May be outdated).
  * Customizable install using Homebrew: see [robertgzr/homebrew-tap](https://github.com/robertgzr/homebrew-tap).
* **Linux** : Copy the TTF files to your fonts directory → Run `sudo fc-cache`. 
  - Arch Linux users can install the font from the AUR [here](https://aur.archlinux.org/packages/ttf-iosevka) using an AUR wrapper or by doing it manually. [All variants](https://aur.archlinux.org/packages/?O=0&SeB=nd&K=ttf-iosevka&SB=n&SO=a&PP=50&do_Search=Go).
  - Void Linux users can install the font with `xbps-install font-iosevka`.
* **FreeBSD**: The font can be installed with `pkg install iosevka`.

## Weights, Variants and OpenType features

The typeface contains 9 weights (Thin to Heavy) alongside with both italic and oblique versions, with the same metrics as the regular one. 

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

1. Ensure that [`nodejs`](http://nodejs.org) (≥ 8.4), [`ttfautohint`](http://www.freetype.org/ttfautohint/), [`otfcc`](https://github.com/caryll/otfcc) (≥ 0.9.3).
2. Install necessary libs by `npm install`. If you’ve installed them, upgrade to the latest.
3. `npm run build -- contents:iosevka`.


You will find TTFs, as well as WOFF(2) web fonts and one Webfont CSS in the `dist/` directory.

## Build Your Own Style

Since version 2.0, Iosevka would no longer support building via `makefile`. To initialize a custom build, you need:

1. Create `private-build-plans.toml` file.

2. Add a build plan into `private-build-plans.toml`, following this format:

   ```toml
   [buildPlans.iosevka-custom]            # <iosevka-custom> is your plan name
   family = "Iosevka Custom"              # Font menu family name
   design = ["common styles"]             # Common styles
   upright = ["upright-only", "styles"]   # Upright-only styles
   italic = ["italic-only", "styles"]     # Italic-only styles
   oblique = ["oblique-only", "styles"]   # Oblique-only styles
   
   # Override default building weights
   # When buildPlans.<plan name>.weights is absent
   # All weights would built and mapped to default shape/CSS
   [buildPlans.iosevka-custom.weights.regular]
   shape = 400                            # Weight for glyph shapes
   menu  = 400                            # Weight for menu name
   css   = 400                            # Weight for WebFont CSS
   
   [buildPlans.iosevka-custom.weights.bold]
   shape = 700
   menu  = 700
   css   = 700
   
   # Override default building slant sets
   # Format: <upright|italic|oblique> = <"normal"|"italic"|"oblique">
   # When this section is absent, all slants would be built.
   [buildPlans.iosevka-custom.slants]
   upright = "normal"
   italic = "italic"
   oblique = "oblique"
   ```

3. Run `npm run build -- contents:<your plan name>` and the built fonts would be available in `dist/`. Aside from `contents:<plan>`, other options are:

   1. `contents:<plan>` : TTF (Hinted and Unhinted), WOFF(2) and Webfont CSS;
   2. `ttf:<plan>` : TTF;
   3. `ttf-unhinted:<plan>` : Unhinted TTF only;
   4. `woff:<plan>` : TTF and WOFF only;
   5. `woff2:<plan>` : TTF and WOFF2 only;

The current available styles for `design`/`upright`/`italic`/`oblique` options are:

* Styles for general shape:
  * `sans` : Sans serif (default).
  * `slab` : Slab serif.
* Styles related to ligations and spacing:
  - `term` : Disable ligations and exact monospace.
    - The font built will not contain ligatures.
    - All glyphs wider than one letter would be deleted.
    - In case of your OS or editor cannot handle ligatures correctly, you can disable ligations with it.
  - `termlig` : Similar to `term`, the font is exact monospace to make `fontconfig` happy, while ligations are still present.
  - `nolig` : Disable ligation only.
  - `type` : Make some symbols, like arrows (`→`) and mathematical operators full-width.
  - `stress-fw` : When included, full-width characters varying form `U+FF00` to `U+FFFF` will be boxed to present a clear distinguish between ASCII and Full-width.
* All registered `ss##` and `cv##` feature tags, including:
  * `ss01`~`ss10` : Predefined stylistic sets based on other Monospace fonts.
  * `cv01`~`cv53` : Standalone character variants.
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
* Styles for further customizing default (`calt`) ligation sets. When any of these styles present in your configuration, the `ligset-*` styles would be overridden.
  * `calt-clear`: Clear the `calt` ligation set.
  * `calt-center-ops`: Vertically align some of the operators (like `*`) to the center position it is before or after a "center" operator (like `+`);
  * `calt-arrow`: Enable ligation set that forms arrows;
  * `calt-arrow2`: Enable ligation for more arrows, like `>>=`;
  * `calt-html-comment`: Enable ligation for `<!--` and `<!---`;
  * `calt-eqeq`: Enable ligation for `==` and `===`;
  * `calt-ineq`: Enable ligation for `<=` and `>=`;
  * `calt-arrowZALE`: Enable ligation for `<=` to form a left double arrow;
  * `calt-arrowZAGE`: Enable ligation for `>=` to form a right inverse double arrow;
  * `calt-exeq`: Enable ligation for `!=` and `!==`;
  * `calt-slasheq`: Enable ligation for `/=` and `/==`;
  * `calt-plusplus`: Enable ligation for `++` and further plus-chaining;
  * `calt-llgg`: Enable ligation for `<<`, `>>` and other angle-bracket chaining;
  * `calt-trig`: Enable ligation for `<|`, `|>` , `<||`, and other bar-and-angle-bracket symbols;
  * `calt-dotoper`: Treat dot (`.`) as operator and perform chained centering;
  * `calt-brst`: Center asterisk in `(*` and `*)`;
  * `calt-logic`: Enable ligation for `/\` and `\/`;
  * `calt-colons`: Enable ligation for `::` and `:::` ;
* Styles for changing the line space (leading):
  * `leading-750`, `leading-1000`, `leading-1250`, `leading-1500`, `leading-1750`, `leading-2000`: Change the line space. Default is `leading-1250`.
* Styles for changing Powerline symbols' position:
  * `powerline-scale-y-750`, `powerline-scale-y-875`, `powerline-scale-y-1000`, `powerline-scale-y-1125`, `powerline-scale-y-1250`, `powerline-scale-y-1375`, `powerline-scale-y-1500`: Resize the Powerline symbols vertically, from 75% to 150%.
  * `powerline-scale-x-750`, `powerline-scale-x-875`, `powerline-scale-x-1000`, `powerline-scale-x-1125`, `powerline-scale-x-1250`, `powerline-scale-x-1375`, `powerline-scale-x-1500`: Resize the Powerline symbols horizontally, from 75% to 150%.
  * `powerline-shift-y-n500`, `powerline-shift-y-n450`, `powerline-shift-y-n400`, `powerline-shift-y-n350`, `powerline-shift-y-n300`, `powerline-shift-y-n250`, `powerline-shift-y-n200`, `powerline-shift-y-n150`, `powerline-shift-y-n100`, `powerline-shift-y-n50`, `powerline-shift-y-0`, `powerline-shift-y-p50`, `powerline-shift-y-p100`, `powerline-shift-y-p150`, `powerline-shift-y-p200`, `powerline-shift-y-p250`, `powerline-shift-y-p300`, `powerline-shift-y-p350`, `powerline-shift-y-p400`, `powerline-shift-y-p450`, `powerline-shift-y-p500`: Shift the Powerline symbols vertically, from -0.5em to +0.5em.
  * `powerline-shift-x-n500`, `powerline-shift-x-n450`, `powerline-shift-x-n400`, `powerline-shift-x-n350`, `powerline-shift-x-n300`, `powerline-shift-x-n250`, `powerline-shift-x-n200`, `powerline-shift-x-n150`, `powerline-shift-x-n100`, `powerline-shift-x-n50`, `powerline-shift-x-0`, `powerline-shift-x-p50`, `powerline-shift-x-p100`, `powerline-shift-x-p150`, `powerline-shift-x-p200`, `powerline-shift-x-p250`, `powerline-shift-x-p300`, `powerline-shift-x-p350`, `powerline-shift-x-p400`, `powerline-shift-x-p450`, `powerline-shift-x-p500`: Shift the Powerline symbols horizontally, from -0.5em to +0.5em.
* Styles for changing the width:
  * `expanded`: Expand the width by 10%;
  * `compressed`: Compress the width by 10%.
  * NOTE: these styles are highly experimental. Handle with extreme care.
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
  * Styles for letter `f`:
    * `v-f-straight`: `f` without bottom hook (default for upright and oblique).
    * `v-f-tailed`: `f` with a leftward bottom hook (default for italic).
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
  * Styles for letter `y`:
    * `v-y-straight`: More-straight letter `y`.
    * `v-y-curly`: Curly, cursive-like `y`.
  * Styles for zero (`0`):
    * `v-zero-slashed` : Slashed Zero `0` (default).
    * `v-zero-dotted` : Dotted Zero `0`.
    * `v-zero-unslashed` : O-like `0`.
  * Styles for one (`1`)
    * `v-one-serifed` : `1` with bottom serif (default for Slab).
    * `v-one-hooky` : `1` without bottom serif (default for Sans).
  * Styles for three (`3`):
    * `v-three-flattop` : Flat top `3` (Like Museo Sans / Montserrat).
    * `v-three-twoarks` : Arched top `3` (default).
  * Styles for ASCII tilde (`~`), asterisk (`*`), paragraph(`¶`), underscore (`_`) and ASCII Caret (`^`):
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
    * `v-eszet-traditional` : Traditional, Fraktur-like Eszet.
    * `v-eszet-sulzbacher` : A more modern, beta-like Eszet (default).
  * Styles for curly brackets (`{}`):
    * `v-brace-straight` : More straight braces.
    * `v-brace-curly` : More curly braces (default).
  * Styles for dollar symbol (`$`):
    * `v-dollar-open` : Dollar symbol with open contour.
    * `v-dollar-through` : Dollar symbol with strike-through vertical bar (default).
    * `v-dollar-opencap` : Dollar symbol with open contour, not exceeding baseline and ascender.
    * `v-dollar-throughcap` : Dollar symbol with strike-through vertical bar, not exceeding baseline and ascender.
  * Styles for Number sign (`#`):
    * `v-numbersign-upright` : Number sign with vertical bars (default).
    * `v-numbersign-slanted` : Number sign with slanted bars.

## For Chinese and Japanese users...

→ [Sarasa Gothic](https://github.com/be5invis/Sarasa-Gothic).

---

![Family Matrix](https://raw.githubusercontent.com/be5invis/Iosevka/master/images/matrix.png)

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

./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --windows
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesome
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --octicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --weather
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs --material
./font-patcher iosevka-term-boldoblique.ttf  --use-single-width-glyphs
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --octicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesome
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --octicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --windows --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --windows --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --windows --weather
./font-patcher iosevka-term-boldoblique.ttf  --windows --material
./font-patcher iosevka-term-boldoblique.ttf  --windows
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --octicons
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesome
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --octicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --octicons --material
./font-patcher iosevka-term-boldoblique.ttf  --octicons
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux --material
./font-patcher iosevka-term-boldoblique.ttf  --fontlinux
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --weather
./font-patcher iosevka-term-boldoblique.ttf  --pomicons --material
./font-patcher iosevka-term-boldoblique.ttf  --pomicons
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --weather
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra --material
./font-patcher iosevka-term-boldoblique.ttf  --powerlineextra
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --weather
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension --material
./font-patcher iosevka-term-boldoblique.ttf  --fontawesomeextension
./font-patcher iosevka-term-boldoblique.ttf  --powersymbols --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --powersymbols --weather
./font-patcher iosevka-term-boldoblique.ttf  --powersymbols --material
./font-patcher iosevka-term-boldoblique.ttf  --powersymbols
./font-patcher iosevka-term-boldoblique.ttf  --weather --material
./font-patcher iosevka-term-boldoblique.ttf  --weather
./font-patcher iosevka-term-boldoblique.ttf  --material
```