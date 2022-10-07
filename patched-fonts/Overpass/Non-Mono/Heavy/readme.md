# Overpass


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

./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --windows
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesome
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --octicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontlogos
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --pomicons
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --powersymbols
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --weather --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --weather
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs --material
./font-patcher overpass-heavy.otf  --powerline --use-single-width-glyphs
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --octicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesome
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --octicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --octicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontlogos
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --windows --pomicons
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --windows --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --windows --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --windows --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --windows --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --windows --powersymbols
./font-patcher overpass-heavy.otf  --powerline --windows --weather --material
./font-patcher overpass-heavy.otf  --powerline --windows --weather
./font-patcher overpass-heavy.otf  --powerline --windows --material
./font-patcher overpass-heavy.otf  --powerline --windows
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --octicons
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesome --material
./font-patcher overpass-heavy.otf  --powerline --fontawesome
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontlogos
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --octicons --pomicons
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --octicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --octicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --octicons --weather
./font-patcher overpass-heavy.otf  --powerline --octicons --material
./font-patcher overpass-heavy.otf  --powerline --octicons
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos --weather
./font-patcher overpass-heavy.otf  --powerline --fontlogos --material
./font-patcher overpass-heavy.otf  --powerline --fontlogos
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --powerline --pomicons --weather --material
./font-patcher overpass-heavy.otf  --powerline --pomicons --weather
./font-patcher overpass-heavy.otf  --powerline --pomicons --material
./font-patcher overpass-heavy.otf  --powerline --pomicons
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerline --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerline --powerlineextra
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerline --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerline --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerline --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerline --powersymbols --material
./font-patcher overpass-heavy.otf  --powerline --powersymbols
./font-patcher overpass-heavy.otf  --powerline --weather --material
./font-patcher overpass-heavy.otf  --powerline --weather
./font-patcher overpass-heavy.otf  --powerline --material
./font-patcher overpass-heavy.otf  --powerline
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesome
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --octicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --windows
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesome
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --octicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontlogos
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --pomicons
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powerlineextra
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --fontawesomeextension
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powersymbols --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powersymbols --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --powersymbols
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --weather --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --weather
./font-patcher overpass-heavy.otf  --use-single-width-glyphs --material
./font-patcher overpass-heavy.otf  --use-single-width-glyphs
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --octicons
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesome --weather
./font-patcher overpass-heavy.otf  --windows --fontawesome --material
./font-patcher overpass-heavy.otf  --windows --fontawesome
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontlogos
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --windows --octicons --pomicons
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --octicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --octicons --weather --material
./font-patcher overpass-heavy.otf  --windows --octicons --weather
./font-patcher overpass-heavy.otf  --windows --octicons --material
./font-patcher overpass-heavy.otf  --windows --octicons
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --windows --fontlogos --weather
./font-patcher overpass-heavy.otf  --windows --fontlogos --material
./font-patcher overpass-heavy.otf  --windows --fontlogos
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --windows --pomicons --weather --material
./font-patcher overpass-heavy.otf  --windows --pomicons --weather
./font-patcher overpass-heavy.otf  --windows --pomicons --material
./font-patcher overpass-heavy.otf  --windows --pomicons
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --windows --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra --weather
./font-patcher overpass-heavy.otf  --windows --powerlineextra --material
./font-patcher overpass-heavy.otf  --windows --powerlineextra
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --windows --fontawesomeextension
./font-patcher overpass-heavy.otf  --windows --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --windows --powersymbols --weather
./font-patcher overpass-heavy.otf  --windows --powersymbols --material
./font-patcher overpass-heavy.otf  --windows --powersymbols
./font-patcher overpass-heavy.otf  --windows --weather --material
./font-patcher overpass-heavy.otf  --windows --weather
./font-patcher overpass-heavy.otf  --windows --material
./font-patcher overpass-heavy.otf  --windows
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontlogos
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --pomicons
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --octicons --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons --weather
./font-patcher overpass-heavy.otf  --fontawesome --octicons --material
./font-patcher overpass-heavy.otf  --fontawesome --octicons
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos --material
./font-patcher overpass-heavy.otf  --fontawesome --fontlogos
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --weather
./font-patcher overpass-heavy.otf  --fontawesome --pomicons --material
./font-patcher overpass-heavy.otf  --fontawesome --pomicons
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontawesome --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesome --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontawesome --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesome --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesome --powersymbols
./font-patcher overpass-heavy.otf  --fontawesome --weather --material
./font-patcher overpass-heavy.otf  --fontawesome --weather
./font-patcher overpass-heavy.otf  --fontawesome --material
./font-patcher overpass-heavy.otf  --fontawesome
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos --weather
./font-patcher overpass-heavy.otf  --octicons --fontlogos --material
./font-patcher overpass-heavy.otf  --octicons --fontlogos
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --octicons --pomicons --weather --material
./font-patcher overpass-heavy.otf  --octicons --pomicons --weather
./font-patcher overpass-heavy.otf  --octicons --pomicons --material
./font-patcher overpass-heavy.otf  --octicons --pomicons
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --octicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --octicons --powerlineextra
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --octicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --octicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --octicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --octicons --powersymbols --material
./font-patcher overpass-heavy.otf  --octicons --powersymbols
./font-patcher overpass-heavy.otf  --octicons --weather --material
./font-patcher overpass-heavy.otf  --octicons --weather
./font-patcher overpass-heavy.otf  --octicons --material
./font-patcher overpass-heavy.otf  --octicons
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --weather
./font-patcher overpass-heavy.otf  --fontlogos --pomicons --material
./font-patcher overpass-heavy.otf  --fontlogos --pomicons
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --weather
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra --material
./font-patcher overpass-heavy.otf  --fontlogos --powerlineextra
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontlogos --fontawesomeextension
./font-patcher overpass-heavy.otf  --fontlogos --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontlogos --powersymbols --material
./font-patcher overpass-heavy.otf  --fontlogos --powersymbols
./font-patcher overpass-heavy.otf  --fontlogos --weather --material
./font-patcher overpass-heavy.otf  --fontlogos --weather
./font-patcher overpass-heavy.otf  --fontlogos --material
./font-patcher overpass-heavy.otf  --fontlogos
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --weather
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra --material
./font-patcher overpass-heavy.otf  --pomicons --powerlineextra
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --pomicons --fontawesomeextension
./font-patcher overpass-heavy.otf  --pomicons --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --pomicons --powersymbols --weather
./font-patcher overpass-heavy.otf  --pomicons --powersymbols --material
./font-patcher overpass-heavy.otf  --pomicons --powersymbols
./font-patcher overpass-heavy.otf  --pomicons --weather --material
./font-patcher overpass-heavy.otf  --pomicons --weather
./font-patcher overpass-heavy.otf  --pomicons --material
./font-patcher overpass-heavy.otf  --pomicons
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --powerlineextra --fontawesomeextension
./font-patcher overpass-heavy.otf  --powerlineextra --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powerlineextra --powersymbols --weather
./font-patcher overpass-heavy.otf  --powerlineextra --powersymbols --material
./font-patcher overpass-heavy.otf  --powerlineextra --powersymbols
./font-patcher overpass-heavy.otf  --powerlineextra --weather --material
./font-patcher overpass-heavy.otf  --powerlineextra --weather
./font-patcher overpass-heavy.otf  --powerlineextra --material
./font-patcher overpass-heavy.otf  --powerlineextra
./font-patcher overpass-heavy.otf  --fontawesomeextension --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --fontawesomeextension --powersymbols --weather
./font-patcher overpass-heavy.otf  --fontawesomeextension --powersymbols --material
./font-patcher overpass-heavy.otf  --fontawesomeextension --powersymbols
./font-patcher overpass-heavy.otf  --fontawesomeextension --weather --material
./font-patcher overpass-heavy.otf  --fontawesomeextension --weather
./font-patcher overpass-heavy.otf  --fontawesomeextension --material
./font-patcher overpass-heavy.otf  --fontawesomeextension
./font-patcher overpass-heavy.otf  --powersymbols --weather --material
./font-patcher overpass-heavy.otf  --powersymbols --weather
./font-patcher overpass-heavy.otf  --powersymbols --material
./font-patcher overpass-heavy.otf  --powersymbols
./font-patcher overpass-heavy.otf  --weather --material
./font-patcher overpass-heavy.otf  --weather
./font-patcher overpass-heavy.otf  --material
```