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

