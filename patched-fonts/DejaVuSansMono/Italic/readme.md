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
# 4094 Possible Combinations:

./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --use-single-width-glyphs
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerline
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs --material
./font-patcher DejaVuSansMono-Oblique.ttf  --use-single-width-glyphs
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --windows --material
./font-patcher DejaVuSansMono-Oblique.ttf  --windows
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesome
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --octicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontlogos
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons --material
./font-patcher DejaVuSansMono-Oblique.ttf  --pomicons
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powerlineextra
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension --material
./font-patcher DejaVuSansMono-Oblique.ttf  --fontawesomeextension
./font-patcher DejaVuSansMono-Oblique.ttf  --powersymbols --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powersymbols --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --powersymbols --material
./font-patcher DejaVuSansMono-Oblique.ttf  --powersymbols
./font-patcher DejaVuSansMono-Oblique.ttf  --weather --material
./font-patcher DejaVuSansMono-Oblique.ttf  --weather
./font-patcher DejaVuSansMono-Oblique.ttf  --material
```