# Iosevka ![Version](https://img.shields.io/github/release/be5invis/Iosevka.svg)
**Iosevka** is an *open-source*, *sans-serif* + *slab-serif*, *monospace* + *quasi‑proportional* typeface family, designed for *writing code*, using in *terminals*, and preparing *technical documents*.

![](images/preview-all.png)

## Installation

Quit your editor/program. Unzip and open the folder.

* **Windows**: Download the fonts from the [Releases](https://github.com/be5invis/Iosevka/releases), select the font files and right click, then hit “Install”.  
  
  * On Windows 10 1809 or newer the default font installation is per-user, and it may cause compatibility issues for some applications, mostly written in Java. To cope with this, right click and select “Install for all users” instead. [Ref.](https://youtrack.jetbrains.com/issue/JRE-1166?p=IDEA-200145)
* **[macOS](http://support.apple.com/kb/HT2509)**
  * Standard distribution in Homebrew: 
    ```bash
    brew tap homebrew/cask-fonts
    brew install --cask font-iosevka
    ```
  *  Search for other variants using `brew search font-iosevka` and install what you want.
  * Customizable install using Homebrew: see [robertgzr/homebrew-tap](https://github.com/robertgzr/homebrew-tap).
* **Linux** : Copy the TTF files to your fonts directory → Run `sudo fc-cache`. 
  - Arch Linux users can install one of the [ttc-iosevka packages](https://archlinux.org/packages/?q=ttc-iosevka).
  - Void Linux users can install the font with `xbps-install font-iosevka`.
  - Fedora Linux users can install the font(s) from the copr [here](https://copr.fedorainfracloud.org/coprs/peterwu/iosevka/). Run `dnf search iosevka` to discover available fonts and `dnf install` to install the chosen one(s).
* **FreeBSD**: The font can be installed with `pkg install iosevka`.
* **OpenBSD**: Run `pkg_info -Q iosevka` to see which Iosevka packages are available. Use `pkg_add` to install the chosen package(s).

## Features

In the official package, Iosevka provides 6 monospace subfamilies (sans-serif and slab-serif, each in the 3 spacings Default, Term and Fixed) and 2 quasi-proportional subfamilies (Aile (sans-serif) and Etoile (slab-serif)). In all the monospace subfamilies, 9 weights (Thin to Heavy), 2 widths (Normal and Extended), and 3 slopes (Upright, Italic and Oblique) are included. In the quasi-proportional subfamilies, the quantity of widths is reduced to 1.

![Weights sample](images/weights.png)

All versions include the same ranges of characters: Latin letters, Greek letters (including Polytonic), some Cyrillic letters, IPA symbols and common punctuations and some symbols. You can check out the full list [here](http://be5invis.github.io/Iosevka/specimen).

![Languages Sample](images/languages.png)

<!-- BEGIN Section-Language-List -->
<!-- THIS SECTION IS AUTOMATICALLY GENERATED. DO NOT EDIT. -->

161 Supported Languages: 

Afrikaans, Aghem, Akan, Albanian, Asturian, Asu, Azerbaijani, Bafia, Bambara, Basaa, Basque, Belarusian, Bemba, Bena, Bosnian, Breton, Bulgarian, Catalan, Cebuano, Central Atlas Tamazight, Chechen, Chiga, Colognian, Cornish, Croatian, Czech, Danish, Duala, Dutch, Embu, English, Esperanto, Estonian, Ewe, Ewondo, Faroese, Filipino, Finnish, French, Friulian, Fulah, Galician, Ganda, German, Greek, Gusii, Hausa, Hawaiian, Hungarian, Icelandic, Igbo, Inari Sami, Indonesian, Interlingua, Irish, Italian, Javanese, Jola-Fonyi, Kabuverdianu, Kabyle, Kako, Kalaallisut, Kalenjin, Kamba, Kazakh, Kikuyu, Kinyarwanda, Koyra Chiini, Koyraboro Senni, Kurdish, Kwasio, Kyrgyz, Lakota, Langi, Latvian, Lingala, Lithuanian, Low German, Lower Sorbian, Luba-Katanga, Luo, Luxembourgish, Luyia, Macedonian, Machame, Makhuwa-Meetto, Makonde, Malagasy, Malay, Maltese, Manx, Maori, Masai, Meru, Metaʼ, Mongolian, Morisyen, Mundang, Nama, Ngiemboon, Nigerian Pidgin, North Ndebele, Northern Sami, Norwegian, Norwegian Bokmål, Norwegian Nynorsk, Nuer, Nyankole, Oromo, Ossetic, Polish, Portuguese, Quechua, Romanian, Romansh, Rombo, Rundi, Russian, Rwa, Sakha, Samburu, Sango, Sangu, Scottish Gaelic, Sena, Serbian, Shambala, Shona, Slovak, Slovenian, Soga, Somali, Spanish, Sundanese, Swahili, Swedish, Swiss German, Tachelhit (shi_latn), Taita, Tajik, Tasawaq, Tatar, Teso, Tongan, Turkish, Turkmen, Ukrainian, Upper Sorbian, Uzbek, Vai (vai_latn), Vietnamese, Vunjo, Walser, Welsh, Western Frisian, Wolof, Xhosa, Yangben, Yoruba, Zarma, Zulu

<!-- END Section-Language-List -->

### Stylistic Sets

Monospace Iosevka contains various stylistic sets to change the shape of certain characters. Enabling corresponded OpenType feature to enable.

<table><tr><td><h2><a href="doc/stylistic-sets.md">View list of stylistic sets of Iosevka.</a></h2></td></tr></table>


### Character Variants

Alongside stylistic sets, Monospace Iosevka can also be configured to cherry-pick variants for each character using OpenType. The variants are shown below. To enable, assign the feature tag to the variant index. For example, setting `cv26` to `6` will enable single-storey `a`.

**Caution :**  Certain software may limit the quantity of OpenType features and drop some of them if the feature list is too long. Please validate your feature configuration to ensure that it worked in your software.

<table><tr><td><h2><a href="doc/character-variants.md">View list of character variants of Iosevka.</a></h2></td></tr></table>

### Ligations

Monospace subfamilies support ligations. Iosevka’s default ligation set is assigned to `calt` feature, though not all of them are enabled by default.

<!-- BEGIN Section-OT-Ligation-Tags-1 -->
<!-- THIS SECTION IS AUTOMATICALLY GENERATED. DO NOT EDIT. -->

<table>
<tr>
<td><code>calt off</td>
<td>Ligation Off</td>
</tr>
<tr>
<td colspan="2"><img src="images/ligset-calt-0.png"/></td>
</tr>
<tr>
<td><code>calt</code></td>
<td>Default setting in text editors</td>
</tr>
<tr>
<td colspan="2"><img src="images/ligset-calt-1.png"/></td>
</tr>
</table>

<!-- END Section-OT-Ligation-Tags-1 -->

Iosevka supports Language-Specific Ligations, which is the ligation set enabled only under certain languages. These ligation sets are assigned to custom feature tags. To use them, you need to turn **off** `calt` and enable the corresponded feature. The feature list is:

<table><tr><td><h2><a href="doc/language-specific-ligation-sets.md">View list of language-specific ligations.</a></h2></td></tr></table>

Please note that, due to the complex interactions when forming ligations, cherry-picking ligation groups will require a custom Iosevka build. The instructions could be seen below.

## Building from Source

<table><tr><td><h2><a href="doc/custom-build.md">Read instructions.</a></h2></td></tr></table>

## For Chinese and Japanese users...

→ [Sarasa Gothic](https://github.com/be5invis/Sarasa-Gothic).

## Mirrors

- TUNA (CN): https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Iosevka
- NJU (CN): https://mirrors.nju.edu.cn/github-release/be5invis/Iosevka
---

![Family Matrix](images/matrix.png)

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

./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --windows
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesome
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --octicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --weather
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs --material
./font-patcher iosevka-term-thinoblique.ttf  --use-single-width-glyphs
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --octicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesome
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --octicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --windows --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --windows --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --windows --weather
./font-patcher iosevka-term-thinoblique.ttf  --windows --material
./font-patcher iosevka-term-thinoblique.ttf  --windows
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --octicons
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesome
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --octicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --octicons --material
./font-patcher iosevka-term-thinoblique.ttf  --octicons
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux --material
./font-patcher iosevka-term-thinoblique.ttf  --fontlinux
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --weather
./font-patcher iosevka-term-thinoblique.ttf  --pomicons --material
./font-patcher iosevka-term-thinoblique.ttf  --pomicons
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --weather
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra --material
./font-patcher iosevka-term-thinoblique.ttf  --powerlineextra
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --weather
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension --material
./font-patcher iosevka-term-thinoblique.ttf  --fontawesomeextension
./font-patcher iosevka-term-thinoblique.ttf  --powersymbols --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --powersymbols --weather
./font-patcher iosevka-term-thinoblique.ttf  --powersymbols --material
./font-patcher iosevka-term-thinoblique.ttf  --powersymbols
./font-patcher iosevka-term-thinoblique.ttf  --weather --material
./font-patcher iosevka-term-thinoblique.ttf  --weather
./font-patcher iosevka-term-thinoblique.ttf  --material
```