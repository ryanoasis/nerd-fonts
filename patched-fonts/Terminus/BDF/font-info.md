Terminess Powerline
===================

Font creator
:   Dimitar Zhekov

Version
:   media-fonts/terminus-font-4.36 with USE=X pcf psf ru-g

Source
:   <http://terminus-font.sourceforge.net>

License
:   SIL OPEN FONT LICENSE Version 1.1

Patched by
:   [Nikolay Pavlov](https://bitbucket.org/ZyX_I), [Carl X.
    Su](https://github.com/bcbcarl)

Terminus Font is a clean, fixed width bitmap font, designed for long (8
and more hours per day) work with computers. Version 4.36 contains 856
characters, covers about 120 language sets and supports
ISO8859-1/2/5/7/9/13/15/16, Paratype-PT154/PT254, KOI8-R/U/E/F,
Esperanto, many IBM, Windows and Macintosh code pages, as well as the
IBM VGA, vt100 and xterm pseudographic characters.

Terminess Powerline is derived from Terminus Font for Powerline users.
The Powerline symbols is being made by Kim Silkebækken. The patch work
is being undertaken by Nikolay Pavlov and Carl X. Su.

Both the final font Truetype/OpenType files and the design files used to
produce the font family are distributed under an open licence and you
are expressly encouraged to experiment, modify, share and improve.

Note: If you want to have patched font with different USE flags, use
fontpatcher located at
<https://bitbucket.org/ZyX_I/bitmap-font-patcher>, it is always using
proper (manually adjusted) glyphs. Here are the variants controlled by
USE flags (see font homepage for better explanations about what each USE
flag does):

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
