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
  * If you want to have bigger icons (usually around 1.5 normal letters wide) pick a font without `'Mono'` suffix. Most terminals support this, but ymmv.

### Ligatures

Ligatures are generally preserved in the patched fonts.
Nerd Fonts `v2.0.0` had no ligatures in the `Nerd Font Mono` fonts, this has been dropped with `v2.1.0`.
If you have a ligature-aware terminal and don't want ligatures you can (usually) disable them in the terminal settings.

### Explanation

Once you narrow down your font choice of family (`Droid Sans`, `Inconsolata`, etc) and style (`bold`, `italic`, etc) you have 2 main choices:

#### `Option 1: Download already patched font`

 * For a stable version download a font package from the [release page](https://github.com/ryanoasis/nerd-fonts/releases)
 * Or download the development version from the `complete` folder here

#### `Option 2: Patch your own font`

 * patch your own variations with the various options provided by the font patcher (see each font's readme for full list of combinations available)
   * This is the option you want if the font you use is _not_ already included or you want maximum control of what's included
   * This contains a list of _all permutations_ of the various glyphs. E.g. You want the font with only [Octicons][octicons] or you want the font with just [Font Awesome][font-awesome] and [Devicons][vorillaz-devicons].


For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)


[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/primer/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a

