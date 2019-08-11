# DaddyTimeMono
A monospaced font for programmers and other terminal groupies.

**TTF** file is in `./build` directory.

![DaddyTimeMono Font Sample](DaddyTimeMono-sample.gif)

## Currently Featured

- Unaccented Alphabet
- Numerals
- Punctuation
- Box-Drawing Characters
- CJK Fullwidth Unaccented Alphabet
- CJK Fullwidth Numerals
- CJK Fullwidth Punctuation
- CP437/ANSI Line Drawing & Box-Fill Characters

## TODO Features

- CP437/ANSI Box-Fill Character Width
- Accented Latin Characters
- Powerline Symbols
- Possibly Cyrillic

## Credits
Digits inspired by the [Corona PPC-400](https://en.wikipedia.org/wiki/Corona_Data_Systems#Corona_PPC-400) BIOS font.

![PPC-400 BIOS Font](cordata-font.png)

All other characters by Jason Stewart.

### Special thanks to:

- George Williams and the entire [FontForge](http://fontforge.github.io/en-US/) team for making a useful creative tool freely available.
- The [ttfautohint](https://www.freetype.org/ttfautohint/) team and their fantastic tool for making this font usable at lower resolutions.
- Ricardo Bánffy of [3270 font](https://github.com/rbanffy/3270font) fame for sharing an image of the Cordata PPC-400 BIOS font.
- Whoever designed the PPC-400 font back in the day that has provided such sweet, sweet inspiration.

## Notes

- If you're using PuTTY, you will need to check "*allow selection of variable-pitch fonts*" for DaddyTimeMono to appear in the fonts dialog.  The CJK fullwidth characters are twice the width of all other characters, and prevent PuTTY from recognizing it as a monospaced font.

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

