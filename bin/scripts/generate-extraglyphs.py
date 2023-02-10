#!/usr/bin/env python3
# Nerd Fonts Version: 2.3.3
# Script Version: 1.0.0
# Generates extrasymbols.sfd from Hack

import os
import fontforge

srcdir = '../../src'
srcfont = 'unpatched-fonts/Hack/Regular/Hack-Regular.ttf'
outfont = 'glyphs/extraglyphs.sfd'

print('Opening {}'.format(outfont))
font = fontforge.open(os.path.join(srcdir, srcfont))

font.selection.select(
    0x276C, # medium left-pointing angle bracket
    0x276D, # medium right-pointing angle bracket
    0x276E, # heavy left-pointing angle quotation mark
    0x276F, # heavy right-pointing angle quotation mark
    0x2770, # heavy left-pointing angle bracket
    0x2771, # heavy right-pointing angle bracket
)

num_icons = len(list(font.selection))

font.selection.invert()
font.clear()

print('Generating {} with {} glyphs'.format(outfont, num_icons))
font.generate(os.path.join(srcdir, outfont), flags=("no-FFTM-table",))
font.close()
