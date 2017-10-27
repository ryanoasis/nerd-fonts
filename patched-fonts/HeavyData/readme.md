# HeavyData


## Which font?

### TL;DR

* Pick your font family and then select from the `'complete'` directory.
  * If you are on Windows pick a font with the `'Windows Compatible'` suffix.
    * This includes specific tweaks to ensure the font works on Windows, in particular monospace identification and font name length limitations
  * If you are limited to monospaced fonts (because of your terminal, etc) then pick a font with the `'Mono'` suffix.
    * This denotes that the Nerd Font glyphs will be monospaced not necessarily that the entire font will be monospaced

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
# 1022 Possible Combinations:

./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --windows
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesome
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --octicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontlinux
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --pomicons
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs --powersymbols
./font-patcher heavy_data.ttf  --powerline --use-single-width-glyphs
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --octicons
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesome
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --octicons
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontlinux
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --pomicons
./font-patcher heavy_data.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --powerlineextra
./font-patcher heavy_data.ttf  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --windows --powersymbols
./font-patcher heavy_data.ttf  --powerline --windows
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --octicons
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --pomicons
./font-patcher heavy_data.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesome
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontlinux
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --pomicons
./font-patcher heavy_data.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --octicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --octicons
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --pomicons
./font-patcher heavy_data.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontlinux
./font-patcher heavy_data.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --pomicons --powersymbols
./font-patcher heavy_data.ttf  --powerline --pomicons
./font-patcher heavy_data.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerline --powerlineextra
./font-patcher heavy_data.ttf  --powerline --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerline --fontawesomeextension
./font-patcher heavy_data.ttf  --powerline --powersymbols
./font-patcher heavy_data.ttf  --powerline
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --windows
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesome
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --octicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontlinux
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --pomicons
./font-patcher heavy_data.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher heavy_data.ttf  --use-single-width-glyphs --powersymbols
./font-patcher heavy_data.ttf  --use-single-width-glyphs
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --octicons
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --pomicons
./font-patcher heavy_data.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesome
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontlinux
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --pomicons
./font-patcher heavy_data.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --octicons --powersymbols
./font-patcher heavy_data.ttf  --windows --octicons
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --pomicons
./font-patcher heavy_data.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --windows --fontlinux
./font-patcher heavy_data.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --pomicons --powersymbols
./font-patcher heavy_data.ttf  --windows --pomicons
./font-patcher heavy_data.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --windows --powerlineextra
./font-patcher heavy_data.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --windows --fontawesomeextension
./font-patcher heavy_data.ttf  --windows --powersymbols
./font-patcher heavy_data.ttf  --windows
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontlinux
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --pomicons
./font-patcher heavy_data.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --octicons --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --octicons
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --pomicons
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontlinux
./font-patcher heavy_data.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --pomicons --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --pomicons
./font-patcher heavy_data.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --powerlineextra
./font-patcher heavy_data.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesome --fontawesomeextension
./font-patcher heavy_data.ttf  --fontawesome --powersymbols
./font-patcher heavy_data.ttf  --fontawesome
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --pomicons
./font-patcher heavy_data.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontlinux
./font-patcher heavy_data.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --octicons --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --pomicons --powersymbols
./font-patcher heavy_data.ttf  --octicons --pomicons
./font-patcher heavy_data.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --octicons --powerlineextra
./font-patcher heavy_data.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --octicons --fontawesomeextension
./font-patcher heavy_data.ttf  --octicons --powersymbols
./font-patcher heavy_data.ttf  --octicons
./font-patcher heavy_data.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --fontlinux --pomicons --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --pomicons
./font-patcher heavy_data.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --powerlineextra
./font-patcher heavy_data.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontlinux --fontawesomeextension
./font-patcher heavy_data.ttf  --fontlinux --powersymbols
./font-patcher heavy_data.ttf  --fontlinux
./font-patcher heavy_data.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --pomicons --powerlineextra
./font-patcher heavy_data.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --pomicons --fontawesomeextension
./font-patcher heavy_data.ttf  --pomicons --powersymbols
./font-patcher heavy_data.ttf  --pomicons
./font-patcher heavy_data.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --powerlineextra --fontawesomeextension
./font-patcher heavy_data.ttf  --powerlineextra --powersymbols
./font-patcher heavy_data.ttf  --powerlineextra
./font-patcher heavy_data.ttf  --fontawesomeextension --powersymbols
./font-patcher heavy_data.ttf  --fontawesomeextension
./font-patcher heavy_data.ttf  --powersymbols
```