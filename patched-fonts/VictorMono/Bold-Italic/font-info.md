[<img src="https://github.com/rubjo/victor-mono/raw/master/public/header.gif" width="100%" alt="Header">](https://rubjo.github.io/victor-mono)

![GitHub release](https://img.shields.io/github/release/rubjo/victor-mono.svg)
![GitHub Release Date](https://img.shields.io/github/release-date/rubjo/victor-mono.svg)
![Travis (.org)](https://img.shields.io/travis/rubjo/victor-mono.svg?logo=travis)
![GitHub](https://img.shields.io/github/license/rubjo/victor-mono.svg)
![GitHub stars](https://img.shields.io/github/stars/rubjo/victor-mono.svg?style=social)

## A programming font with semi-connected cursive italics and symbol ligatures.

#### More information and download: [rubjo.github.io/victor-mono](https://rubjo.github.io/victor-mono). I would be grateful if you point others to the same URL.

#### For use in apps, web pages or other projects:
1. `npm i victormono` (installs Regular, Italic, Bold and Bold Italic styles)
2. `import 'victormono'` (in a typical modern setup, eg. webpack)
3. Style classes with `font-family: 'Victor Mono'`, `font-weight` and `font-style`

##### Alternative CDN hosting,  best for online editors like [CodePen](https://codepen.io/tomByrer/pen/MWWagVp):
1. `<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/victormono@latest/dist/index.min.css">` in `<head>` or top of `<body>`
2. Style classes with `font-family: 'Victor Mono', monospace`

#### If you like it and want to say thanks, [donations](https://www.paypal.me/runbjo) are welcome. ❤️

[<img src="https://github.com/rubjo/victor-mono/raw/master/public/code-sample.png" align="right" width="100%" alt="Code sample">](https://rubjo.github.io/victor-mono)
### &nbsp;
[<img src="https://github.com/rubjo/victor-mono/raw/master/public/powerline-cropped.png" align="right" alt="Powerline">](https://rubjo.github.io/victor-mono)
### &nbsp;
[<img src="https://github.com/rubjo/victor-mono/raw/master/public/specimens-cropped.png" align="right" alt="Specimens">](https://rubjo.github.io/victor-mono)
### &nbsp;
[<img src="https://github.com/rubjo/victor-mono/raw/master/src/assets/img/glyphs-dark.png" align="right" alt="Design">](https://rubjo.github.io/victor-mono)

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

