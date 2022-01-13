# 3270


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

./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --windows
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesome
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --octicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontlinux
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --pomicons
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --powersymbols
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --weather --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --weather
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs --material
./font-patcher 3270Narrow.otf  --powerline --use-single-width-glyphs
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --octicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesome
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --octicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --octicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontlinux
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --windows --pomicons
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --windows --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --windows --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --windows --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --windows --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --windows --powersymbols
./font-patcher 3270Narrow.otf  --powerline --windows --weather --material
./font-patcher 3270Narrow.otf  --powerline --windows --weather
./font-patcher 3270Narrow.otf  --powerline --windows --material
./font-patcher 3270Narrow.otf  --powerline --windows
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --octicons
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesome --material
./font-patcher 3270Narrow.otf  --powerline --fontawesome
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontlinux
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --octicons --pomicons
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --octicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --octicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --octicons --weather
./font-patcher 3270Narrow.otf  --powerline --octicons --material
./font-patcher 3270Narrow.otf  --powerline --octicons
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux --weather
./font-patcher 3270Narrow.otf  --powerline --fontlinux --material
./font-patcher 3270Narrow.otf  --powerline --fontlinux
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --powerline --pomicons --weather --material
./font-patcher 3270Narrow.otf  --powerline --pomicons --weather
./font-patcher 3270Narrow.otf  --powerline --pomicons --material
./font-patcher 3270Narrow.otf  --powerline --pomicons
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerline --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerline --powerlineextra
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerline --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerline --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerline --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerline --powersymbols --material
./font-patcher 3270Narrow.otf  --powerline --powersymbols
./font-patcher 3270Narrow.otf  --powerline --weather --material
./font-patcher 3270Narrow.otf  --powerline --weather
./font-patcher 3270Narrow.otf  --powerline --material
./font-patcher 3270Narrow.otf  --powerline
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesome
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --octicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --windows
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesome
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --octicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontlinux
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --pomicons
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powerlineextra
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --fontawesomeextension
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powersymbols --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powersymbols --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --powersymbols
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --weather --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --weather
./font-patcher 3270Narrow.otf  --use-single-width-glyphs --material
./font-patcher 3270Narrow.otf  --use-single-width-glyphs
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --octicons
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesome --weather
./font-patcher 3270Narrow.otf  --windows --fontawesome --material
./font-patcher 3270Narrow.otf  --windows --fontawesome
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontlinux
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --windows --octicons --pomicons
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --octicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --octicons --weather --material
./font-patcher 3270Narrow.otf  --windows --octicons --weather
./font-patcher 3270Narrow.otf  --windows --octicons --material
./font-patcher 3270Narrow.otf  --windows --octicons
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --windows --fontlinux --weather
./font-patcher 3270Narrow.otf  --windows --fontlinux --material
./font-patcher 3270Narrow.otf  --windows --fontlinux
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --windows --pomicons --weather --material
./font-patcher 3270Narrow.otf  --windows --pomicons --weather
./font-patcher 3270Narrow.otf  --windows --pomicons --material
./font-patcher 3270Narrow.otf  --windows --pomicons
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --windows --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra --weather
./font-patcher 3270Narrow.otf  --windows --powerlineextra --material
./font-patcher 3270Narrow.otf  --windows --powerlineextra
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --windows --fontawesomeextension
./font-patcher 3270Narrow.otf  --windows --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --windows --powersymbols --weather
./font-patcher 3270Narrow.otf  --windows --powersymbols --material
./font-patcher 3270Narrow.otf  --windows --powersymbols
./font-patcher 3270Narrow.otf  --windows --weather --material
./font-patcher 3270Narrow.otf  --windows --weather
./font-patcher 3270Narrow.otf  --windows --material
./font-patcher 3270Narrow.otf  --windows
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontlinux
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --pomicons
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --octicons --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons --weather
./font-patcher 3270Narrow.otf  --fontawesome --octicons --material
./font-patcher 3270Narrow.otf  --fontawesome --octicons
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux --material
./font-patcher 3270Narrow.otf  --fontawesome --fontlinux
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --weather
./font-patcher 3270Narrow.otf  --fontawesome --pomicons --material
./font-patcher 3270Narrow.otf  --fontawesome --pomicons
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontawesome --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesome --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontawesome --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesome --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesome --powersymbols
./font-patcher 3270Narrow.otf  --fontawesome --weather --material
./font-patcher 3270Narrow.otf  --fontawesome --weather
./font-patcher 3270Narrow.otf  --fontawesome --material
./font-patcher 3270Narrow.otf  --fontawesome
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux --weather
./font-patcher 3270Narrow.otf  --octicons --fontlinux --material
./font-patcher 3270Narrow.otf  --octicons --fontlinux
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --octicons --pomicons --weather --material
./font-patcher 3270Narrow.otf  --octicons --pomicons --weather
./font-patcher 3270Narrow.otf  --octicons --pomicons --material
./font-patcher 3270Narrow.otf  --octicons --pomicons
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --octicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --octicons --powerlineextra
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --octicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --octicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --octicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --octicons --powersymbols --material
./font-patcher 3270Narrow.otf  --octicons --powersymbols
./font-patcher 3270Narrow.otf  --octicons --weather --material
./font-patcher 3270Narrow.otf  --octicons --weather
./font-patcher 3270Narrow.otf  --octicons --material
./font-patcher 3270Narrow.otf  --octicons
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --weather
./font-patcher 3270Narrow.otf  --fontlinux --pomicons --material
./font-patcher 3270Narrow.otf  --fontlinux --pomicons
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --weather
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra --material
./font-patcher 3270Narrow.otf  --fontlinux --powerlineextra
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontlinux --fontawesomeextension
./font-patcher 3270Narrow.otf  --fontlinux --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontlinux --powersymbols --material
./font-patcher 3270Narrow.otf  --fontlinux --powersymbols
./font-patcher 3270Narrow.otf  --fontlinux --weather --material
./font-patcher 3270Narrow.otf  --fontlinux --weather
./font-patcher 3270Narrow.otf  --fontlinux --material
./font-patcher 3270Narrow.otf  --fontlinux
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --weather
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra --material
./font-patcher 3270Narrow.otf  --pomicons --powerlineextra
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --pomicons --fontawesomeextension
./font-patcher 3270Narrow.otf  --pomicons --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --pomicons --powersymbols --weather
./font-patcher 3270Narrow.otf  --pomicons --powersymbols --material
./font-patcher 3270Narrow.otf  --pomicons --powersymbols
./font-patcher 3270Narrow.otf  --pomicons --weather --material
./font-patcher 3270Narrow.otf  --pomicons --weather
./font-patcher 3270Narrow.otf  --pomicons --material
./font-patcher 3270Narrow.otf  --pomicons
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --powerlineextra --fontawesomeextension
./font-patcher 3270Narrow.otf  --powerlineextra --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powerlineextra --powersymbols --weather
./font-patcher 3270Narrow.otf  --powerlineextra --powersymbols --material
./font-patcher 3270Narrow.otf  --powerlineextra --powersymbols
./font-patcher 3270Narrow.otf  --powerlineextra --weather --material
./font-patcher 3270Narrow.otf  --powerlineextra --weather
./font-patcher 3270Narrow.otf  --powerlineextra --material
./font-patcher 3270Narrow.otf  --powerlineextra
./font-patcher 3270Narrow.otf  --fontawesomeextension --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --fontawesomeextension --powersymbols --weather
./font-patcher 3270Narrow.otf  --fontawesomeextension --powersymbols --material
./font-patcher 3270Narrow.otf  --fontawesomeextension --powersymbols
./font-patcher 3270Narrow.otf  --fontawesomeextension --weather --material
./font-patcher 3270Narrow.otf  --fontawesomeextension --weather
./font-patcher 3270Narrow.otf  --fontawesomeextension --material
./font-patcher 3270Narrow.otf  --fontawesomeextension
./font-patcher 3270Narrow.otf  --powersymbols --weather --material
./font-patcher 3270Narrow.otf  --powersymbols --weather
./font-patcher 3270Narrow.otf  --powersymbols --material
./font-patcher 3270Narrow.otf  --powersymbols
./font-patcher 3270Narrow.otf  --weather --material
./font-patcher 3270Narrow.otf  --weather
./font-patcher 3270Narrow.otf  --material
```