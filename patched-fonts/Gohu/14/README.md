# Gohufont

A font for programming and terminal use.
TrueType automatically traced, with available bitmaps in heights of 11 and 14 pixels.

Copyright 2010 by Hugo Chargois (http://font.gohu.eu)
Converted by Guilherme Maeda (github.com/koemaeda)

**Thanks and aknowledgments**

The Unicode versions of the 11px font are based extensively on the fixed 6x10 font by Markus Kuhn (http://www.cl.cam.ac.uk/~mgk25/ucs-fonts.html).
I used the Terminus font in 14 px with great satisfaction for a long time before I decided to make gohufont 14 px, so it surely inspired me and they may share some similarities in appearance. It is not a derivative work though. Thanks to Dimitar Zhekov for his great font.

For more information have a look at the upstream websites: http://font.gohu.org/ https://github.com/koemaeda/gohufont-ttf

Version: 1.33

## Which font?

### TL;DR

* Pick your font family:
  * If you are limited to monospaced fonts (because of your terminal, etc) then pick a font with `Nerd Font Mono` (or `NFM`).
  * If you want to have bigger icons (usually around 1.5 normal letters wide) pick a font without `Mono` i.e. `Nerd Font` (or `NF`). Most terminals support this, but ymmv.
  * If you work in a proportional context (GUI elements or edit a presentation etc) pick a font with `Nerd Font Propo` (or `NFP`).

### Ligatures

Ligatures are generally preserved in the patched fonts.
Nerd Fonts `v2.0.0` had no ligatures in the `Nerd Font Mono` fonts, this has been dropped with `v2.1.0`.
If you have a ligature-aware terminal and don't want ligatures you can (usually) disable them in the terminal settings.

### Explanation

Once you narrow down your font choice of family (`Droid Sans`, `Inconsolata`, etc) and style (`bold`, `italic`, etc) you have 2 main choices:

#### `Option 1: Download already patched font`

 * For a stable version download a font package from the [release page](https://github.com/ryanoasis/nerd-fonts/releases)
 * Or download the development version from the folders here

#### `Option 2: Patch your own font`

 * Patch your own variations with the various options provided by the font patcher (i.e. not include all symbols for smaller font size)

For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)

[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a

