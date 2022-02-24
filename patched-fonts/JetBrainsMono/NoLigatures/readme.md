[![official JetBrains project](http://jb.gg/badges/official.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)

# JetBrains Mono: a typeface made for developers
![Alt text](images/main-img@2x.png)

JetBrains Mono is available as a standalone download, and is also bundled in all JetBrains IDEs. Discover more font features & design on its [web page](https://jetbrains.com/mono/). 

Default version of JetBrains Mono comes with OpenType features and ligatures (which can always be toggled on & off in the settings). If your IDE doesn’t support OpenType, use a special version of the font — [JetBrains Mono NL](https://github.com/JetBrains/JetBrainsMono/tree/master/fonts/ttf), which doesn’t include any ligatures.

# **Installation**

### **JetBrains IDEs**

The most recent version of JetBrains Mono ships with your JetBrains IDE starting with v2019.3.

Select JetBrains Mono in the IDE settings: go to `Preferences/Settings` → `Editor` → `Font`, and then select JetBrains Mono from the **Font** dropdown.

### Brew (macOS only)

1. Tap the font cask to make the Jetbrains Mono font available :

    ```console
    brew tap homebrew/cask-fonts
    ```
2. Install it using the `font-jetbrains-mono` cask:

   ```console
   brew install --cask font-jetbrains-mono
   ```

### Manual installation

_On Mac/Windows_: 

1. [Download font](https://github.com/JetBrains/JetBrainsMono/releases/latest). 
2. Unzip the archive and install the font:
   - _Mac_. Select all font files in the folder and double-click them. Click the **Install Font** button.
   - _Windows_. Select all font files in the folder, right-click any of them, then pick **Install** from the menu.

📝 Note: If you have previously installed JetBrains Mono, please uninstall all previous versions to exclude conflicts and errors in rendering.

_On Linux_: 

Open a terminal and run the following:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```

Once JetBrains Mono is installed in your OS, you are ready to configure the editor.  


### **Visual Studio Code** 

1. From the **File** menu (**Code** on Mac) go to `Preferences` → `Settings, or use keyboard shortcut <kbd>Ctrl</kbd>+<kbd>,</kbd> (<kbd>Cmd</kbd>+<kbd>,</kbd> on Mac).
2. In the E**ditor: Font Family** input box type `JetBrains Mono`, replacing any content.
3. To enable ligatures, go to **Editor: Font Ligatures**, click **Edit in settings.json**, and copy this line `"editor.fontLigatures": true` into json file.

### **More ways to install**
- [Chocolate](https://github.com/JetBrains/JetBrainsMono/wiki/Other-ways-to-install#through-chocolatey-windows-only)
- [ChromeOS terminal](https://github.com/JetBrains/JetBrainsMono/wiki/Other-ways-to-install#chromeos-terminal)

## Font Styles
There are 8 font styles available in JetBrains Mono, from Thin to ExtraBold, each coming with its own _italic_ version.

![Alt text](images/font-styles@2x.png)

## Font Features

### Increased x-height
While characters remain standard in width, the height of the lowercase is maximized. This approach keeps code lines to the length that developers expect, and it helps improve rendering in small size, since each symbol occupies more pixels.

![Alt text](images/ff-increased-height@2x.png)

### Distinctiveness of symbols

![Alt text](images/ff-distinctiveness-of-symbols@2x.gif)

## Ligatures for Code
A ligature is a character consisting of two or more joined symbols. Traditionally, it was introduced as a space-saving technique in printed texts. In code, this technique is adopted to show operators and is used mainly for two purposes:
1. To **reduce noise** by merging symbols and removing details so the eyes are processing less:

![Alt text](images/ligatures-1@2x.gif)

2. To balance whitespace more efficiently by shifting the glyphs in certain cases:

![Alt text](images/ligatures-2@2x.gif)

📝 Note: if your IDE doesn’t support OpenType features and ligatures, use [JetBrains Mono NL](https://github.com/JetBrains/JetBrainsMono/tree/master/fonts/ttf) instead.

## Basic Character Set

![Alt text](images/character-set@2x.png)
You can find full JetBrains Mono character set on our [wiki page](https://github.com/JetBrains/JetBrainsMono/wiki/List-of-supported-symbols).

## Building from source files

The source files can be found in the *"Source"* folder. To open them you will need Glyphs app.\
To build the `.ttf`, `.otf`, `woff2` & variable `.ttf` you will need:
- install **gftools** `pip install gftools` (requires python 3.9.5 or higher on BigSur)
- Navigate to **…JetBrainsMono/sources/** in Terminal app.
- Type `gftools builder config.yaml` in Terminal and run it.
- After the script is complete the files can be found in *Fonts* folder.

## License

JetBrains Mono typeface is available under the [OFL-1.1 License](https://github.com/JetBrains/JetBrainsMono/blob/master/OFL.txt) and can be used free of charge, for both commercial and non-commercial purposes. You do not need to give credit to JetBrains, although we will appreciate it very much if you do.

The source code is available under [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0)

## Credits

**Type designer**\
Philipp Nurullin

**Team lead**\
Konstantin Bulenkov

**Thanks to**\
Nikita Prokopov\
Eugene Auduchinok\
Tatiana Tulupenko\
Dmitrij Batrak\
IntelliJ Platform UX Team\
Web Team

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


