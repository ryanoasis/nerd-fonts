WHAT IS THIS?

This is ProFont TrueType, converted to Windows TrueType format
by Mike Smith, with some tweaks added by "ardu".

Modifications include:
- A Euro character
- Missing characters from the Latin 1 code page
- Full support for CodePage 850. These are mostly the famous
  block/box characters you know from DOS. Very useful if you use
  Mightnight Commander through PuTTY.
- Fixed metrics so that point size of 9 works correctly. Until now
  you had to select 7 to obtain the native point size of 9.
- Added some quick&dirty hinting for point size of 9. Most characters
  now match closely the look of the bitmap version.
  Don't expect it to look good on anything else than Windows...



To get the full original Distribution, other ProFont builds
and more information
go to <http://tobiasjung.name/profont/>


DISCLAIMER
See LICENSE file


Tobias Jung
January 2014
profont@tobiasjung.name

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
