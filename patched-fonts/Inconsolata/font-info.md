# Inconsolata

Open-source Monospace Font for code listings by Raph Levien

## Changelog v.2.011

March 2018 glyph set expansion was complete by @appsforartists, which included:

- [x] Glyph Set expanded to include ligatures for ===, !==, =>, <=, >=, ->, <-

## Changelog v.2.001

August 2016 glyph set expansion was complete by Alexei Vanyashin ( [Cyreal][5] ), which included:

- [x] Glyph Set expanded to GF Latin Pro
- [x] Additional glyphs ⊕↑↗→↘↓↙←↖↔↕⇧⇨⇩⇦⬆⮕⬇⬅●○◆◇☹☺☻♠♣♥♦✓✔✕✗✘␣⎋⌂⇪⌧⌫⌦⌥⌘⏎�
- [x] Minor design improvements (trademark corner spurs)

Further reading: Inconsolata expansion project thread on [Google Fonts Discussions][6]

#### Supported glyphs sets:

* GF Latin Pro

![Inconsolata Preview](documentation/img/inco-preview.png)

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at:
[http://scripts.sil.org/OFL][4]

----

## Inconsolata Build Instructions



### Source Files

Inconsolata source files are available in `.glyphs` format located in the `/sources` directory.

### Font Export options

* TTF and OTF files should be exported into `/fonts/ttf` and `/fonts/otf` folders.

* `TTFs` should be generated from Glyphs App with `Autohint` option checked. At the moment there is no custom build script required to produce font files, since default TTFautohinting options suffice.

![Font Export Options](documentation/font-export.png)

* `OTFs` should be generated with these options:
	* [X] Remove Overlap
	* [X] Autohint
  * [ ] Save as TTF
	* [X] Export destination: $REPO_PATH/fonts/otf

----

## Copyright

Copyright 2006 The Inconsolata Project Authors

## Links

* [Inconsolata on Google Fonts][1]
* [Inconsolata on Levien.com][2]
* [Official Upstream on git][3]

[1]: https://fonts.google.com/specimen/Inconsolata
[2]: http://levien.com/type/myfonts/inconsolata.html
[3]: https://github.com/google/fonts/tree/master/ofl/inconsolata
[4]: http://scripts.sil.org/OFL
[5]: http://cyreal.org
[6]: https://groups.google.com/forum/#!searchin/googlefonts-discuss/inconsolata%7Csort:relevance/googlefonts-discuss/wgVuOx9yo5k/2QSUQ78CCQAJ

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

