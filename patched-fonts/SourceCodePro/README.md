Sauce Code Powerline
====================

Font creator
:   Paul D. Hunt (Adobe)

Version
:   1.017

Source
:   <http://sourceforge.net/projects/sourcecodepro.adobe>

License
:   SIL OPEN FONT LICENSE Version 1.1

Patched by
:   [Carl X. Su](https://github.com/bcbcarl)

Source Code Pro is a set of monospaced OpenType fonts that have been
designed to work well in coding environments. This family of fonts is a
complementary design to the Source Sans family.

Sauce Code Powerline is derived from Source Code Pro for Powerline
users. The Powerline symbols is being made by Kim Silkebækken. The patch
work is being undertaken by Carl X. Su.

Both the final font Truetype/OpenType files and the design files used to
produce the font family are distributed under an open licence and you
are expressly encouraged to experiment, modify, share and improve.

## Which font?

### TL;DR

0. Pick your font family and then select from the `'complete'` directory.
  * Are you on Windows? Pick a font with the suffix `'Windows Compatible'`
  * Are you limited to mono fonts (because of your terminal, etc)? Pick a font with the suffix `'Mono'`

### Explanation

Once you narrow done your font choice of family (Droid Sans, Inconsolata, etc) and style (bold, italic, etc) you are provided with 3 main folders choices:
 * complete
  * This is most likely the one you want. It includes **all** of the glyphs from all of the glyph sets. Only caution here is that some fonts have glyphs in the _same_ code point so to include everything some had to be moved to alternate code points.
 * alternative
  * This attempts to contain _all permutations_ of the various glyphs. E.g. You want the font with only [Octicons][octicons] or you want the font with just [Font Awesome][font-awesome] and [Devicons][vorillaz-devicons]. The goal is to provide every combination possible in this folder.
 * minimal
  * This contains just the glyphs needed to use [vim-devicons][vim-devicons]. This is mostly provided for historical purposes. This might end up being removed at some point if it ends up causing too much confusion and/or providing little purpose in the grand scheme of things.


For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ#which-font)


[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:http://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/github/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
