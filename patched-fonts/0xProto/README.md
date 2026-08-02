# 0xProto

A programming font focused on source code legibility.

For more information have a look at the upstream website: https://github.com/0xType/0xProto

Version: 2.502

## Icon sets

| Icon set name          | upstream                                              | version         | license     |
|------------------------|-------------------------------------------------------|-----------------|-------------|
| Codicons               | https://github.com/microsoft/vscode-codicons          | 0.0.45          | CC BY 4.0   |
| Devicons               | https://github.com/devicons/devicon                   | 2.17.0          | MIT         |
| extraglyphs            | https://github.com/source-foundry/Hack                | -               | MIT         |
| Font Awesome           | https://github.com/FortAwesome/Font-Awesome           | 6.5.1           | CC BY 4.0   |
| Font Awesome Extension | https://github.com/AndreLZGava/font-awesome-extension | 0.0.3           | MIT         |
| Font Logos             | https://github.com/lukas-w/font-logos                 | 1.3.0           | unlicensed  |
| MaterialDesign         | https://github.com/Templarian/MaterialDesign-Font     | Oct 6, 2022     | Apache 2.0  |
| Octicons               | https://github.com/primer/octicons                    | 18.3.0          | MIT         |
| Seti and original      | https://github.com/jesseweed/seti-ui                  | 0.8.1           | MIT         |
| Pomicons               | https://github.com/gabrielelana/pomicons              | 1.001           | OFL 1.1 RFN |
| Powerline Extra        | https://github.com/ryanoasis/powerline-extra-symbols  | 1.200           | MIT         |
| Powerline Symbols      | https://github.com/powerline/powerline                | 1.000 (ca 2013) | MIT         |
| Power Symbols IEC      | https://github.com/jloughry/Unicode                   | Feb 2015        | MIT         |
| Weather Icons          | https://github.com/erikflowers/weather-icons          | 2.0.10 (1.100)  | OFL 1.1     |

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
   * [0xProto.zip](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/0xProto.zip)
   * [0xProto.tar.xz](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/0xProto.tar.xz) (smaller)

#### `Option 2: Patch your own font`

 * Patch your own variations with the various options provided by the font patcher (i.e. not include all symbols for smaller font size)

For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)

[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a

