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

./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --windows
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesome
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --octicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --pomicons
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --weather --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --weather
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs --material
./font-patcher iosevka-extralightitalic.ttf  --use-single-width-glyphs
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --octicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesome
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --octicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --windows --pomicons
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --windows --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --windows --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --windows --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --windows --weather --material
./font-patcher iosevka-extralightitalic.ttf  --windows --weather
./font-patcher iosevka-extralightitalic.ttf  --windows --material
./font-patcher iosevka-extralightitalic.ttf  --windows
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --octicons
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --pomicons
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesome --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesome
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --pomicons
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --octicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --octicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --octicons --weather
./font-patcher iosevka-extralightitalic.ttf  --octicons --material
./font-patcher iosevka-extralightitalic.ttf  --octicons
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --pomicons
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --weather
./font-patcher iosevka-extralightitalic.ttf  --fontlogos --material
./font-patcher iosevka-extralightitalic.ttf  --fontlogos
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --pomicons --weather --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons --weather
./font-patcher iosevka-extralightitalic.ttf  --pomicons --material
./font-patcher iosevka-extralightitalic.ttf  --pomicons
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --weather --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --weather
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra --material
./font-patcher iosevka-extralightitalic.ttf  --powerlineextra
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --weather --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --weather
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension --material
./font-patcher iosevka-extralightitalic.ttf  --fontawesomeextension
./font-patcher iosevka-extralightitalic.ttf  --powersymbols --weather --material
./font-patcher iosevka-extralightitalic.ttf  --powersymbols --weather
./font-patcher iosevka-extralightitalic.ttf  --powersymbols --material
./font-patcher iosevka-extralightitalic.ttf  --powersymbols
./font-patcher iosevka-extralightitalic.ttf  --weather --material
./font-patcher iosevka-extralightitalic.ttf  --weather
./font-patcher iosevka-extralightitalic.ttf  --material
```