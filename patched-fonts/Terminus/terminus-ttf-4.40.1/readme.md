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

## Why `Terminess` and not `Terminus`?

What's in a name? The reason for the name change is to comply with the SIL Open Font License (OFL), in particular the [Reserved Font Name mechanism][SIL-RFN]

Some fonts have parts of their name "reserved" per the [Reserved Font Name mechanism][SIL-RFN]:
> No Modified Version of the Font Software may use the Reserved Font
> Name(s) unless explicit written permission is granted by the corresponding
> Copyright Holder. This restriction only applies to the primary font name as
> presented to the users.

- The main goals seem to be to: `Avoid collisions`, `Protect authors`, `Minimize support`, and `Encourage derivatives`

See the [Reserved Font Name section][SIL-RFN] for additional information

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


