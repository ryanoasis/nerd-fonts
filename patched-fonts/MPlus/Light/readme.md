M+ FONTS                                Copyright (C) 2002-2017 M+ FONTS PROJECT

-

README_E




M+ TESTFLIGHT

The M+ OUTLINE FONTS are distributed with proportional Latin (4 variations), fixed-halfwidth Latin (3 variations) and fixed-fullwidth Japanese (2 Kana variations) character set. 7 weights from Thin to Black are included, but fixed-halfwidth Latin with 5 weights from Thin to Bold.


PROPORTIONAL FONTS (proportional Latin and fixed-fullwidth Japanese)

M+ 1P     mplus-1p-thin.ttf
          mplus-1p-light.ttf
          mplus-1p-regular.ttf
          mplus-1p-medium.ttf
          mplus-1p-bold.ttf
          mplus-1p-heavy.ttf
          mplus-1p-black.ttf
          
M+ 2P     mplus-2p-thin.ttf
          mplus-2p-light.ttf
          mplus-2p-regular.ttf
          mplus-2p-medium.ttf
          mplus-2p-bold.ttf
          mplus-2p-heavy.ttf
          mplus-2p-black.ttf
          
M+ 1C     mplus-1c-thin.ttf
          mplus-1c-light.ttf
          mplus-1c-regular.ttf
          mplus-1c-medium.ttf
          mplus-1c-bold.ttf
          mplus-1c-heavy.ttf
          mplus-1c-black.ttf
          
M+ 2C     mplus-2c-thin.ttf
          mplus-2c-light.ttf
          mplus-2c-regular.ttf
          mplus-2c-medium.ttf
          mplus-2c-bold.ttf
          mplus-2c-heavy.ttf
          mplus-2c-black.ttf


FIXED-WIDTH FONTS (fixed-halfwidth Latin and fixed-fullwidth Japanese)

M+ 1M     mplus-1m-thin.ttf
          mplus-1m-light.ttf
          mplus-1m-regular.ttf
          mplus-1m-medium.ttf
          mplus-1m-bold.ttf
          
M+ 2M     mplus-2m-thin.ttf
          mplus-2m-light.ttf
          mplus-2m-regular.ttf
          mplus-2m-medium.ttf
          mplus-2m-bold.ttf

M+ 1MN    mplus-1mn-thin.ttf
          mplus-1mn-light.ttf
          mplus-1mn-regular.ttf
          mplus-1mn-medium.ttf
          mplus-1mn-bold.ttf

          


-

http://mplus-fonts.osdn.jp

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

./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --windows
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesome
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --octicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --weather
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs --material
./font-patcher mplus-2p-light.ttf  --powerline --use-single-width-glyphs
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesome
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --octicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --windows --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --windows --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --windows --weather
./font-patcher mplus-2p-light.ttf  --powerline --windows --material
./font-patcher mplus-2p-light.ttf  --powerline --windows
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesome
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --octicons --material
./font-patcher mplus-2p-light.ttf  --powerline --octicons
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux --material
./font-patcher mplus-2p-light.ttf  --powerline --fontlinux
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --weather
./font-patcher mplus-2p-light.ttf  --powerline --pomicons --material
./font-patcher mplus-2p-light.ttf  --powerline --pomicons
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerline --powerlineextra
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerline --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerline --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerline --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerline --powersymbols
./font-patcher mplus-2p-light.ttf  --powerline --weather --material
./font-patcher mplus-2p-light.ttf  --powerline --weather
./font-patcher mplus-2p-light.ttf  --powerline --material
./font-patcher mplus-2p-light.ttf  --powerline
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --windows
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesome
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --octicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontlinux
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --pomicons
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --powersymbols
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --weather --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --weather
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs --material
./font-patcher mplus-2p-light.ttf  --use-single-width-glyphs
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesome --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesome
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --octicons --weather
./font-patcher mplus-2p-light.ttf  --windows --octicons --material
./font-patcher mplus-2p-light.ttf  --windows --octicons
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --windows --fontlinux --material
./font-patcher mplus-2p-light.ttf  --windows --fontlinux
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons --weather
./font-patcher mplus-2p-light.ttf  --windows --pomicons --material
./font-patcher mplus-2p-light.ttf  --windows --pomicons
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --windows --powerlineextra
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --windows --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --windows --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --windows --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --windows --powersymbols --material
./font-patcher mplus-2p-light.ttf  --windows --powersymbols
./font-patcher mplus-2p-light.ttf  --windows --weather --material
./font-patcher mplus-2p-light.ttf  --windows --weather
./font-patcher mplus-2p-light.ttf  --windows --material
./font-patcher mplus-2p-light.ttf  --windows
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons --material
./font-patcher mplus-2p-light.ttf  --fontawesome --octicons
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontlinux
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons --material
./font-patcher mplus-2p-light.ttf  --fontawesome --pomicons
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesome --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontawesome --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesome --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesome --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesome --weather
./font-patcher mplus-2p-light.ttf  --fontawesome --material
./font-patcher mplus-2p-light.ttf  --fontawesome
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux --material
./font-patcher mplus-2p-light.ttf  --octicons --fontlinux
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --weather
./font-patcher mplus-2p-light.ttf  --octicons --pomicons --material
./font-patcher mplus-2p-light.ttf  --octicons --pomicons
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --octicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --octicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --octicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --octicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --octicons --powersymbols
./font-patcher mplus-2p-light.ttf  --octicons --weather --material
./font-patcher mplus-2p-light.ttf  --octicons --weather
./font-patcher mplus-2p-light.ttf  --octicons --material
./font-patcher mplus-2p-light.ttf  --octicons
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons --material
./font-patcher mplus-2p-light.ttf  --fontlinux --pomicons
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontlinux --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --fontlinux --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontlinux --powersymbols
./font-patcher mplus-2p-light.ttf  --fontlinux --weather --material
./font-patcher mplus-2p-light.ttf  --fontlinux --weather
./font-patcher mplus-2p-light.ttf  --fontlinux --material
./font-patcher mplus-2p-light.ttf  --fontlinux
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --pomicons --powerlineextra
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --pomicons --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --pomicons --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --pomicons --powersymbols --material
./font-patcher mplus-2p-light.ttf  --pomicons --powersymbols
./font-patcher mplus-2p-light.ttf  --pomicons --weather --material
./font-patcher mplus-2p-light.ttf  --pomicons --weather
./font-patcher mplus-2p-light.ttf  --pomicons --material
./font-patcher mplus-2p-light.ttf  --pomicons
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powerlineextra --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --powersymbols
./font-patcher mplus-2p-light.ttf  --powerlineextra --weather --material
./font-patcher mplus-2p-light.ttf  --powerlineextra --weather
./font-patcher mplus-2p-light.ttf  --powerlineextra --material
./font-patcher mplus-2p-light.ttf  --powerlineextra
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --powersymbols --material
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --powersymbols
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --weather --material
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --weather
./font-patcher mplus-2p-light.ttf  --fontawesomeextension --material
./font-patcher mplus-2p-light.ttf  --fontawesomeextension
./font-patcher mplus-2p-light.ttf  --powersymbols --weather --material
./font-patcher mplus-2p-light.ttf  --powersymbols --weather
./font-patcher mplus-2p-light.ttf  --powersymbols --material
./font-patcher mplus-2p-light.ttf  --powersymbols
./font-patcher mplus-2p-light.ttf  --weather --material
./font-patcher mplus-2p-light.ttf  --weather
./font-patcher mplus-2p-light.ttf  --material
```