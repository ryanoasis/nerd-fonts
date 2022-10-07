## Fira Code: free monospaced font with programming ligatures

![Fira Code](./extras/logo.svg)

### Problem

Programmers use a lot of symbols, often encoded with several characters. For the human brain, sequences like `->`, `<=` or `:=` are single logical tokens, even if they take two or three characters on the screen. Your eye spends a non-zero amount of energy to scan, parse and join multiple characters into a single logical one. Ideally, all programming languages should be designed with full-fledged Unicode symbols for operators, but that’s not the case yet.

### Solution

Fira Code is a free monospaced font containing ligatures for common programming multi-character combinations. This is just a font rendering feature: underlying code remains ASCII-compatible. This helps to read and understand code faster. For some frequent sequences like `..` or `//`, ligatures allow us to correct spacing.

### Download & Install

<a href="https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip"><img alt="Fira_Code_v6.2.zip - December 6, 2021 - 2.5 MB" src="./extras/download.png" width="520" height="130"></a>

Then:

- [How to Install](https://github.com/tonsky/FiraCode/wiki)
- [Troubleshooting](https://github.com/tonsky/FiraCode/wiki#troubleshooting)
- [News & Updates](https://twitter.com/FiraCode)

### Support

<a href="https://github.com/sponsors/tonsky" target="_blank"><img alt="Sponsor" src="./extras/sponsor.png"></a>

Fira Code is a personal, free-time project with no funding and a huge [feature request backlog](https://github.com/tonsky/FiraCode/issues). If you love it, consider supporting its development via [GitHub Sponsors](https://github.com/sponsors/tonsky) or [Patreon](https://patreon.com/tonsky). Any help counts!

### What’s in the box?

Left: ligatures as rendered in Fira Code. Right: same character sequences without ligatures.

<img src="./extras/ligatures.png" width="754" height="1326">

Fira Code comes with a huge variety of arrows. Even better: you can make them as long as you like and combine start/middle/end fragments however you want!

<img src="./extras/arrows.png" width="754" height="799">

Fira Code is not only about ligatures. Some fine-tuning is done for punctuation and frequent letter pairs.

<img src="./extras/typographics.png" width="754" height="649">

Fira Code comes with a few different character variants, so that everyone can choose what’s best for them. [How to enable](https://github.com/tonsky/FiraCode/wiki/How-to-enable-stylistic-sets)

<img src="./extras/character_variants.png" width="754" height="391">

Some ligatures can be altered or enabled using stylistic sets/character variants:

<img src="./extras/ligature_variants.png" width="754" height="561">

Being a programming font, Fira Code has fantastic support for ASCII/box drawing, powerline and other forms of console UIs:

<img src="./extras/console.png" width="754" height="459">

Fira Code is the first programming font to offer dedicated glyphs to render progress bars:

<img src="./extras/progress.png" width="754" height="282">

In action:

<img src="./extras/progress.gif" width="560" height="181">

We hope more programming fonts will adopt this convention and ship their own versions.

Unicode coverage makes Fira Code a great choice for mathematical writing:

<img src="./extras/math.png" width="754" height="323">

### How does it look?

<img src="./extras/samples.png" width="754" height="1068">
<img src="./extras/samples2.png" width="754" height="1257">

### Editor compatibility list

| Works | Doesn’t work   |
|-------|----------------|
| **Abricotine** | **Arduino IDE** |
| **Android Studio** (2.3+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | **Adobe Dreamweaver** |
| **Anjuta** (unless at the EOF) | **Delphi IDE** |
| **AppCode** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | Standalone **Emacs** ([workaround](https://github.com/tonsky/FiraCode/wiki/Emacs-instructions)) |
| **Atom** 1.1 or newer ([instructions](https://github.com/tonsky/FiraCode/wiki/Atom-instructions)) | **Godot** ([issue](https://github.com/godotengine/godot/issues/9961)) |
| **BBEdit/TextWrangler** (v. 11 only, [instructions](https://github.com/tonsky/FiraCode/wiki/BBEdit-instructions)) | **IDLE** |
| **Brackets** (with [this plugin](https://github.com/polo2ro/firacode-in-brackets)) | **KDevelop 4** |
| **Chocolat** | **Monkey Studio IDE** |
| **CLion** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) | **UltraEdit** |
| **Cloud9** ([instructions](https://github.com/tonsky/FiraCode/wiki/Cloud9-Instructions)) | 
| **Coda 2** |
| **CodeLite** |
| **CodeRunner** |
| **CotEditor** |
| **Eclipse** |
| **elementary Code** |
| **Geany** (1.37+) |
| **gEdit / Pluma** |
| **GNOME Builder** |
| **GoormIDE** ([instructions](https://github.com/tonsky/FiraCode/wiki/GoormIDE-Instructions)) |
| **gVim** ([Windows](https://github.com/tonsky/FiraCode/issues/462), [GTK](https://vimhelp.org/options.txt.html#%27guiligatures%27)) |
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
| **MATLAB** ([instructions](https://github.com/tonsky/FiraCode/wiki/MATLAB-for-Windows-Instructions)) |
| **Meld** |
| **Mousepad** |
| **NeoVim-gtk** |
| **NetBeans** |
| **Notepad** (Windows) |
| **Notepad++** (with a [workaround](https://github.com/notepad-plus-plus/notepad-plus-plus/issues/2287#issuecomment-256638098))  |
| **Notepad3** ([instructions](https://github.com/rizonesoft/Notepad3/issues/361#issuecomment-365977420))|
| **Nova** |
| **PhpStorm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **PyCharm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **QOwnNotes** (21.16.6+) |
| **QtCreator** |
| **Rider** |
| **RStudio** ([instructions](https://github.com/tonsky/FiraCode/wiki/RStudio-instructions)) |
| **RubyMine** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **Scratch** |
| **Scribus** (1.5.3+) |
| **SublimeText** (3146+) |
| **Spyder IDE** (only with Qt5) |
| **SuperCollider 3** |
| **TextAdept** (Linux, macOS) |
| **TextEdit** |
| **TextMate 2** |
| **VimR** ([instructions](https://github.com/qvacua/vimr/wiki#ligatures)) |
| **Visual Studio** (2015+, [instructions](https://github.com/tonsky/FiraCode/wiki/Visual-Studio-Instructions)) |
| **Visual Studio Code** ([instructions](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions)) |
| **WebStorm** (2016.2+, [instructions](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)) |
| **Xamarin Studio/Monodevelop** |
| **Xcode** (8.0+, otherwise [with plugin](https://github.com/robertvojta/LigatureXcodePlugin)) |
| **Xi** |
| Probably work: **Smultron, Vico** | Under question: **Code::Blocks IDE** |

### Terminal compatibility list

| Platform       | Works | Doesn’t work |
|----------------|-------|--------------|
| macOS          | Hyper (see [#3607](https://github.com/vercel/hyper/issues/3607))<br>iTerm 2<br>Kitty<br>Terminal.app<br>ZOC | Alacritty |
| Windows        | Hyper (see [#3607](https://github.com/vercel/hyper/issues/3607))<br>Mintty<br>Token2Shell<br>Windows Terminal | Alacritty<br>Cmder<br>ConEmu<br>PuTTY<br>Windows Console<br>ZOC |
| Linux          | Hyper (see [#3607](https://github.com/vercel/hyper/issues/3607))<br>Kitty<br>Konsole<br>QTerminal<br>Termux<br>st ([patch](https://st.suckless.org/patches/ligatures/)) | Alacritty<br>GNOME Terminal<br>libvte-based terminals ([bug report](https://bugzilla.gnome.org/show_bug.cgi?id=584160)): <ul><li>gtkterm<li>guake<li>LXTerminal<li> sakura<li>Terminator<li>xfce4-terminal</ul>mate-terminal<br>rxvt<br>terminology<br>xterm
| ChromeOS       | crosh ([instructions](https://github.com/tonsky/FiraCode/wiki/ChromeOS-Terminal)) | |

### Browser support

```html
<!-- HTML -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/firacode@6.2.0/distr/fira_code.css">
```

```css
/* CSS */
@import url(https://cdn.jsdelivr.net/npm/firacode@6.2.0/distr/fira_code.css);
```

```css
/* Specify in CSS */
code { font-family: 'Fira Code', monospace; }

@supports (font-variation-settings: normal) {
  code { font-family: 'Fira Code VF', monospace; }
}
```

- IE 10+, Edge Legacy: enable with `font-feature-settings: "calt";`
- Firefox
- Safari
- Chromium-based browsers (Chrome, Opera)
- ACE
- CodeMirror (enable with `font-variant-ligatures: contextual;`)

### Projects using Fira Code

- [CodePen](https://codepen.io/)
- [Blink Shell](http://www.blink.sh/)
- [Klipse](http://app.klipse.tech/)
- [IlyaBirman.net](http://ilyabirman.net/)
- [EvilMartians.com](https://evilmartians.com/)
- [Web Maker](https://webmakerapp.com/)
- [FromScratch](https://fromscratch.rocks/)
- [PEP20.org](https://pep20.org/)

### Alternatives

Free monospaced fonts with ligatures:

- [Hasklig](https://github.com/i-tu/Hasklig)
- [Monoid](http://larsenwork.com/monoid/)
- [Fixedsys Excelsior](https://github.com/kika/fixedsys)
- [Iosevka](https://be5invis.github.io/Iosevka/)
- [DejaVu Sans Code](https://github.com/SSNikolaevich/DejaVuSansCode)
- [Victor Mono](https://rubjo.github.io/victor-mono/)
- [Cascadia Code](https://github.com/microsoft/cascadia-code)
- [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)

Paid monospaced fonts with ligatures:

- [PragmataPro](http://www.fsd.it/fonts/pragmatapro.htm)
- [Mono Lisa](https://www.monolisa.dev/)

### Building Fira Code locally

In case you want to alter FiraCode.glyphs and build OTF/TTF/WOFF files yourself, this is the setup I use on macOS:

```bash
# install all required build tools
./script/bootstrap_macos.sh

# build the font files
./script/build.sh

# install OTFs to ~/Library/Fonts
cp distr/otf/*.otf ~/Library/Fonts
```

Alternatively, you can build Fira Code using Docker:

```bash
# install dependencies in a container and build the font files
make

# package the font files from dist/ into a zip
make package
```

### Credits

- Author: Nikita Prokopov [@nikitonsky](https://twitter.com/nikitonsky)
- Based on: [Fira Mono](https://github.com/mozilla/Fira)
- Inspired by: [Hasklig](https://github.com/i-tu/Hasklig)

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

./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --windows
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesome
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --octicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontlogos
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --pomicons
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --powersymbols
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --weather --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --weather
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs --material
./font-patcher FiraCode-Regular.ttf  --use-single-width-glyphs
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --octicons
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontlogos
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesome
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --octicons --material
./font-patcher FiraCode-Regular.ttf  --windows --octicons
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --windows --fontlogos
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --windows --pomicons --material
./font-patcher FiraCode-Regular.ttf  --windows --pomicons
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --windows --powerlineextra
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --windows --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --windows --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --windows --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --windows --powersymbols
./font-patcher FiraCode-Regular.ttf  --windows --weather --material
./font-patcher FiraCode-Regular.ttf  --windows --weather
./font-patcher FiraCode-Regular.ttf  --windows --material
./font-patcher FiraCode-Regular.ttf  --windows
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --octicons
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontlogos
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --pomicons
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontawesome --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesome --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesome --weather
./font-patcher FiraCode-Regular.ttf  --fontawesome --material
./font-patcher FiraCode-Regular.ttf  --fontawesome
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontlogos
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons --material
./font-patcher FiraCode-Regular.ttf  --octicons --pomicons
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --octicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --octicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --octicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --octicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --octicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --octicons --weather --material
./font-patcher FiraCode-Regular.ttf  --octicons --weather
./font-patcher FiraCode-Regular.ttf  --octicons --material
./font-patcher FiraCode-Regular.ttf  --octicons
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --pomicons
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --fontlogos --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontlogos --weather --material
./font-patcher FiraCode-Regular.ttf  --fontlogos --weather
./font-patcher FiraCode-Regular.ttf  --fontlogos --material
./font-patcher FiraCode-Regular.ttf  --fontlogos
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powerlineextra
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --pomicons --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --pomicons --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --pomicons --powersymbols
./font-patcher FiraCode-Regular.ttf  --pomicons --weather --material
./font-patcher FiraCode-Regular.ttf  --pomicons --weather
./font-patcher FiraCode-Regular.ttf  --pomicons --material
./font-patcher FiraCode-Regular.ttf  --pomicons
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --powerlineextra --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --powersymbols
./font-patcher FiraCode-Regular.ttf  --powerlineextra --weather --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra --weather
./font-patcher FiraCode-Regular.ttf  --powerlineextra --material
./font-patcher FiraCode-Regular.ttf  --powerlineextra
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --powersymbols
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --weather --material
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --weather
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension --material
./font-patcher FiraCode-Regular.ttf  --fontawesomeextension
./font-patcher FiraCode-Regular.ttf  --powersymbols --weather --material
./font-patcher FiraCode-Regular.ttf  --powersymbols --weather
./font-patcher FiraCode-Regular.ttf  --powersymbols --material
./font-patcher FiraCode-Regular.ttf  --powersymbols
./font-patcher FiraCode-Regular.ttf  --weather --material
./font-patcher FiraCode-Regular.ttf  --weather
./font-patcher FiraCode-Regular.ttf  --material
```