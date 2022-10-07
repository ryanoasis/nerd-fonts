# Hermit


## Why `Hurmit` and not `Hermit`?

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


```sh
# 2046 Possible Combinations:

./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesome
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --octicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --windows
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesome
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --octicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontlogos
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --pomicons
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powerlineextra
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --fontawesomeextension
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powersymbols --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powersymbols --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --powersymbols
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --weather --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --weather
./font-patcher Hermit-medium.otf  --use-single-width-glyphs --material
./font-patcher Hermit-medium.otf  --use-single-width-glyphs
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontlogos
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --pomicons
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --octicons
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontlogos
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --pomicons
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontawesome --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesome --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesome --weather
./font-patcher Hermit-medium.otf  --windows --fontawesome --material
./font-patcher Hermit-medium.otf  --windows --fontawesome
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontlogos
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --windows --octicons --pomicons
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --octicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --octicons --weather --material
./font-patcher Hermit-medium.otf  --windows --octicons --weather
./font-patcher Hermit-medium.otf  --windows --octicons --material
./font-patcher Hermit-medium.otf  --windows --octicons
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --windows --fontlogos --weather
./font-patcher Hermit-medium.otf  --windows --fontlogos --material
./font-patcher Hermit-medium.otf  --windows --fontlogos
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --windows --pomicons --weather --material
./font-patcher Hermit-medium.otf  --windows --pomicons --weather
./font-patcher Hermit-medium.otf  --windows --pomicons --material
./font-patcher Hermit-medium.otf  --windows --pomicons
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --windows --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra --weather
./font-patcher Hermit-medium.otf  --windows --powerlineextra --material
./font-patcher Hermit-medium.otf  --windows --powerlineextra
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --windows --fontawesomeextension
./font-patcher Hermit-medium.otf  --windows --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --windows --powersymbols --weather
./font-patcher Hermit-medium.otf  --windows --powersymbols --material
./font-patcher Hermit-medium.otf  --windows --powersymbols
./font-patcher Hermit-medium.otf  --windows --weather --material
./font-patcher Hermit-medium.otf  --windows --weather
./font-patcher Hermit-medium.otf  --windows --material
./font-patcher Hermit-medium.otf  --windows
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontlogos
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --pomicons
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --octicons --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons --weather
./font-patcher Hermit-medium.otf  --fontawesome --octicons --material
./font-patcher Hermit-medium.otf  --fontawesome --octicons
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos --material
./font-patcher Hermit-medium.otf  --fontawesome --fontlogos
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --weather
./font-patcher Hermit-medium.otf  --fontawesome --pomicons --material
./font-patcher Hermit-medium.otf  --fontawesome --pomicons
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontawesome --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesome --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontawesome --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesome --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesome --powersymbols
./font-patcher Hermit-medium.otf  --fontawesome --weather --material
./font-patcher Hermit-medium.otf  --fontawesome --weather
./font-patcher Hermit-medium.otf  --fontawesome --material
./font-patcher Hermit-medium.otf  --fontawesome
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos --weather
./font-patcher Hermit-medium.otf  --octicons --fontlogos --material
./font-patcher Hermit-medium.otf  --octicons --fontlogos
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --octicons --pomicons --weather --material
./font-patcher Hermit-medium.otf  --octicons --pomicons --weather
./font-patcher Hermit-medium.otf  --octicons --pomicons --material
./font-patcher Hermit-medium.otf  --octicons --pomicons
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --octicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --octicons --powerlineextra
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --octicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --octicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --octicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --octicons --powersymbols --material
./font-patcher Hermit-medium.otf  --octicons --powersymbols
./font-patcher Hermit-medium.otf  --octicons --weather --material
./font-patcher Hermit-medium.otf  --octicons --weather
./font-patcher Hermit-medium.otf  --octicons --material
./font-patcher Hermit-medium.otf  --octicons
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --weather
./font-patcher Hermit-medium.otf  --fontlogos --pomicons --material
./font-patcher Hermit-medium.otf  --fontlogos --pomicons
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --weather
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra --material
./font-patcher Hermit-medium.otf  --fontlogos --powerlineextra
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontlogos --fontawesomeextension
./font-patcher Hermit-medium.otf  --fontlogos --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontlogos --powersymbols --material
./font-patcher Hermit-medium.otf  --fontlogos --powersymbols
./font-patcher Hermit-medium.otf  --fontlogos --weather --material
./font-patcher Hermit-medium.otf  --fontlogos --weather
./font-patcher Hermit-medium.otf  --fontlogos --material
./font-patcher Hermit-medium.otf  --fontlogos
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --weather
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra --material
./font-patcher Hermit-medium.otf  --pomicons --powerlineextra
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --pomicons --fontawesomeextension
./font-patcher Hermit-medium.otf  --pomicons --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --pomicons --powersymbols --weather
./font-patcher Hermit-medium.otf  --pomicons --powersymbols --material
./font-patcher Hermit-medium.otf  --pomicons --powersymbols
./font-patcher Hermit-medium.otf  --pomicons --weather --material
./font-patcher Hermit-medium.otf  --pomicons --weather
./font-patcher Hermit-medium.otf  --pomicons --material
./font-patcher Hermit-medium.otf  --pomicons
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --powerlineextra --fontawesomeextension
./font-patcher Hermit-medium.otf  --powerlineextra --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --powerlineextra --powersymbols --weather
./font-patcher Hermit-medium.otf  --powerlineextra --powersymbols --material
./font-patcher Hermit-medium.otf  --powerlineextra --powersymbols
./font-patcher Hermit-medium.otf  --powerlineextra --weather --material
./font-patcher Hermit-medium.otf  --powerlineextra --weather
./font-patcher Hermit-medium.otf  --powerlineextra --material
./font-patcher Hermit-medium.otf  --powerlineextra
./font-patcher Hermit-medium.otf  --fontawesomeextension --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --fontawesomeextension --powersymbols --weather
./font-patcher Hermit-medium.otf  --fontawesomeextension --powersymbols --material
./font-patcher Hermit-medium.otf  --fontawesomeextension --powersymbols
./font-patcher Hermit-medium.otf  --fontawesomeextension --weather --material
./font-patcher Hermit-medium.otf  --fontawesomeextension --weather
./font-patcher Hermit-medium.otf  --fontawesomeextension --material
./font-patcher Hermit-medium.otf  --fontawesomeextension
./font-patcher Hermit-medium.otf  --powersymbols --weather --material
./font-patcher Hermit-medium.otf  --powersymbols --weather
./font-patcher Hermit-medium.otf  --powersymbols --material
./font-patcher Hermit-medium.otf  --powersymbols
./font-patcher Hermit-medium.otf  --weather --material
./font-patcher Hermit-medium.otf  --weather
./font-patcher Hermit-medium.otf  --material
```