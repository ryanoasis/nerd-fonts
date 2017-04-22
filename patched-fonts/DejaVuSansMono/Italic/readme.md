[![Build Status](https://travis-ci.org/dejavu-fonts/dejavu-fonts.svg)](https://travis-ci.org/dejavu-fonts/dejavu-fonts)

DejaVu fonts 2.37 (c)2004-2016 DejaVu fonts team
------------------------------------------------

The DejaVu fonts are a font family based on the Bitstream Vera Fonts
(http://gnome.org/fonts/). Its purpose is to provide a wider range of
characters (see status.txt for more information) while maintaining the
original look and feel.

DejaVu fonts are based on Bitstream Vera fonts version 1.10.

Available fonts (Sans = sans serif, Mono = monospaced):

DejaVu Sans Mono
DejaVu Sans Mono Bold
DejaVu Sans Mono Bold Oblique
DejaVu Sans Mono Oblique
DejaVu Sans
DejaVu Sans Bold
DejaVu Sans Bold Oblique
DejaVu Sans Oblique
DejaVu Sans ExtraLight (experimental)
DejaVu Serif
DejaVu Serif Bold
DejaVu Serif Bold Italic (experimental)
DejaVu Serif Italic (experimental)
DejaVu Sans Condensed (experimental)
DejaVu Sans Condensed Bold (experimental)
DejaVu Sans Condensed Bold Oblique (experimental)
DejaVu Sans Condensed Oblique (experimental)
DejaVu Serif Condensed (experimental)
DejaVu Serif Condensed Bold (experimental)
DejaVu Serif Condensed Bold Italic (experimental)
DejaVu Serif Condensed Italic (experimental)
DejaVu Math TeX Gyre

All fonts are also available as derivative called DejaVu LGC with support
only for Latin, Greek and Cyrillic scripts.

For license information see LICENSE. What's new is described in NEWS. Known
bugs are in BUGS. All authors are mentioned in AUTHORS.

Fonts are published in source form as SFD files (Spline Font Database from
FontForge - http://fontforge.sf.net/) and in compiled form as TTF files
(TrueType fonts).

For more information go to http://dejavu.sourceforge.net/.

Characters from Arev fonts, Copyright (c) 2006 by Tavmjong Bah:
---------------------------
U+01BA, U+01BF, U+01F7, U+021C-U+021D, U+0220, U+0222-U+0223,
U+02B9, U+02BA, U+02BD, U+02C2-U+02C5, U+02d4-U+02D5,
U+02D7, U+02EC-U+02EE, U+0346-U+034E, U+0360, U+0362,
U+03E2-03EF, U+0460-0463, U+0466-U+0486, U+0488-U+0489, U+04A8-U+04A9,
U+0500-U+050F, U+2055-205E, U+20B0, U+20B2-U+20B3, U+2102, U+210D, U+210F,
U+2111, U+2113, U+2115, U+2118-U+211A, U+211C-U+211D, U+2124, U+2135,
U+213C-U+2140, U+2295-U+2298, U+2308-U+230B, U+26A2-U+26B1, U+2701-U+2704,
U+2706-U+2709, U+270C-U+274B, U+2758-U+275A, U+2761-U+2775, U+2780-U+2794,
U+2798-U+27AF, U+27B1-U+27BE, U+FB05-U+FB06

DejaVu Math TeX Gyre
--------------------
TeX Gyre DJV Math by B. Jackowski, P. Strzelczyk and P. Pianowski
(on behalf of TeX users groups).

$Id$

## Which font?

### TL;DR

0. Pick your font family and then select from the `'complete'` directory.
  * Are you on Windows? Pick a font with the suffix `'Windows Compatible'`
  * Are you limited to mono fonts (because of your terminal, etc)? Pick a font with the suffix `'Mono'`

### Explanation

Once you narrow done your font choice of family (`Droid Sans`, `Inconsolata`, etc) and style (`bold`, `italic`, etc) you have 2 main choices:
 * download an already patched font from the `complete` folder
  * This is most likely the one you want. It includes **all** of the glyphs from all of the glyph sets. Only caution here is that some fonts have glyphs in the _same_ code point so to include everything some had to be moved to alternate code points.
 * patch your own variations with the various options provided by the font patcher (see each font's readme for full list of combinations available)
  * This contains a list of _all permutations_ of the various glyphs. E.g. You want the font with only [Octicons][octicons] or you want the font with just [Font Awesome][font-awesome] and [Devicons][vorillaz-devicons]. The goal is to provide every combination possible in this folder.


For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ#which-font)


[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/github/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols

## Variations (Combinations)

> The combinations and total number of combinations are provided here for reference if you want to create your own variation of a patched Nerd Font.

### Why aren't all variations included ?

Combinations are no longer included by default because of the large inflation in size it caused the Repository _and_ the amount of time it takes to rebuild all of the combinations. This issue would exponentially get worse as the numbers of Fonts and Glyph Sets provided increase.


```sh
# 510 Possible Combinations:

./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlinux
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powersymbols
```