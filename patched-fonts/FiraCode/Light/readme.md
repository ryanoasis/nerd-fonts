## Fira Code: monospaced font with programming ligatures

<img src="./showcases/fira_code_logo.svg">

### Problem

Programmers use a lot of symbols, often encoded with several characters. For the human brain, sequences like `->`, `<=` or `:=` are single logical tokens, even if they take two or three characters on the screen. Your eye spends a non-zero amount of energy to scan, parse and join multiple characters into a single logical one. Ideally, all programming languages should be designed with full-fledged Unicode symbols for operators, but that’s not the case yet.

### Solution

#### [Download v.2](https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip) · [How to install](https://github.com/tonsky/FiraCode/wiki) · [Troubleshooting](https://github.com/tonsky/FiraCode/wiki#troubleshooting) · [News & updates](https://twitter.com/FiraCode)

<a href="https://patreon.com/tonsky" target="_blank"><img src="./fira_code_patreon.png"></a>

Fira Code is an extension of the Fira Mono font containing a set of ligatures for common programming multi-character combinations. This is just a font rendering feature: underlying code remains ASCII-compatible. This helps to read and understand code faster. For some frequent sequences like `..` or `//`, ligatures allow us to correct spacing.

<img src="./showcases/all_ligatures.png">

### Code examples

Ruby:

<img src="./showcases/ruby.png">

JavaScript:

<img src="./showcases/javascript.png">

PHP:

<img src="./showcases/php.png">

Erlang:

<img src="./showcases/erlang.png">

Elixir:

<img src="/showcases/elixir.png">

Go:

<img src="./showcases/go.png">

LiveScript:

<img src="./showcases/livescript.png">

Clojure:

<img src="./showcases/clojure.png">

Swift:

<img src="./showcases/swift.png">

Stylistic sets:

