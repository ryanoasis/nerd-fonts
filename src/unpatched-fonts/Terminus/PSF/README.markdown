Terminess Powerline PSF (PC Screen Font) Type 2 files with embedded
unicode table.

Used primary in Linux EGA/VGA console. As it is required for the font
to contain exactly 256 or 512 characters and Terminus already used all
of them this font files have the following glyphs substituted with the
Powerline glyphs:

    Codepoint  Character  Name
     U+2320        ⌠      TOP HALF INTEGRAL
     U+2321        ⌡      BOTTOM HALF INTEGRAL
     U+20A7        ₧      PESETA SIGN (Spain currency sign)
     U+00BE        ¾      VULGAR FRACTION THREE QUARTERS
     U+00B3        ³      SUPERSCRIPT THREE
     U+00AC        ¬      NOT SIGN (angled dash)
     U+221A        √      SQUARE ROOT

Note: "substituted" means these codepoints and glyphs were removed,
new glyphs and codepoints were added. Powerline symbols are accessible
using the usual codepoints, not above ones.