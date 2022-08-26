# InconsolataGo

[Inconsolata]( http://levien.com/type/myfonts/inconsolata.html) with straight
quotes.

> I also have an experimental version (tentatively titled InconsolataGo) with
> straight quotes in the [inconsolata](http://levien.com/type/myfonts/inconsolata)
> directory here.

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

./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --windows
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --use-single-width-glyphs
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --windows
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --octicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerline --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerline --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerline --weather
./font-patcher InconsolataGo-Bold.sfd  --powerline --material
./font-patcher InconsolataGo-Bold.sfd  --powerline
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --octicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --windows
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --octicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --pomicons
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --weather --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --weather
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs --material
./font-patcher InconsolataGo-Bold.sfd  --use-single-width-glyphs
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --octicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --windows --pomicons
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --windows --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --windows --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --windows --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --windows --weather --material
./font-patcher InconsolataGo-Bold.sfd  --windows --weather
./font-patcher InconsolataGo-Bold.sfd  --windows --material
./font-patcher InconsolataGo-Bold.sfd  --windows
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --octicons
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --pomicons
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesome --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesome
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --pomicons
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --octicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --octicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --octicons --weather
./font-patcher InconsolataGo-Bold.sfd  --octicons --material
./font-patcher InconsolataGo-Bold.sfd  --octicons
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --pomicons
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --weather
./font-patcher InconsolataGo-Bold.sfd  --fontlinux --material
./font-patcher InconsolataGo-Bold.sfd  --fontlinux
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --pomicons --weather --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons --weather
./font-patcher InconsolataGo-Bold.sfd  --pomicons --material
./font-patcher InconsolataGo-Bold.sfd  --pomicons
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --weather
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra --material
./font-patcher InconsolataGo-Bold.sfd  --powerlineextra
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --weather --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --weather
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension --material
./font-patcher InconsolataGo-Bold.sfd  --fontawesomeextension
./font-patcher InconsolataGo-Bold.sfd  --powersymbols --weather --material
./font-patcher InconsolataGo-Bold.sfd  --powersymbols --weather
./font-patcher InconsolataGo-Bold.sfd  --powersymbols --material
./font-patcher InconsolataGo-Bold.sfd  --powersymbols
./font-patcher InconsolataGo-Bold.sfd  --weather --material
./font-patcher InconsolataGo-Bold.sfd  --weather
./font-patcher InconsolataGo-Bold.sfd  --material
```