See [How to enable](https://github.com/tonsky/FiraCode/wiki/How-to-enable-stylistic-sets)

<img src="./showcases/stylistic_sets.png">


### Terminal support

| Works              | Doesn’t work       |
| ------------------ | ------------------ |
| **Butterfly**      | **Alacritty**      |
| **crosh** (ChromeOS, [instructions](https://github.com/tonsky/FiraCode/wiki/ChromeOS-Terminal)) | **Windows Console (conhost.exe)** |
| **Hyper.app**      | **Cmder**          |
| **iTerm 2** ([3.1+](https://gitlab.com/gnachman/iterm2/issues/3568#note_13118332)) | **ConEmu** |
| **Kitty**          | **GNOME Terminal** |
| **Konsole**        | **mate-terminal**  | 
| **mintty** (partial support [2.8.3+](https://github.com/mintty/mintty/issues/601))| **PuTTY** |
| **QTerminal**      | **rxvt**           |
| **Terminal.app**   | **xterm**          |
| **Termux**         | **ZOC** (Windows)  |
| **Token2Shell/MD** | **gtkterm, guake, LXTerminal, sakura, Terminator, xfce4-terminal,** and other libvte-based terminals ([bug report](https://bugzilla.gnome.org/show_bug.cgi?id=584160)) |
| **upterm**         |
| **Windows Terminal** |
| **ZOC** (macOS)    |

### Editor support

| Works | Doesn’t work   |
| ----- | -------------- |
| **Abricotine** | **Arduino IDE** |
| **Android Studio** (2.3+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | **Adobe Dreamweaver** |
| **Anjuta** (unless at the EOF) | **Delphi IDE** |
| **AppCode** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | **Eclipse** (Win, [vote here](https://bugs.eclipse.org/bugs/show_bug.cgi?id=398656)) |
| **Atom** 1.1 or newer ([instructions](https://github.com/tonsky/FiraCode/wiki/Atom-instructions)) | Standalone **Emacs** ([workaround](https://github.com/tonsky/FiraCode/wiki/Emacs-instructions)) |
| **BBEdit/TextWrangler** (v. 11 only, [instructions](https://github.com/tonsky/FiraCode/wiki/BBEdit-instructions)) | **gVim** (Windows [workaround](https://github.com/tonsky/FiraCode/issues/462)) |
| **Brackets** (with [this plugin](https://github.com/polo2ro/firacode-in-brackets)) | **IDLE** |
| **Chocolat** | **KDevelop 4** |
| **CLion** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | **Monkey Studio IDE** |
| **Cloud9** ([instructions](https://github.com/tonsky/FiraCode/wiki/Cloud9-Instructions)) |  |
| **Coda 2** |  |
| **CodeLite** |  |
| **Eclipse** (Mac 4.7+, Linux) |  |
| **elementary Code** |  |
| **Geany** |
| **gEdit / Pluma** |
| **GNOME Builder** |
| **GoormIDE** ([instructions](https://github.com/tonsky/FiraCode/wiki/GoormIDE-Instructions)) |
| **IntelliJ IDEA** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **Kate, KWrite** |
| **KDevelop 5+** |
| **Komodo** |
| **Leafpad** |
| **LibreOffice** |
| **LightTable** ([instructions](https://github.com/tonsky/FiraCode/wiki/LightTable-instructions)) |
| **LINQPad** |
| **MacVim** 7.4 or newer ([instructions](https://github.com/tonsky/FiraCode/wiki/MacVim-instructions)) |
| **Mancy** |
| **Meld** |
| **Mousepad** |
| **NeoVim-gtk** |
| **NetBeans** |
| **Notepad** (Win) |
| **Notepad++** (with a [workaround](https://github.com/notepad-plus-plus/notepad-plus-plus/issues/2287#issuecomment-256638098))  |
| **PhpStorm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **PyCharm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **QtCreator** |
| **Rider** |
| **RStudio** ([instructions](https://github.com/tonsky/FiraCode/wiki/RStudio-instructions)) |
| **RubyMine** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **Scratch** |
| **Scribus** (1.5.3+) |
| **SublimeText** (3146+) |
| **Spyder IDE** (only with Qt5) |
| **SuperCollider 3** |
| **TextAdept** (Linux, Mac) |
| **TextEdit** |
| **TextMate 2** |
| **VimR** ([instructions](https://github.com/qvacua/vimr/wiki#ligatures)) |
| **Visual Studio** (2015+, [instructions](https://github.com/tonsky/FiraCode/wiki/Visual-Studio-Instructions)) |
| **Visual Studio Code** ([instructions](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions)) |
| **WebStorm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **Xamarin Studio/Monodevelop** |
| **Xcode** (8.0+, otherwise [with plugin](https://github.com/robertvojta/LigatureXcodePlugin)) |
| Probably work: **Smultron, Vico** | Under question: **Code::Blocks IDE** |

### Browser support

```html
<!-- HTML -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tonsky/FiraCode@1.207/distr/fira_code.css">
```

```css
/* CSS */
@import url(https://cdn.jsdelivr.net/gh/tonsky/FiraCode@1.207/distr/fira_code.css);
```

```css
/* Specify in CSS */
font-family: 'Fira Code', monospace;
```


- IE 10+, Edge: enable with `font-feature-settings: "calt" 1;`
- Firefox
- Safari
- Chromium-based browsers (Chrome, Opera)
- ACE
- CodeMirror (enable with `font-variant-ligatures: contextual;`)

### Projects using Fira Code

- All [JetBrains products](https://www.jetbrains.com/)
- [CodePen](https://codepen.io/)
- [Blink Shell](http://www.blink.sh/)
- [Klipse](http://app.klipse.tech/)
- [IlyaBirman.net](http://ilyabirman.net/)
- [EvilMartians.com](https://evilmartians.com/)
- [Web Maker](https://webmakerapp.com/)
- [FromScratch](https://fromscratch.rocks/)
- [PEP20.org](https://pep20.org/)

### Alternatives

Other monospaced fonts with ligatures:

- [Hasklig](https://github.com/i-tu/Hasklig) (free)
- [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm) (€59)
- [Monoid](http://larsenwork.com/monoid/) (free)
- [Fixedsys Excelsior](https://github.com/kika/fixedsys) (free)
- [Iosevka](https://be5invis.github.io/Iosevka/) (free)
- [DejaVu Sans Code](https://github.com/SSNikolaevich/DejaVuSansCode) (free)
- [Victor Mono](https://rubjo.github.io/victor-mono/) (free)

### Building Fira Code locally

In case you want to alter FiraCode.glyphs and build OTF/TTF/WOFF files yourself, this is setup I use on macOS:

```bash
# install all required build tools
./script/bootstrap

# build the font files
./script/build

# install OTFs to ~/Library/Fonts
./script/install
```

### Credits

- Author: Nikita Prokopov [@nikitonsky](https://twitter.com/nikitonsky)
- Based on: [Fira Mono](https://github.com/mozilla/Fira)
- Inspired by: [Hasklig](https://github.com/i-tu/Hasklig)

## Why `Terminess` and not `Terminus`?

What's in a name? The reason for the name change is to comply with the SIL Open Font License (OFL), in partcular the [Reserved Font Name mechanism][SIL-RFN]

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

./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --windows
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesome
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --octicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontlinux
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --pomicons
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --powersymbols
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --weather --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --weather
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs --material
./font-patcher FiraCode-Light.ttf  --use-single-width-glyphs
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --octicons
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontlinux
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --pomicons
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesome --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesome
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --octicons --weather
./font-patcher FiraCode-Light.ttf  --windows --octicons --material
./font-patcher FiraCode-Light.ttf  --windows --octicons
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --windows --fontlinux --material
./font-patcher FiraCode-Light.ttf  --windows --fontlinux
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons --weather
./font-patcher FiraCode-Light.ttf  --windows --pomicons --material
./font-patcher FiraCode-Light.ttf  --windows --pomicons
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --windows --powerlineextra
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --windows --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --windows --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --windows --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --windows --powersymbols --material
./font-patcher FiraCode-Light.ttf  --windows --powersymbols
./font-patcher FiraCode-Light.ttf  --windows --weather --material
./font-patcher FiraCode-Light.ttf  --windows --weather
./font-patcher FiraCode-Light.ttf  --windows --material
./font-patcher FiraCode-Light.ttf  --windows
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons --material
./font-patcher FiraCode-Light.ttf  --fontawesome --octicons
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontlinux
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons --material
./font-patcher FiraCode-Light.ttf  --fontawesome --pomicons
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesome --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesome --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesome --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesome --weather
./font-patcher FiraCode-Light.ttf  --fontawesome --material
./font-patcher FiraCode-Light.ttf  --fontawesome
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux --material
./font-patcher FiraCode-Light.ttf  --octicons --fontlinux
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --weather
./font-patcher FiraCode-Light.ttf  --octicons --pomicons --material
./font-patcher FiraCode-Light.ttf  --octicons --pomicons
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --octicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --octicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --octicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --octicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --octicons --powersymbols
./font-patcher FiraCode-Light.ttf  --octicons --weather --material
./font-patcher FiraCode-Light.ttf  --octicons --weather
./font-patcher FiraCode-Light.ttf  --octicons --material
./font-patcher FiraCode-Light.ttf  --octicons
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons --material
./font-patcher FiraCode-Light.ttf  --fontlinux --pomicons
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontlinux --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --fontlinux --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontlinux --powersymbols
./font-patcher FiraCode-Light.ttf  --fontlinux --weather --material
./font-patcher FiraCode-Light.ttf  --fontlinux --weather
./font-patcher FiraCode-Light.ttf  --fontlinux --material
./font-patcher FiraCode-Light.ttf  --fontlinux
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --pomicons --powerlineextra
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --pomicons --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --pomicons --powersymbols --material
./font-patcher FiraCode-Light.ttf  --pomicons --powersymbols
./font-patcher FiraCode-Light.ttf  --pomicons --weather --material
./font-patcher FiraCode-Light.ttf  --pomicons --weather
./font-patcher FiraCode-Light.ttf  --pomicons --material
./font-patcher FiraCode-Light.ttf  --pomicons
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --powerlineextra --powersymbols --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --powersymbols
./font-patcher FiraCode-Light.ttf  --powerlineextra --weather --material
./font-patcher FiraCode-Light.ttf  --powerlineextra --weather
./font-patcher FiraCode-Light.ttf  --powerlineextra --material
./font-patcher FiraCode-Light.ttf  --powerlineextra
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --powersymbols
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --weather --material
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --weather
./font-patcher FiraCode-Light.ttf  --fontawesomeextension --material
./font-patcher FiraCode-Light.ttf  --fontawesomeextension
./font-patcher FiraCode-Light.ttf  --powersymbols --weather --material
./font-patcher FiraCode-Light.ttf  --powersymbols --weather
./font-patcher FiraCode-Light.ttf  --powersymbols --material
./font-patcher FiraCode-Light.ttf  --powersymbols
./font-patcher FiraCode-Light.ttf  --weather --material
./font-patcher FiraCode-Light.ttf  --weather
./font-patcher FiraCode-Light.ttf  --material
```