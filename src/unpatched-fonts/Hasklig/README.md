_N.B. This is a fork of the_ [Source Code Pro repository](https://github.com/adobe-fonts/source-code-pro)

### Hasklig – _Ligatures for code_

Programming languages are limited to relatively few characters. As a result, combined character operators surfaced quite early, such as the widely used arrow (`->`), comprised of a hyphen and greater sign. It looks like an arrow if you know the analogy and squint a bit.

Composite glyphs are problematic in languages such as Haskell which utilize these complicated operators (`=>` `-<` `>>=` etc.) extensively. The readability of such complex code improves with pretty printing. Academic articles featuring Haskell code often use [lhs2tex](https://www.andres-loeh.de/lhs2tex/) to achieve an appealing rendering, but it is of no use when programming.

Some Haskellers have resorted to Unicode symbols (`⇒`, `←` _etc._), which are valid in the <span style="font-variant: small-caps">ghc</span>. However they are one-character-wide and therefore eye-strainingly small. Furthermore, when displayed as substitutes to the underlying multi-character representation, as [vim2hs] (https://github.com/dag/vim2hs) does, the characters go out of alignment.

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
- Sublime Text (_Vote for the enhancement_ [**here**](http://sublimetext.userecho.com/topics/4719-does-sublimetext-support-programming-ligatures-fontlike-fira-code/))

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
