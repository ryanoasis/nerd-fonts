* agave

*** about

*agave* is a fixed-width outline typeface, designed by [[https://b.agaric.net/about][type agaric]].

Free to use, peruse, and diffuse. Everything (font files, glyph designs, glyph databases, and documentation) is released under the [[https://raw.githubusercontent.com/agarick/agave/master/LICENSE][MIT license]].

*more about:* [[https://b.agaric.net/page/agave]]

*** status (ver. 10)

- regular:
  - *done:* ascii; latin ext; greek; cyrillic; math; ipa; arrows; box; powerline; etc.
  - *todo:* more glyphs here and there

- bold:
  - /in progress (agave-b.ttf not ready for regular use)/

- italic:
  - /yet to be designed/

*** distribution

The =ttf= font files are placed in =dist/=.

- Variants are named =agave-?.ttf=, where =?= stands for =r=, =b=, =i=, or =z=, representing =regular=, =bold=, =italic=, and =bold+italic= respectively.
- Only the =r= variant is usable as of yet.

Source templates, designs, and databases can be found in =src/=.

*** preview

*glyph distinction*, in ASCII:

[[https://raw.githubusercontent.com/agarick/agave/master/img/ascii.png]]

*geometric rationale*, sampling the regular Latin letter "b":

[[https://raw.githubusercontent.com/agarick/agave/master/img/metric.png]]

*terminal*:

[[https://raw.githubusercontent.com/agarick/agave/master/img/term.png]]

*literary text*, sampling ASCII, Greek, and Cyrillic:

[[https://raw.githubusercontent.com/agarick/agave/master/img/text.png]]

*** naming

- "Agave" refers either to the green plant or to the daughter of Kadmos in mythology.
- Agave is sister to [[https://github.com/agarick/autonoe][autonoe]] and [[https://github.com/agarick/ino][ino]].
- *type agaric* opted for a slightly eponymic name for their first typeface.

*** discussion

Feedback, questions, suggestions, etc. are welcome and encouraged.

Feel free to use the [[https://github.com/agarick/agave/issues][issue tracker]] or contact *type agaric* via email at =agaric@protonmail.com=.

*** thanks

... foremost to the respective persons/teams behind FontForge and Inkscape, as I relied on the two programs to design, draw, and generate *agave*,

to GitHub for hosting this repo,

and to all the users ♥

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

