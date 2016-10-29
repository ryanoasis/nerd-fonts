Terminess Powerline
===================

:Font creator: Dimitar Zhekov
:Version: media-fonts/terminus-font-4.36 with USE=X pcf psf ru-g
:Source: http://terminus-font.sourceforge.net
:License: SIL OPEN FONT LICENSE Version 1.1
:Patched by:
  `Nikolay Pavlov <https://bitbucket.org/ZyX_I>`_,
  `Carl X. Su <https://github.com/bcbcarl>`_

Terminus Font is a clean, fixed width bitmap font, designed for long
(8 and more hours per day) work with computers. Version 4.36 contains
856 characters, covers about 120 language sets and supports
ISO8859-1/2/5/7/9/13/15/16, Paratype-PT154/PT254, KOI8-R/U/E/F,
Esperanto, many IBM, Windows and Macintosh code pages, as well as the
IBM VGA, vt100 and xterm pseudographic characters.

Terminess Powerline is derived from Terminus Font for Powerline users.
The Powerline symbols is being made by Kim Silkebækken. The patch work
is being undertaken by Nikolay Pavlov and Carl X. Su.

Both the final font Truetype/OpenType files and the design files used
to produce the font family are distributed under an open licence and
you are expressly encouraged to experiment, modify, share and improve.

Note: If you want to have patched font with different USE flags, use
fontpatcher located at
https://bitbucket.org/ZyX_I/bitmap-font-patcher, it is always using
proper (manually adjusted) glyphs. Here are the variants controlled by
USE flags (see font homepage for better explanations about what each
USE flag does):

.. table:: USE flags

   =========== ============================================================================
   USE Flag    Description
   =========== ============================================================================
   a-like-o    Changes view of letter 'a' - a looks like o
   distinct-l  ll2 variant with more distinctive l (lowercase L)
   quote       Changes view of quotes: symmetric ` and ' instead of asymmetric one
   ru-dv       Changes view of Russian letters 'de' and 've'
   ru-g        Changes view of Russian letter 'ge'
   ru-i        Changes view of Russian letter 'i' - not like Latin u, but like "mirrored" N
   ru-k        Changes view of Russian letter 'k'
   =========== ============================================================================