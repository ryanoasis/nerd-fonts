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

