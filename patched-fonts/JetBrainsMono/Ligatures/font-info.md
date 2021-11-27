[![official JetBrains project](http://jb.gg/badges/official.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)

# JetBrains Mono
A typeface made for developers. \
More about font features & design can be found on [its page](https://jetbrains.com/mono/). 

By default, JetBrains Mono includes ligatures. The version without ligatures is called **JetBrains Mono NL** and can be found [here](https://github.com/JetBrains/JetBrainsMono/tree/master/fonts/ttf). This version is also stripped of all OpenType features, since they don't have any effect when your IDE doesn't support OpenType.

If your IDE supports OpenType we recommend installing the default version of the font. If you prefer not using ligatures you can turn them off manually in the settings. 

# **Installation**

### **In JetBrains IDEs**

The most recent version of JetBrains Mono ships with your JetBrains IDE starting with v2019.3.

Select JetBrains Mono in the IDE settings: go to `Preferences/Settings` → `Editor` → `Font`, and then select JetBrains Mono from the Font dropdown.

### Another IDE or an older version of a JetBrains IDE
#### Through brew (MacOS only)
1. Tap the font cask to make the Jetbrains Mono font available :

    ```console
    brew tap homebrew/cask-fonts
    ```
2. Install it using the `font-jetbrains-mono` cask:

   ```console
   brew install --cask font-jetbrains-mono
   ```
   
#### Through Chocolatey (Windows only)
1. Install Chocolatey if you haven't done already. See [this page](https://chocolatey.org/install) for instructions on how to do that.
2. In an elevated cmd console (Run as administrator...) :

    ```console
    choco install jetbrainsmono
    ```

#### Or manually

_On Mac/Windows_: 

1. [Download font](https://github.com/JetBrains/JetBrainsMono/releases/latest). 
2. Unzip the archive and install the font:
   - Mac. Select all font files in the folder and double-click them. Click the *"Install Font"* button.
   - Windows. Select all font files in the folder, right-click any of them, then pick *"Install"* from the menu.

_On Linux_: 

Open a terminal and run the following:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```

Once JetBrains Mono is installed in your OS, you are ready to configure the editor.  
### **JetBrains IDEs** 
* Restart your IDE.
* Go to `Preferences/Settings` → `Editor` → `Font`, and pick JetBrains Mono from the Font dropdown.

### **Visual Studio Code** 

* Go to the settings editor, from the File menu choose Preferences, Settings or use keyboard shortcut <kbd>Ctrl</kbd>+<kbd>,</kbd> (<kbd>Cmd</kbd>+<kbd>,</kbd> on Mac).
* In the *"Font Family"* input box type JetBrains Mono, replacing any content.
* To enable ligatures turn on the checkbox in *"Font ligatures"*.

#### **Manually editing settings.json**

Visual Studio Code allows you to also edit the underlying settings.json config file. First open the settings editor as described above, then click the "`{}`" icon, at the top right, to open the *"settings.json"* file.

Then paste the following lines and save the file.

```json
"editor.fontFamily": "JetBrains Mono",
"editor.fontLigatures": true,
```

### **ChromeOS Terminal**
In the terminal:
1. Use the keyboard shortcut <kbd>CTRL</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> to open up settings.
2. Scroll down to "Custom CSS (Inline Text)".
3. Copy & paste the following:

```css
@font-face{
    font-family: 'JetBrains Mono';
    src: url('https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/fonts/webfonts/JetBrainsMono-Regular.woff2') format('woff2'),
         url('https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/fonts/ttf/JetBrainsMono-Regular.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}

* {
    -webkit-font-feature-settings: "liga" on, "calt" on;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    font-family: 'JetBrains Mono';
}
```

## Source files

Can be found in the *"Source"* folder. To open them you will need Glyphs app.

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

