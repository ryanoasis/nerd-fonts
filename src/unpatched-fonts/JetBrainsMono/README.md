[![official JetBrains project](http://jb.gg/badges/official.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)

# JetBrainsMono
A typeface made for developers. \
More about font features & design can be found on [its page](https://jetbrains.com/mono/).

# **Installation**

### **In JetBrains IDEs**

The most recent version of JetBrains Mono ships with your JetBrains IDE starting with v2019.3.

Select JetBrains Mono in the IDE settings: go to `Preferences/Settings` → `Editor` → `Font`, and then select JetBrains Mono from the Font dropdown.

### Another IDE or an older version of a JetBrains IDE

1. [Download font](https://download.jetbrains.com/fonts/JetBrainsMono-1.0.0.zip?fromGitHub). 
2. Unzip the archive and install the font:
   - Mac. Select all font files in the folder and double-click them. Click the *"Install Font"* button.
   - Windows. Select all font files in the folder, right-click any of them, then pick *"Install"* from the menu.
   - Ubuntu. Open a terminal with `Ctrl`+`Alt`+`T` and run the following:
   
      ```
      cd <name_of_our_archive.zip>
      unzip "\*.zip" -d ${HOME}/.fonts
      sudo fc-cache -f -v
      ```
3. Restart your IDE.
4. Go to `Preferences/Settings` → `Editor` → `Font`, and pick JetBrains Mono from the Font dropdown.

### **Visual Studio Code**

* Follow the instructions above to step 3.
* Go to the settings editor, from the File menu choose Preferences, Settings or use keyboard shortcut `Ctrl`+, (`Cmd`+, on Mac).
* In the *"Font Family"* input box type JetBrains Mono, replacing any content.
* To enable ligatures turn on the checkbox in *"Font ligatures"*.

#### **Manually editing settings.json**

Visual Studio Code allows you to also edit the underlying settings.json config file. First open the settings editor as described above, then click the "`{}`" icon, at the top right, to open the *"settings.json"* file.

Then paste the following lines and save the file.

```
"editor.fontFamily": "JetBrains Mono",
"editor.fontLigatures": true,
```

## Source files

Can be found in the *"Source"* folder. To open them you will need FontLab 6 or higher.

## License

JetBrains Mono typeface is available under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0) and can be used free of charge, for both commercial and non-commercial purposes. You do not need to give credit to JetBrains, although we will appreciate it very much if you do.

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
