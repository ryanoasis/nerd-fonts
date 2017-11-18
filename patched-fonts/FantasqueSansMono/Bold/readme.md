Fantasque Sans Mono
===================

A programming font, designed with functionality in mind, and with some 
wibbly-wobbly handwriting-like fuzziness that makes it unassumingly cool.
[Download](https://github.com/belluzj/fantasque-sans/releases/latest).


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

![](Specimen/noloopk.png)

Author and license
------------------

Created by Jany Belluz \<jany.belluz AT hotmail.fr\>

Licensed under the SIL Open Font License (see [OFL.txt](OFL.txt)).

Please send me an e-mail or [report an issue on
Github](http://github.com/belluzj/cosmic-sans-neue/issues) if you stumble upon
bad design or rendering problems (with screen shot if possible), or if you need
more characters, or if you want to compliment me (I love compliments). I also
accept
[Flattry](https://flattr.com/thing/2258061/belluzjcosmic-sans-neue-on-GitHub).

Building installable font files
-------------------------------

The build process requires:
* FontForge with python scripting support,
* `ttfautohint`
* `sfnt2woff` (from the `woff-tools` package on Ubuntu)
* `ttf2eot`, for example from [this
  repository](https://github.com/harrastia/ttf2eot).
* `woff2_compress` from [the Google WOFF2
  tools](https://github.com/google/woff2)

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

Versions
--------

1.1 - First release.

1.1.1 - Make slashes longer, ensure parenthesis and brackets are rendered at 
        the same height, and some other minor adjustments.
        
1.2 - Add the bold version.
      Various minor adjustments, new paragraph symbol, slanted dollar.
      
1.2.1 - Minor adjustments.

1.3 - Very slight change of metrics to add space between characters and lines.
      Various small changes : curlier curly brackets, more difference between
      various quotes, cleaner W, w, m, and rounder @. 
      Windows compatibility.
      More latin accents.
      Greek letters.
      Powerline characters.

1.3.1 - Various fixes: still cleaning m and w, reworked all ogoneks, changed a
        bit the dollar, moved some accents, eliminated glitches around
        Powerline symbols.
        TTF fonts are now hinted using Freetype's `ttfautohint`, which should
        give much better results on Windows (and maybe in Java apps and others
        contexts). In case this is a problem, please let me know and I will
        provide also an unhinted version.
        **Windows users should use the TTF (TrueType) files.**

1.3.2 - Various fixes: playing again with bold m, moving accents again, taking
        care again of Powerline symbols, clean 8 and R.
        Add a few box drawing characters (for use with vim-indentline).
        Generate webfonts (goal: this font used for code samples on all cool
        languages' websites).
        Add a WIP medium version of the proportional font.

1.4 - Rename font to **Fantasque Sans**, because *fantasque is the new cosmic*.
      Make W look symetrical at big size.

1.4.1 - Drop Reserved Font Name. **You can now subset, compress, hint and
        whatnot without worrying about renaming**.
        Many small improvements (8, s , t, a, e, {, }, W, i, l, g...).

1.5 - Add regular italic version.
      Some small changes (Q, w, y, n).

1.6 - Add bold italic version.

1.6.1 - Simplify @ to make it look sharp at all sizes.
        Various fixes.

1.6.2 - Make `+` symmetrical, align dots in `:` and `;`.

1.6.3 - Add block characters.
        Make the underscore visible on Windows.
        Generate better CSS.

1.6.4 - Fix line height on Mac. 
        Move all the italic glyphs to the left.
        Adjust some accents.

1.6.5 - Make italics visible on Windows.

1.7.0 - Beta version for the 1.7 series.
        **Add Cyrillic alphabet to the four fonts.**
        Add some real sub/supscript numbers and fractions.
        Revamp straight and curly quotes.
        Fix some Windows rendering issues.
        Move accents around (why do I do that every time?)
        Add `fontdiff` script which generates font diffs.

1.7.1 - **Add a stylistic set to replace the looped lowercase `k` with
        a straight version.**
        Adjust curly quotes so they behave better as apostrophes.
        Also, since nobody complained about the new Cyrillic characters,
        I declare this is their official release! (I did not change
        anything since 1.7.0 though).


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
# 510 Possible Combinations:

./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --windows
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesome
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --use-single-width-glyphs
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesome
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --windows --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --windows
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesome
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --octicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --octicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontlinux
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --pomicons
./font-patcher FantasqueSansMono-Bold.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --powerlineextra --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --powerlineextra --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --powerlineextra
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesomeextension --powersymbols
./font-patcher FantasqueSansMono-Bold.ttf  --fontawesomeextension
./font-patcher FantasqueSansMono-Bold.ttf  --powersymbols
```