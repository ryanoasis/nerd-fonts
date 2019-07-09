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

