README
======

Places I've officially uploaded the latest stable versions to are [dafont.com](http://dafont.com/open-dyslexic.font) and gumroad(see link at [opendyslexic.org](http://opendyslexic.org).)

The latest version may not always be the best version. If you want a stable version, check [github](https://github.com/antijingoist/open-dyslexic/tags) for the latest stable or working beta including otf's and ttf's, or [DaFont](http://dafont.com/open-dyslexic.font) for a stable otf.

If you are upgrading your copy of this font, you may want to remove previous version first. 

Typeface/font to help readability, and help readability for some of the symptoms of dyslexia.

Your brain can sometimes do funny things to letters. OpenDyslexic tries to help prevent some of these things from happening. Letters have heavy weighted bottoms to provide an indication of orientation to make it more difficult to confuse with other similar letters. Consistently weighted bottoms can also help reenforce the line of text. The unique shapes of each letter can help prevent flipping and swapping.

The italic style for OpenDyslexic has been crafted still be able to be used for emphasis while still being readable. 

Install:
========
Windows: Copy .OTF files to C:\Windows\Fonts
MacOSX: Drag font files to Font Book, and click install



Thanks to everyone that donated during the Glyphs.app fundraising:

- Cheryl Marshall
- Anonymous (MG). <-- look at that, anonymous supports this. :D 
- Eric Bailey
- Steven V James
- @nguarracino
- Plow Software, LLC

You guys are super cool! Thanks!

Also, thanks to:
- @glyphsapp for helping me learn Glyphs properly. 
- Rob Carpenter of Oak Grove College in England for the Alta style
- The awesome folk @ TEDxGateway that still have yet to release the OpenDyslexic TEDx talk.

It is based on Bitstream Vera Sans because of the nice license it has. 

OpenDyslexic is not packaged by me as an .exe file. It is packaged as a zip file, with no installer,  so you know what you are getting.

If you were compelled to pay for this font, ask for a refund. This font is provided at no charge. Donations are cool, but optional. :)

License
-------
The license for this font is: 

♡ Copying is an act of love. Please copy.
Bitstream License: 

Copyright (c) 2003 by Bitstream, Inc. All Rights Reserved. Bitstream Vera is a trademark of Bitstream, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of the fonts accompanying this license (“Fonts”) and associated documentation files (the “Font Software”), to reproduce and distribute the Font Software, including without limitation the rights to use, copy, merge, publish, distribute, and/or sell copies of the Font Software, and to permit persons to whom the Font Software is furnished to do so, subject to the following conditions: 

The above copyright and trademark notices and this permission notice shall be included in all copies of one or more of the Font Software typefaces.

The Font Software may be modified, altered, or added to, and in particular the designs of glyphs or characters in the Fonts may be modified and additional glyphs or characters may be added to the Fonts, only if the fonts are renamed to names not containing either the words “Bitstream” or the word “Vera”.

This License becomes null and void to the extent applicable to Fonts or Font Software that has been modified and is distributed under the “Bitstream Vera” names. 

The Font Software may be sold as part of a larger software package but no copy of one or more of the Font Software typefaces may be sold by itself. 

THE FONT SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF COPYRIGHT, PATENT, TRADEMARK, OR OTHER RIGHT. IN NO EVENT SHALL BITSTREAM OR THE GNOME FOUNDATION BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, INCLUDING ANY GENERAL, SPECIAL, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF THE USE OR INABILITY TO USE THE FONT SOFTWARE OR FROM OTHER DEALINGS IN THE FONT SOFTWARE. 

Except as contained in this notice, the names of Gnome, the Gnome Foundation, and Bitstream Inc., shall not be used in advertising or otherwise to promote the sale, use or other dealings in this Font Software without prior written authorization from the Gnome Foundation or Bitstream Inc., respectively. For further information, contact: fonts at gnome dot org. 
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

./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesome
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --windows
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesome
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --use-single-width-glyphs
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesome
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --windows
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesome
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --octicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontlinux
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --pomicons
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powerlineextra
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --fontawesomeextension
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powersymbols --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powersymbols --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powersymbols --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --powersymbols
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --weather --material
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --weather
./font-patcher OpenDyslexicAlta-BoldItalic.otf  --material
```