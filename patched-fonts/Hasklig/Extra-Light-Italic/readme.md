_N.B. This is a fork of the_ [Source Code Pro repository](https://github.com/adobe-fonts/source-code-pro)

### Hasklig – _Ligatures for code_

Programming languages are limited to relatively few characters. As a result, combined character operators surfaced quite early, such as the widely used arrow (`->`), comprised of a hyphen and greater sign. It looks like an arrow if you know the analogy and squint a bit.

Composite glyphs are problematic in languages such as Haskell which utilize these complicated operators (`=>` `-<` `>>=` etc.) extensively. The readability of such complex code improves with pretty printing. Academic articles featuring Haskell code often use [lhs2tex](https://www.andres-loeh.de/lhs2tex/) to achieve an appealing rendering, but it is of no use when programming.

Some Haskellers have resorted to Unicode symbols (`⇒`, `←` _etc._), which are valid in the <span style="font-variant: small-caps">ghc</span>. However they are one-character-wide and therefore eye-strainingly small. Furthermore, when displayed as substitutes to the underlying multi-character representation, as [vim2hs](https://github.com/dag/vim2hs) does, the characters go out of alignment.

Hasklig solves the problem the way typographers have always solved ill-fitting characters which co-occur often: [ligatures](https://en.wikipedia.org/wiki/Typographic_ligature). The underlying code stays the same — only the representation changes.

Not only can multi-character glyphs be rendered more vividly, other problematic things in monospaced fonts, such as spacing can be corrected.

[**Download Hasklig Font Family v1.1**](https://github.com/i-tu/Hasklig/releases/download/1.1/Hasklig-1.1.zip)

#### Hasklig
![Hasklig Sample](hasklig_example.png?raw=true)

#### Source Code Pro
![Source Code Pro Sample](SourceCodeProSample.png?raw=true)

### Release notes
+ [v1.1](https://github.com/i-tu/Hasklig/releases/tag/1.1)
    + New ligatures `->>`, `:::`, `>=>`, `<=<`, `<=>`, `<->`
    + Switched to newer version of calt code by [Nikita Prokopov](https://github.com/tonsky/FiraCode). It "doesn’t apply ligatures to long sequences of chars, e.g. !!!!, >>>>, etc"
    + Fixed `++` and `+++` line inconsistency in heavy italic weights
+ [v1.0](https://github.com/i-tu/Hasklig/releases/tag/1.0)
    + Updates to the latest version of SCP
    + Hasklig moves to a ligature substitution mechanism borrowed from the excellent [Fira Code by Nikita Prokopov](https://github.com/tonsky/FiraCode)
+ [v0.9]((https://github.com/i-tu/Hasklig/releases/download/0.9/Hasklig-0.9.zip)): This is a major update so YMMV. Please report any issues.
	+ Converted to UFO format and updated base fonts to benefit from work done on [Source Code Pro](https://github.com/adobe-fonts/source-code-pro/):
		- ***Italics!***
		- Greek & Cyrillic script support
		- Better powerline symbols
		- [Much, much more](https://github.com/adobe-fonts/source-code-pro/releases/tag/2.010R-ro%2F1.030R-it)
	- Added tags that enable support for some IntelliJ IDEA Builds
+ v0.4: New ligatures: `<*` `<*>` `<+>` `<$>` `***`  `<|>` `!!` `||` `===` `==>`,  [Powerline](https://github.com/powerline/powerline) symbol support
+ v0.3: New ligatures: `<<<` `>>>` `<>` and `+++`
+ v0.2: Lengthened `==` and `/=` to match other equals signs
+ v0.1: Ligatures `<-` `->` `=>` `>>` `<<` `>>=` `=<<` `..` `...` `::` `-<` `>-` `-<<` `>>-` `++` `/=` and `==`

#### Currently implemented symbols
`<*` `<*>` `<+>` `<$>` `***` `<|` `|>`  `<|>` `!!` `||` `===` `==>` `<<<` `>>>` `<>` `+++` `<-` `->` `=>` `>>` `<<` `>>=` `=<<` `..` `...` `::` `-<` `>-` `-<<` `>>-` `++` `/=` `==`

#### Editor Support
This list is compiled based on reports on the current state of support for code editors and terminals. This list

#### Supported editors
+ Atom (*[since v1.1.0](http://blog.atom.io/2015/10/29/atom-1-1-is-out.html)*)
  - Can also be installed as package courtesy of [atom-hasklig](https://atom.io/packages/hasklig) by [adilparvez](https://github.com/adilparvez)
+ BBEdit 11 ([Instructions](https://github.com/i-tu/Hasklig/issues/3#issue-46601683))
+ Brackets
+ Chocolat
+ Geany
+ gEdit
+ iTerm2 (*[Currently only using beta build – 3.1 and onwards](https://gitlab.com/gnachman/iterm2/issues/3568#note_13118332)*)
+ Kate
+ Konsole
+ KWrite
+ Leksah (_x64 W8 reported not working_)
+ Light Table ([Instructions](https://github.com/LightTable/LightTable/issues/1459#issuecomment-57366504))
+ MacVim (_Since release 79. See [Issue 32](https://github.com/i-tu/Hasklig/issues/32)_)
+ QtCreator (_v.3.2.2 on GNU/Linux x64_)
+ RStudio
+ Smultron
+ Sublime Text 3
+ Terminal (OSX)
+ TextEdit
+ TextMate (_from version 2.0-alpha.9549 onwards_)
+ Vico
+ Visual Studio 2015
+ Visual Studio Code
+ Xcode (requires [an additional plugin](https://github.com/robertvojta/LigatureXcodePlugin))
+ IntelliJ IDEA (*[since v2016.2](https://blog.jetbrains.com/idea/2016/07/intellij-idea-2016-2-is-here)*)

#### No support
- Emacs
- gVim (_output corrupted. A_ [patch](https://groups.google.com/forum/#!topic/vim_dev/0sETSAwe5Wo) _exists, but it has not been incorporated into mainstream gVim._)
- KDevelop 4
- Notepad++
- Xamarin Studio/Monodevelop


### Building the fonts from source

#### Requirements

To build the binary font files from source, you need to have installed the
[Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html) (AFDKO). The AFDKO
tools are widely used for font development today, and are part of most font
editor applications.

Some SVG glyphs are inserted into the fonts using Python [FontTools](https://pypi.python.org/pypi/FontTools).

#### Building font instances from masters

This repository only includes so-called *master* weights of the fonts (effectively extralight and black).
The shapes of the weights in between these extremities are calculated by `makeInstancesUFO` supplied with `.designspace` files.
For convenience, the shell script **buildInstances** is provided, which  executes `makeInstancesUFO`, calculating all the italic and regular font weight shapes.

```sh
$ ./buildInstances.sh
```

#### Building one font

The key to building OTF or TTF fonts is `makeotf`, which is part of the AFDKO toolset.
Information and usage instructions can be found by executing `makeotf -h`.

In this repository, all necessary files are in place for building the OTF and TTF fonts.
For example, build a binary OTF font for the Regular style like this:

```sh
$ cd Roman/Regular/
$ makeotf -r
```

#### Building all fonts

For convenience, a shell script named **build** is provided in the root directory.
It builds all OTFs and TTFs, and can be executed by typing:

```sh
$ ./build.sh
```

or this on Windows:

```sh
> build.cmd
```


### Credits
Original idea, design and implementation of code ligatures by Ian Tuomi 2014-2015.
This typeface extends [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) with ligatures.

## Why `Hasklug` and not `Hasklig`?

What's in a name? The reason for the name change is to comply with the SIL Open Font License (OFL), in particular the [Reserved Font Name mechanism][SIL-RFN]

Some fonts have parts of their name "reserved" per the [Reserved Font Name mechanism][SIL-RFN]:
> No Modified Version of the Font Software may use the Reserved Font
> Name(s) unless explicit written permission is granted by the corresponding
> Copyright Holder. This restriction only applies to the primary font name as
> presented to the users.

- The main goals seem to be to: `Avoid collisions`, `Protect authors`, `Minimize support`, and `Encourage derivatives`

See the [Reserved Font Name section][SIL-RFN] for additional information

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
# 2046 Possible Combinations:

./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesome
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --windows
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesome
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --weather
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs --material
./font-patcher Hasklig-ExtraLightIt.otf  --use-single-width-glyphs
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesome
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --windows --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows --weather
./font-patcher Hasklig-ExtraLightIt.otf  --windows --material
./font-patcher Hasklig-ExtraLightIt.otf  --windows
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesome
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --octicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --octicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontlogos
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --weather
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons --material
./font-patcher Hasklig-ExtraLightIt.otf  --pomicons
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --weather
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra --material
./font-patcher Hasklig-ExtraLightIt.otf  --powerlineextra
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --weather
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension --material
./font-patcher Hasklig-ExtraLightIt.otf  --fontawesomeextension
./font-patcher Hasklig-ExtraLightIt.otf  --powersymbols --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --powersymbols --weather
./font-patcher Hasklig-ExtraLightIt.otf  --powersymbols --material
./font-patcher Hasklig-ExtraLightIt.otf  --powersymbols
./font-patcher Hasklig-ExtraLightIt.otf  --weather --material
./font-patcher Hasklig-ExtraLightIt.otf  --weather
./font-patcher Hasklig-ExtraLightIt.otf  --material
```