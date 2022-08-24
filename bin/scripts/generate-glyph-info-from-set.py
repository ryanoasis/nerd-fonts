#!/usr/bin/env python
# coding=utf8
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.1.0

# Example Usage:
# ./generate-glyph-info-from-set.py --font ../../src/glyphs/materialdesignicons-webfont.ttf --start f001 --end f847 --offset 4ff --prefix mdi
# ./generate-glyph-info-from-set.py --font ../../src/glyphs/weathericons-regular-webfont.ttf --start f000 --end f0eb --negoffset d00 --prefix weather --nogaps

from __future__ import absolute_import, print_function, unicode_literals

version = "2.2.0-RC"
projectName = "Nerd Fonts"
projectNameAbbreviation = "NF"
projectNameSingular = projectName[:-1]

import sys

try:
    import psMat
except ImportError:
    sys.exit(projectName + ": FontForge module is probably not installed. [See: http://designwithfontforge.com/en-US/Installing_Fontforge.html]")

import re
import os
import argparse
from argparse import RawTextHelpFormatter
import errno
import subprocess

try:
    #Load the module
    import fontforge

except ImportError:
    sys.exit(projectName + ": FontForge module could not be loaded. Try installing fontforge python bindings [e.g. on Linux Debian or Ubuntu: `sudo apt install fontforge python-fontforge`]")

parser = argparse.ArgumentParser(description='Nerd Fonts Glyph Info Generator: displays code point and glyph names from given set\n\n* Website: https://www.nerdfonts.com\n* Version: ' + version + '\n* Development Website: https://github.com/ryanoasis/nerd-fonts\n* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md', formatter_class=RawTextHelpFormatter)
parser.add_argument('-start', '--start', type=str, nargs='?', dest='symbolFontStart', help='The starting unicode hex codepoint')
parser.add_argument('-end', '--end', type=str, nargs='?', dest='symbolFontEnd', help='The ending unicode hex codepoint')
parser.add_argument('-offset', '--offset', type=str, nargs='?', dest='symbolOffset', help='The amount (in hex) to offset the range by for the source font')
parser.add_argument('-negoffset', '--negoffset', type=str, nargs='?', dest='negSymbolOffset', help='The amount (in hex) to negative offset the range by for the source font')
parser.add_argument('-prefix', '--prefix', type=str, nargs='?', dest='prefix', help='The prefix to use for the shell variables and css names')
parser.add_argument('-nogaps', '--nogaps', action='store_true', dest='nogaps', help='Generates the codepoints in a continous codepoints with the given range (no empties/gaps)')
parser.add_argument('-font', '--font', type=str, nargs='?', dest='filepath', help='The file path to the font file to open')
args = parser.parse_args()

print(args.symbolFontStart, args.symbolFontEnd)

symbolFont = fontforge.open(args.filepath)

args.symbolFontStart = int("0x" + args.symbolFontStart, 16)
args.symbolFontEnd = int("0x" + args.symbolFontEnd, 16)
ctr = 0

if args.negSymbolOffset:
  args.negSymbolOffset = int("0x" + args.negSymbolOffset, 16)
  sign = '-'
  offset = args.negSymbolOffset
elif args.symbolOffset:
  args.symbolOffset = int("0x" + args.symbolOffset, 16)
  sign = ''
  offset = args.symbolOffset

signedOffset = int(sign+'0x'+format(offset, 'X'), 16)
hexPosition = args.symbolFontStart + signedOffset

symbolFont.selection.select((str("ranges"),str("unicode")),args.symbolFontStart,args.symbolFontEnd)

for index, sym_glyph in enumerate(symbolFont.selection.byGlyphs):
  slot = format(sym_glyph.unicode, 'X')
  name = sym_glyph.glyphname
  sh_name = "i_" + args.prefix + "_" + name.replace("-", "_")

  if args.nogaps:
    char = unichr(hexPosition)
  else:
    char = unichr(int('0x'+slot, 16) + signedOffset)

  print("i='" + char + "' " + sh_name + "=$i" + " //" + str(hexPosition))
  ctr += 1
  hexPosition += 1

print("Done, generated " + str(ctr) + " glyphs")

