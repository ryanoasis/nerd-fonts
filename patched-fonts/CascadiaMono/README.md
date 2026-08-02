# Cascadia Mono

**Cascadia Mono** is a fun, new monospaced font, Cascadia Code without ligatures.

For more information have a look at the upstream website: https://github.com/microsoft/cascadia-code

Note that upstream has a version with Nerd Font icons: CascadiaMonoNF. That has not been created with the Nerd Fonts `font-patcher`.

## Preprocessed Source Font

This source font has been preprocessed - it is not taken directly from upstream.
Cascadia Code is mainly a variable font (VF) and the static versions (that Nerd Fonts
are based on) are prepared in a different way: They have been hinted with `ttfautohint`.
That hints differ considerably from the hints in the VF. That changes the rendering for
smaller sizes (usual sizes in terminals) considerably.

To get the 'original' (i.e. VF) feel of the font we redo the hints in the static versions:
Open the font with Microsoft's VisualTrueType (VTT) and apply Light Latin Autohint.
The issue is known upstream and will probably be fixed. But until it is fixed we need
to do this manual process on all source updates.

Version: 2407.24

## Why `CaskaydiaMono` and not `Cascadia Mono`?

What's in a name? The reason for the name change is to comply with the SIL Open Font License (OFL), in particular the [Reserved Font Name mechanism][SIL-RFN]

Some fonts have parts of their name "reserved" per the [Reserved Font Name mechanism][SIL-RFN]:
> No Modified Version of the Font Software may use the Reserved Font
> Name(s) unless explicit written permission is granted by the corresponding
> Copyright Holder. This restriction only applies to the primary font name as
> presented to the users.

- The main goals seem to be to: `Avoid collisions`, `Protect authors`, `Minimize support`, and `Encourage derivatives`

See the [Reserved Font Name section][SIL-RFN] for additional information

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
   * [CascadiaMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip)
   * [CascadiaMono.tar.xz](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.tar.xz) (smaller)

#### `Option 2: Patch your own font`

 * Patch your own variations with the various options provided by the font patcher (i.e. not include all symbols for smaller font size)

For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)

[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a

