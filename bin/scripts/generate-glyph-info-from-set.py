#!/usr/bin/env python
# coding=utf8
# nerd fonts version: 2.0.0
# script version: 1.0.0

# Example Usage:
# ./generate-glyph-info-from-set.py --font ../../src/glyphs/materialdesignicons-webfont.ttf --start f001 --end f847 --offset 4ff

from __future__ import absolute_import, print_function, unicode_literals

version = "1.0.0"
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
parser.add_argument('-prefix', '--prefix', type=str, nargs='?', dest='prefix', help='The prefix to use for the shell variables and css names')
parser.add_argument('-font', '--font', type=str, nargs='?', dest='filepath', help='The file path to the font file to open')
args = parser.parse_args()

print(args.symbolFontStart, args.symbolFontEnd)

symbolFont = fontforge.open(args.filepath)

args.symbolFontStart = int("0x" + args.symbolFontStart, 16)
args.symbolFontEnd = int("0x" + args.symbolFontEnd, 16)
args.symbolOffset = int("0x" + args.symbolOffset, 16)
ctr = 0

symbolFont.selection.select((str("ranges"),str("unicode")),args.symbolFontStart,args.symbolFontEnd)

for index, sym_glyph in enumerate(symbolFont.selection.byGlyphs):
  slot = format(sym_glyph.unicode, 'X')
  name = sym_glyph.glyphname
  sh_name = "i_" + args.prefix + "_" + name.replace("-", "_")
  char = unichr(int('0x'+slot, 16) + int('0x'+format(args.symbolOffset, 'X'), 16))

  print("i='" + char + "' " + sh_name + "=$i")
  ctr += 1

print("Done, generated " + str(ctr) + " glyphs")

