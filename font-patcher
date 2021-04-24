#!/usr/bin/env python
# coding=utf8
# Nerd Fonts Version: 2.1.0
# script version: 3.0.1

from __future__ import absolute_import, print_function, unicode_literals

version = "2.1.0"
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
import json
try:
    import configparser
except ImportError:
    sys.exit(projectName + ": configparser module is probably not installed. Try `pip install configparser` or equivalent")
try:
    import fontforge
except ImportError:
    sys.exit(
        projectName + (
            ": FontForge module could not be loaded. Try installing fontforge python bindings "
            "[e.g. on Linux Debian or Ubuntu: `sudo apt install fontforge python-fontforge`]"
        )
    )


class font_patcher:
    def __init__(self):
        self.args = None  # class 'argparse.Namespace'
        self.sym_font_args = []
        self.config = None  # class 'configparser.ConfigParser'
        self.sourceFont = None  # class 'fontforge.font'
        self.octiconsExactEncodingPosition = True
        self.fontlinuxExactEncodingPosition = True
        self.patch_set = None  # class 'list'
        self.font_dim = None  # class 'dict'
        self.onlybitmaps = 0
        self.extension = ""
        self.setup_arguments()
        self.config = configparser.ConfigParser(empty_lines_in_values=False, allow_no_value=True)
        self.sourceFont = fontforge.open(self.args.font)
        self.setup_font_names()
        self.remove_ligatures()
        make_sure_path_exists(self.args.outputdir)
        self.check_position_conflicts()
        self.setup_patch_set()
        self.setup_line_dimensions()
        self.get_sourcefont_dimensions()
        self.sourceFont.encoding = 'UnicodeFull'  # Update the font encoding to ensure that the Unicode glyphs are available
        self.onlybitmaps = self.sourceFont.onlybitmaps  # Fetch this property before adding outlines. NOTE self.onlybitmaps initialized and never used
        if self.args.extension == "":
            self.extension = os.path.splitext(self.sourceFont.path)[1]
        else:
            self.extension = '.' + self.args.extension


    def patch(self):
        if self.args.single:
            # Force width to be equal on all glyphs to ensure the font is considered monospaced on Windows.
            # This needs to be done on all characters, as some information seems to be lost from the original font file.
            self.set_sourcefont_glyph_widths()

        # Prevent opening and closing the fontforge font. Makes things faster when patching
        # multiple ranges using the same symbol font.
        PreviousSymbolFilename = ""
        symfont = None

        for patch in self.patch_set:
            if patch['Enabled']:
                if PreviousSymbolFilename != patch['Filename']:
                    # We have a new symbol font, so close the previous one if it exists
                    if symfont:
                        symfont.close()
                        symfont = None
                    symfont = fontforge.open(self.args.glyphdir + patch['Filename'])

                    # Match the symbol font size to the source font size
                    symfont.em = self.sourceFont.em
                    PreviousSymbolFilename = patch['Filename']

                # If patch table doesn't include a source start and end, re-use the symbol font values
                SrcStart = patch['SrcStart']
                SrcEnd = patch['SrcEnd']
                if not SrcStart:
                    SrcStart = patch['SymStart']
                if not SrcEnd:
                    SrcEnd = patch['SymEnd']
                self.copy_glyphs(SrcStart, SrcEnd, symfont, patch['SymStart'], patch['SymEnd'], patch['Exact'], patch['ScaleGlyph'], patch['Name'], patch['Attributes'])

        if symfont:
            symfont.close()
        print("\nDone with Patch Sets, generating font...")

        # the `PfEd-comments` flag is required for Fontforge to save '.comment' and '.fontlog'.
        if self.sourceFont.fullname != None:
            self.sourceFont.generate(self.args.outputdir + "/" + self.sourceFont.fullname + self.extension, flags=(str('opentype'), str('PfEd-comments')))
            print("\nGenerated: {}".format(self.sourceFont.fontname))
        else:
            self.sourceFont.generate(self.args.outputdir + "/" + self.sourceFont.cidfontname + self.extension, flags=(str('opentype'), str('PfEd-comments')))
            print("\nGenerated: {}".format(self.sourceFont.fullname))

        if self.args.postprocess:
            subprocess.call([self.args.postprocess, self.args.outputdir + "/" + self.sourceFont.fullname + self.extension])
            print("\nPost Processed: {}".format(self.sourceFont.fullname))


    def setup_arguments(self):
        parser = argparse.ArgumentParser(
            description=(
                'Nerd Fonts Font Patcher: patches a given font with programming and development related glyphs\n\n'
                '* Website: https://www.nerdfonts.com\n'
                '* Version: ' + version + '\n'
                '* Development Website: https://github.com/ryanoasis/nerd-fonts\n'
                '* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md'),
            formatter_class=RawTextHelpFormatter
        )

        # optional arguments
        parser.add_argument('font',                                      help='The path to the font to patch (e.g., Inconsolata.otf)')
        parser.add_argument('-v', '--version',                           action='version',        version=projectName + ": %(prog)s (" + version + ")")
        parser.add_argument('-s', '--mono', '--use-single-width-glyphs', dest='single',           default=False, action='store_true', help='Whether to generate the glyphs as single-width not double-width (default is double-width)')
        parser.add_argument('-l', '--adjust-line-height',                dest='adjustLineHeight', default=False, action='store_true', help='Whether to adjust line heights (attempt to center powerline separators more evenly)')
        parser.add_argument('-q', '--quiet', '--shutup',                 dest='quiet',            default=False, action='store_true', help='Do not generate verbose output')
        parser.add_argument('-w', '--windows',                           dest='windows',          default=False, action='store_true', help='Limit the internal font name to 31 characters (for Windows compatibility)')
        parser.add_argument('-c', '--complete',                          dest='complete',         default=False, action='store_true', help='Add all available Glyphs')
        parser.add_argument('--careful',                                 dest='careful',          default=False, action='store_true', help='Do not overwrite existing glyphs if detected')
        parser.add_argument('--removeligs', '--removeligatures',         dest='removeligatures',  default=False, action='store_true', help='Removes ligatures specificed in JSON configuration file')
        parser.add_argument('--postprocess',                             dest='postprocess',      default=False, type=str, nargs='?', help='Specify a Script for Post Processing')
        parser.add_argument('--configfile',                              dest='configfile',       default=False, type=str, nargs='?', help='Specify a file path for JSON configuration file (see sample: src/config.sample.json)')
        parser.add_argument('--custom',                                  dest='custom',           default=False, type=str, nargs='?', help='Specify a custom symbol font. All new glyphs will be copied, with no scaling applied.')
        parser.add_argument('-ext', '--extension',                       dest='extension',        default="",    type=str, nargs='?', help='Change font file type to create (e.g., ttf, otf)')
        parser.add_argument('-out', '--outputdir',                       dest='outputdir',        default=".",   type=str, nargs='?', help='The directory to output the patched font file to')
        parser.add_argument('--glyphdir',                                dest='glyphdir',         default=__dir__ + "/src/glyphs/", type=str, nargs='?', help='Path to glyphs to be used for patching')

        # progress bar arguments - https://stackoverflow.com/questions/15008758/parsing-boolean-values-with-argparse
        progressbars_group_parser = parser.add_mutually_exclusive_group(required=False)
        progressbars_group_parser.add_argument('--progressbars',         dest='progressbars',     action='store_true',                help='Show percentage completion progress bars per Glyph Set')
        progressbars_group_parser.add_argument('--no-progressbars',      dest='progressbars',     action='store_false',               help='Don\'t show percentage completion progress bars per Glyph Set')
        parser.set_defaults(progressbars=True)

        # symbol fonts to include arguments
        sym_font_group = parser.add_argument_group('Symbol Fonts')
        sym_font_group.add_argument('--fontawesome',                                dest='fontawesome',          default=False, action='store_true', help='Add Font Awesome Glyphs (http://fontawesome.io/)')
        sym_font_group.add_argument('--fontawesomeextension',                       dest='fontawesomeextension', default=False, action='store_true', help='Add Font Awesome Extension Glyphs (https://andrelzgava.github.io/font-awesome-extension/)')
        sym_font_group.add_argument('--fontlinux', '--fontlogos',                   dest='fontlinux',            default=False, action='store_true', help='Add Font Linux and other open source Glyphs (https://github.com/Lukas-W/font-logos)')
        sym_font_group.add_argument('--octicons',                                   dest='octicons',             default=False, action='store_true', help='Add Octicons Glyphs (https://octicons.github.com)')
        sym_font_group.add_argument('--powersymbols',                               dest='powersymbols',         default=False, action='store_true', help='Add IEC Power Symbols (https://unicodepowersymbol.com/)')
        sym_font_group.add_argument('--pomicons',                                   dest='pomicons',             default=False, action='store_true', help='Add Pomicon Glyphs (https://github.com/gabrielelana/pomicons)')
        sym_font_group.add_argument('--powerline',                                  dest='powerline',            default=False, action='store_true', help='Add Powerline Glyphs')
        sym_font_group.add_argument('--powerlineextra',                             dest='powerlineextra',       default=False, action='store_true', help='Add Powerline Glyphs (https://github.com/ryanoasis/powerline-extra-symbols)')
        sym_font_group.add_argument('--material', '--materialdesignicons', '--mdi', dest='material',             default=False, action='store_true', help='Add Material Design Icons (https://github.com/templarian/MaterialDesign)')
        sym_font_group.add_argument('--weather', '--weathericons',                  dest='weather',              default=False, action='store_true', help='Add Weather Icons (https://github.com/erikflowers/weather-icons)')

        self.args = parser.parse_args()

        # if you add a new font, set it to True here inside the if condition
        if self.args.complete:
            self.args.fontawesome = True
            self.args.fontawesomeextension = True
            self.args.fontlinux = True
            self.args.octicons = True
            self.args.powersymbols = True
            self.args.pomicons = True
            self.args.powerline = True
            self.args.powerlineextra = True
            self.args.material = True
            self.args.weather = True

        if not self.args.complete:
            # add the list of arguments for each symbol font to the list self.sym_font_args
            for action in sym_font_group._group_actions:
                self.sym_font_args.append(action.__dict__['option_strings'])

            # determine whether or not all symbol fonts are to be used
            font_complete = True
            for sym_font_arg_aliases in self.sym_font_args:
                found = False
                for alias in sym_font_arg_aliases:
                    if alias in sys.argv:
                        found = True
                if found is not True:
                    font_complete = False
            self.args.complete = font_complete

        # this one also works but it needs to be updated every time a font is added
        # it was a conditional in self.setup_font_names() before, but it was missing
        # a symbol font, so it would name the font complete without being so sometimes.
        # that's why i did the above.
        #
        # if you add a new font, put it in here too, as the others are
        # self.args.complete = all([
        #     self.args.fontawesome is True,
        #     self.args.fontawesomeextension is True,
        #     self.args.fontlinux is True,
        #     self.args.octicons is True,
        #     self.args.powersymbols is True,
        #     self.args.pomicons is True,
        #     self.args.powerline is True,
        #     self.args.powerlineextra is True,
        #     self.args.material is True,
        #     self.args.weather is True
        # ])


    def setup_font_names(self):
        verboseAdditionalFontNameSuffix = " " + projectNameSingular
        if self.args.windows:  # attempt to shorten here on the additional name BEFORE trimming later
            additionalFontNameSuffix = " " + projectNameAbbreviation
        else:
            additionalFontNameSuffix = verboseAdditionalFontNameSuffix
        if not self.args.complete:
            # NOTE not all symbol fonts have appended their suffix here
            if self.args.fontawesome:
                additionalFontNameSuffix += " A"
                verboseAdditionalFontNameSuffix += " Plus Font Awesome"
            if self.args.fontawesomeextension:
                additionalFontNameSuffix += " AE"
                verboseAdditionalFontNameSuffix += " Plus Font Awesome Extension"
            if self.args.octicons:
                additionalFontNameSuffix += " O"
                verboseAdditionalFontNameSuffix += " Plus Octicons"
            if self.args.powersymbols:
                additionalFontNameSuffix += " PS"
                verboseAdditionalFontNameSuffix += " Plus Power Symbols"
            if self.args.pomicons:
                additionalFontNameSuffix += " P"
                verboseAdditionalFontNameSuffix += " Plus Pomicons"
            if self.args.fontlinux:
                additionalFontNameSuffix += " L"
                verboseAdditionalFontNameSuffix += " Plus Font Logos (Font Linux)"
            if self.args.material:
                additionalFontNameSuffix += " MDI"
                verboseAdditionalFontNameSuffix += " Plus Material Design Icons"
            if self.args.weather:
                additionalFontNameSuffix += " WEA"
                verboseAdditionalFontNameSuffix += " Plus Weather Icons"

        # if all source glyphs included simplify the name
        else:
            additionalFontNameSuffix = " " + projectNameSingular + " Complete"
            verboseAdditionalFontNameSuffix = " " + projectNameSingular + " Complete"

        # add mono signifier to end of name
        if self.args.single:
            additionalFontNameSuffix += " M"
            verboseAdditionalFontNameSuffix += " Mono"

        # basically split the font name around the dash "-" to get the fontname and the style (e.g. Bold)
        # this does not seem very reliable so only use the style here as a fallback if the font does not
        # have an internal style defined (in sfnt_names)
        # using '([^-]*?)' to get the item before the first dash "-"
        # using '([^-]*(?!.*-))' to get the item after the last dash "-"
        fontname, fallbackStyle = re.match("^([^-]*).*?([^-]*(?!.*-))$", self.sourceFont.fontname).groups()

        # dont trust 'sourceFont.familyname'
        familyname = fontname

        # fullname (filename) can always use long/verbose font name, even in windows
        if self.sourceFont.fullname != None:
            fullname = self.sourceFont.fullname + verboseAdditionalFontNameSuffix
        else:
            fullname = self.sourceFont.cidfontname + verboseAdditionalFontNameSuffix

        fontname = fontname + additionalFontNameSuffix.replace(" ", "")

        # let us try to get the 'style' from the font info in sfnt_names and fallback to the
        # parse fontname if it fails:
        try:
            # search tuple:
            subFamilyTupleIndex = [x[1] for x in self.sourceFont.sfnt_names].index("SubFamily")

            # String ID is at the second index in the Tuple lists
            sfntNamesStringIDIndex = 2

            # now we have the correct item:
            subFamily = self.sourceFont.sfnt_names[subFamilyTupleIndex][sfntNamesStringIDIndex]
        except IndexError:
            sys.stderr.write("{}: Could not find 'SubFamily' for given font, falling back to parsed fontname\n".format(projectName))
            subFamily = fallbackStyle

        # some fonts have inaccurate 'SubFamily', if it is Regular let us trust the filename more:
        if subFamily == "Regular":
            subFamily = fallbackStyle

        # This is meant to cover the case where the SubFamily is "Italic" and the filename is *-BoldItalic.
        if  len(subFamily) < len(fallbackStyle):
            subFamily = fallbackStyle

        if self.args.windows:
            maxFamilyLength = 31
            maxFontLength = maxFamilyLength - len('-' + subFamily)
            familyname += " " + projectNameAbbreviation
            fullname += " Windows Compatible"

            # now make sure less than 32 characters name length
            if len(fontname) > maxFontLength:
                fontname = fontname[:maxFontLength]
            if len(familyname) > maxFamilyLength:
                familyname = familyname[:maxFamilyLength]
        else:
            familyname += " " + projectNameSingular
            if self.args.single:
                familyname += " Mono"

        # Don't truncate the subfamily to keep fontname unique.  MacOS treats fonts with
        # the same name as the same font, even if subFamily is different.
        fontname += '-' + subFamily

        # rename font
        #
        # comply with SIL Open Font License (OFL)
        reservedFontNameReplacements = {
            'source'         : 'sauce',
            'Source'         : 'Sauce',
            'hermit'         : 'hurmit',
            'Hermit'         : 'Hurmit',
            'hasklig'        : 'hasklug',
            'Hasklig'        : 'Hasklug',
            'Share'          : 'Shure',
            'share'          : 'shure',
            'IBMPlex'        : 'Blex',
            'ibmplex'        : 'blex',
            'IBM-Plex'       : 'Blex',
            'IBM Plex'       : 'Blex',
            'terminus'       : 'terminess',
            'Terminus'       : 'Terminess',
            'liberation'     : 'literation',
            'Liberation'     : 'Literation',
            'iAWriter'       : 'iMWriting',
            'iA Writer'      : 'iM Writing',
            'iA-Writer'      : 'iM-Writing',
            'Anka/Coder'     : 'AnaConder',
            'anka/coder'     : 'anaconder',
            'Cascadia Code'  : 'Caskaydia Cove',
            'cascadia code'  : 'caskaydia cove',
            'CascadiaCode'   : 'CaskaydiaCove',
            'cascadiacode'   : 'caskaydiacove'
        }

        # remove overly verbose font names
        # particularly regarding Powerline sourced Fonts (https://github.com/powerline/fonts)
        additionalFontNameReplacements = {
            'for Powerline': '',
            'ForPowerline': ''
        }

        additionalFontNameReplacements2 = {
            'Powerline': ''
        }

        projectInfo = (
            "Patched with '" + projectName + " Patcher' (https://github.com/ryanoasis/nerd-fonts)\n\n"
            "* Website: https://www.nerdfonts.com\n"
            "* Version: " + version + "\n"
            "* Development Website: https://github.com/ryanoasis/nerd-fonts\n"
            "* Changelog: https://github.com/ryanoasis/nerd-fonts/blob/master/changelog.md"
        )

        familyname = replace_font_name(familyname, reservedFontNameReplacements)
        fullname   = replace_font_name(fullname,   reservedFontNameReplacements)
        fontname   = replace_font_name(fontname,   reservedFontNameReplacements)
        familyname = replace_font_name(familyname, additionalFontNameReplacements)
        fullname   = replace_font_name(fullname,   additionalFontNameReplacements)
        fontname   = replace_font_name(fontname,   additionalFontNameReplacements)
        familyname = replace_font_name(familyname, additionalFontNameReplacements2)
        fullname   = replace_font_name(fullname,   additionalFontNameReplacements2)
        fontname   = replace_font_name(fontname,   additionalFontNameReplacements2)

        # replace any extra whitespace characters:
        self.sourceFont.familyname = " ".join(familyname.split())
        self.sourceFont.fullname   = " ".join(fullname.split())
        self.sourceFont.fontname   = " ".join(fontname.split())

        self.sourceFont.appendSFNTName(str('English (US)'), str('Preferred Family'), self.sourceFont.familyname)
        self.sourceFont.appendSFNTName(str('English (US)'), str('Family'), self.sourceFont.familyname)
        self.sourceFont.appendSFNTName(str('English (US)'), str('Compatible Full'), self.sourceFont.fullname)
        self.sourceFont.appendSFNTName(str('English (US)'), str('SubFamily'), subFamily)
        self.sourceFont.comment = projectInfo
        self.sourceFont.fontlog = projectInfo

        # TODO version not being set for all font types (e.g. ttf)
        # print("Version was {}".format(sourceFont.version))
        if self.sourceFont.version != None:
            self.sourceFont.version += ";" + projectName + " " + version
        else:
            self.sourceFont.version = str(self.sourceFont.cidversion) + ";" + projectName + " " + version
        # print("Version now is {}".format(sourceFont.version))


    def remove_ligatures(self):
        # let's deal with ligatures (mostly for monospaced fonts)
        if self.args.configfile and self.config.read(self.args.configfile):
            if self.args.removeligatures:
                print("Removing ligatures from configfile `Subtables` section")
                ligature_subtables = json.loads(self.config.get("Subtables", "ligatures"))
                for subtable in ligature_subtables:
                    print("Removing subtable:", subtable)
                try:
                    self.sourceFont.removeLookupSubtable(subtable)
                    print("Successfully removed subtable:", subtable)
                except Exception:
                    print("Failed to remove subtable:", subtable)
            elif self.args.removeligatures:
                print("Unable to read configfile, unable to remove ligatures")
            else:
                print("No configfile given, skipping configfile related actions")


    def check_position_conflicts(self):
        # Prevent glyph encoding position conflicts between glyph sets
        if self.args.fontawesome and self.args.octicons:
            self.octiconsExactEncodingPosition = False
        if self.args.fontawesome or self.args.octicons:
            self.fontlinuxExactEncodingPosition = False


    def setup_patch_set(self):
        """ Creates list of dicts to with instructions on copying glyphs from each symbol font into self.sourceFont """
        # Supported params: overlap | careful
        # Powerline dividers
        SYM_ATTR_POWERLINE = {
            'default': {'align': 'c', 'valign': 'c', 'stretch': 'pa', 'params': ''},

            # Arrow tips
            0xe0b0: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0b1: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0b2: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0b3: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},

            # Rounded arcs
            0xe0b4: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0b5: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0b6: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0b7: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},

            # Bottom Triangles
            0xe0b8: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0b9: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0ba: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0bb: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},

            # Top Triangles
            0xe0bc: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0bd: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0be: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0bf: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},

            # Flames
            0xe0c0: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0c1: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0c2: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},
            0xe0c3: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},

            # Small squares
            0xe0c4: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': ''},
            0xe0c5: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': ''},

            # Bigger squares
            0xe0c6: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': ''},
            0xe0c7: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': ''},

            # Waveform
            0xe0c8: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.01}},

            # Hexagons
            0xe0cc: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': ''},
            0xe0cd: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': ''},

            # Legos
            0xe0ce: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': ''},
            0xe0cf: {'align': 'c', 'valign': 'c', 'stretch': 'xy', 'params': ''},
            0xe0d1: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},

            # Top and bottom trapezoid
            0xe0d2: {'align': 'l', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}},
            0xe0d4: {'align': 'r', 'valign': 'c', 'stretch': 'xy', 'params': {'overlap': 0.02}}
        }

        SYM_ATTR_DEFAULT = {
            # 'pa' == preserve aspect ratio
            'default': {'align': 'c', 'valign': 'c', 'stretch': 'pa', 'params': ''}
        }

        SYM_ATTR_FONTA = {
            # 'pa' == preserve aspect ratio
            'default': {'align': 'c', 'valign': 'c', 'stretch': 'pa', 'params': ''},

            # Don't center these arrows vertically
            0xf0dc: {'align': 'c', 'valign': '', 'stretch': 'pa', 'params': ''},
            0xf0dd: {'align': 'c', 'valign': '', 'stretch': 'pa', 'params': ''},
            0xf0de: {'align': 'c', 'valign': '', 'stretch': 'pa', 'params': ''}
        }

        CUSTOM_ATTR = {
            # 'pa' == preserve aspect ratio
            'default': {'align': 'c', 'valign': '', 'stretch': '', 'params': ''}
        }

        # Most glyphs we want to maximize during the scale.  However, there are some
        # that need to be small or stay relative in size to each other.
        # The following list are those glyphs.  A tuple represents a range.
        DEVI_SCALE_LIST  = {'ScaleGlyph': 0xE60E, 'GlyphsToScale': [(0xe6bd, 0xe6c3)]}
        FONTA_SCALE_LIST = {'ScaleGlyph': 0xF17A, 'GlyphsToScale': [0xf005, 0xf006, (0xf026, 0xf028), 0xf02b, 0xf02c, (0xf031, 0xf035), (0xf044, 0xf054), (0xf060, 0xf063), 0xf077, 0xf078, 0xf07d, 0xf07e, 0xf089, (0xf0d7, 0xf0da), (0xf0dc, 0xf0de), (0xf100, 0xf107), 0xf141, 0xf142, (0xf153, 0xf15a), (0xf175, 0xf178), 0xf182, 0xf183, (0xf221, 0xf22d), (0xf255, 0xf25b)]}
        OCTI_SCALE_LIST  = {'ScaleGlyph': 0xF02E, 'GlyphsToScale': [(0xf03d, 0xf040), 0xf044, (0xf051, 0xf053), 0xf05a, 0xf05b, 0xf071, 0xf078, (0xf09f, 0xf0aa), 0xf0ca]}

        # Define the character ranges
        # Symbol font ranges
        self.patch_set = [
            {'Enabled': True,                           'Name': "Seti-UI + Custom",        'Filename': "original-source.otf",              'Exact': False,                               'SymStart': 0xE4FA, 'SymEnd': 0xE530, 'SrcStart': 0xE5FA, 'SrcEnd': 0xE630, 'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': True,                           'Name': "Devicons",                'Filename': "devicons.ttf",                     'Exact': False,                               'SymStart': 0xE600, 'SymEnd': 0xE6C5, 'SrcStart': 0xE700, 'SrcEnd': 0xE7C5, 'ScaleGlyph': DEVI_SCALE_LIST,  'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': self.args.powerline,            'Name': "Powerline Symbols",       'Filename': "PowerlineSymbols.otf",             'Exact': True,                                'SymStart': 0xE0A0, 'SymEnd': 0xE0A2, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.powerline,            'Name': "Powerline Symbols",       'Filename': "PowerlineSymbols.otf",             'Exact': True,                                'SymStart': 0xE0B0, 'SymEnd': 0xE0B3, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.powerlineextra,       'Name': "Powerline Extra Symbols", 'Filename': "PowerlineExtraSymbols.otf",        'Exact': True,                                'SymStart': 0xE0A3, 'SymEnd': 0xE0A3, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.powerlineextra,       'Name': "Powerline Extra Symbols", 'Filename': "PowerlineExtraSymbols.otf",        'Exact': True,                                'SymStart': 0xE0B4, 'SymEnd': 0xE0C8, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.powerlineextra,       'Name': "Powerline Extra Symbols", 'Filename': "PowerlineExtraSymbols.otf",        'Exact': True,                                'SymStart': 0xE0CA, 'SymEnd': 0xE0CA, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.powerlineextra,       'Name': "Powerline Extra Symbols", 'Filename': "PowerlineExtraSymbols.otf",        'Exact': True,                                'SymStart': 0xE0CC, 'SymEnd': 0xE0D4, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_POWERLINE},
            {'Enabled': self.args.pomicons,             'Name': "Pomicons",                'Filename': "Pomicons.otf",                     'Exact': True,                                'SymStart': 0xE000, 'SymEnd': 0xE00A, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': self.args.fontawesome,          'Name': "Font Awesome",            'Filename': "FontAwesome.otf",                  'Exact': True,                                'SymStart': 0xF000, 'SymEnd': 0xF2E0, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': FONTA_SCALE_LIST, 'Attributes': SYM_ATTR_FONTA},
            {'Enabled': self.args.fontawesomeextension, 'Name': "Font Awesome Extension",  'Filename': "font-awesome-extension.ttf",       'Exact': False,                               'SymStart': 0xE000, 'SymEnd': 0xE0A9, 'SrcStart': 0xE200, 'SrcEnd': 0xE2A9, 'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},  # Maximize
            {'Enabled': self.args.powersymbols,         'Name': "Power Symbols",           'Filename': "Unicode_IEC_symbol_font.otf",      'Exact': True,                                'SymStart': 0x23FB, 'SymEnd': 0x23FE, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},  # Power, Power On/Off, Power On, Sleep
            {'Enabled': self.args.powersymbols,         'Name': "Power Symbols",           'Filename': "Unicode_IEC_symbol_font.otf",      'Exact': True,                                'SymStart': 0x2B58, 'SymEnd': 0x2B58, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},  # Heavy Circle (aka Power Off)
            {'Enabled': self.args.material,             'Name': "Material",                'Filename': "materialdesignicons-webfont.ttf",  'Exact': False,                               'SymStart': 0xF001, 'SymEnd': 0xF847, 'SrcStart': 0xF500, 'SrcEnd': 0xFD46, 'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': self.args.weather,              'Name': "Weather Icons",           'Filename': "weathericons-regular-webfont.ttf", 'Exact': False,                               'SymStart': 0xF000, 'SymEnd': 0xF0EB, 'SrcStart': 0xE300, 'SrcEnd': 0xE3EB, 'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': self.args.fontlinux,            'Name': "Font Logos (Font Linux)", 'Filename': "font-logos.ttf",                   'Exact': self.fontlinuxExactEncodingPosition, 'SymStart': 0xF100, 'SymEnd': 0xF12D, 'SrcStart': 0xF300, 'SrcEnd': 0xF32D, 'ScaleGlyph': None,             'Attributes': SYM_ATTR_DEFAULT},
            {'Enabled': self.args.octicons,             'Name': "Octicons",                'Filename': "octicons.ttf",                     'Exact': self.octiconsExactEncodingPosition,  'SymStart': 0xF000, 'SymEnd': 0xF105, 'SrcStart': 0xF400, 'SrcEnd': 0xF505, 'ScaleGlyph': OCTI_SCALE_LIST,  'Attributes': SYM_ATTR_DEFAULT},  # Magnifying glass
            {'Enabled': self.args.octicons,             'Name': "Octicons",                'Filename': "octicons.ttf",                     'Exact': self.octiconsExactEncodingPosition,  'SymStart': 0x2665, 'SymEnd': 0x2665, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': OCTI_SCALE_LIST,  'Attributes': SYM_ATTR_DEFAULT},  # Heart
            {'Enabled': self.args.octicons,             'Name': "Octicons",                'Filename': "octicons.ttf",                     'Exact': self.octiconsExactEncodingPosition,  'SymStart': 0X26A1, 'SymEnd': 0X26A1, 'SrcStart': None,   'SrcEnd': None,   'ScaleGlyph': OCTI_SCALE_LIST,  'Attributes': SYM_ATTR_DEFAULT},  # Zap
            {'Enabled': self.args.octicons,             'Name': "Octicons",                'Filename': "octicons.ttf",                     'Exact': self.octiconsExactEncodingPosition,  'SymStart': 0xF27C, 'SymEnd': 0xF27C, 'SrcStart': 0xF4A9, 'SrcEnd': 0xF4A9, 'ScaleGlyph': OCTI_SCALE_LIST,  'Attributes': SYM_ATTR_DEFAULT},  # Desktop
            {'Enabled': self.args.custom,               'Name': "Custom",                  'Filename': self.args.custom,                   'Exact': True,                                'SymStart': 0x0000, 'SymEnd': 0x0000, 'SrcStart': 0x0000, 'SrcEnd': 0x0000, 'ScaleGlyph': None,             'Attributes': CUSTOM_ATTR}
        ]


    def setup_line_dimensions(self):
        # win_ascent and win_descent are used to set the line height for windows fonts.
        # hhead_ascent and hhead_descent are used to set the line height for mac fonts.
        #
        # Make the total line size even.  This seems to make the powerline separators
        # center more evenly.
        if self.args.adjustLineHeight:
            if (self.sourceFont.os2_winascent + self.sourceFont.os2_windescent) % 2 != 0:
                self.sourceFont.os2_winascent += 1

            # Make the line size identical for windows and mac
            self.sourceFont.hhea_ascent = self.sourceFont.os2_winascent
            self.sourceFont.hhea_descent = -self.sourceFont.os2_windescent

        # Line gap add extra space on the bottom of the line which
        # doesn't allow the powerline glyphs to fill the entire line.
        self.sourceFont.hhea_linegap = 0
        self.sourceFont.os2_typolinegap = 0


    def get_sourcefont_dimensions(self):
        # Initial font dimensions
        self.font_dim = {
            'xmin'  : 0,
            'ymin'  : -self.sourceFont.os2_windescent,
            'xmax'  : 0,
            'ymax'  : self.sourceFont.os2_winascent,
            'width' : 0,
            'height': 0,
        }

        # Find the biggest char width
        # Ignore the y-values, os2_winXXXXX values set above are used for line height
        #
        # 0x00-0x17f is the Latin Extended-A range
        for glyph in range(0x00, 0x17f):
            try:
                (_, _, xmax, _) = self.sourceFont[glyph].boundingBox()
            except TypeError:
                continue
            if self.font_dim['width'] < self.sourceFont[glyph].width:
                self.font_dim['width'] = self.sourceFont[glyph].width
            if xmax > self.font_dim['xmax']:
                self.font_dim['xmax'] = xmax

        # Calculate font height
        self.font_dim['height'] = abs(self.font_dim['ymin']) + self.font_dim['ymax']


    def get_scale_factor(self, sym_dim):
        scale_ratio = 1

        # We want to preserve x/y aspect ratio, so find biggest scale factor that allows symbol to fit
        scale_ratio_x = self.font_dim['width'] / sym_dim['width']

        # font_dim['height'] represents total line height, keep our symbols sized based upon font's em
        # NOTE: is this comment correct? font_dim['height'] isn't used here
        scale_ratio_y = self.sourceFont.em / sym_dim['height']
        if scale_ratio_x > scale_ratio_y:
            scale_ratio = scale_ratio_y
        else:
            scale_ratio = scale_ratio_x
        return scale_ratio


    def copy_glyphs(self, sourceFontStart, sourceFontEnd, symbolFont, symbolFontStart, symbolFontEnd, exactEncoding, scaleGlyph, setName, attributes):
        """ Copies symbol glyphs into self.sourceFont """
        progressText = ''
        careful = False
        glyphSetLength = 0

        if self.args.careful:
            careful = True

        if exactEncoding is False:
            sourceFontList = []
            sourceFontCounter = 0
            for i in range(sourceFontStart, sourceFontEnd + 1):
                sourceFontList.append(format(i, 'X'))

        scale_factor = 0
        if scaleGlyph:
            sym_dim = get_glyph_dimensions(symbolFont[scaleGlyph['ScaleGlyph']])
            scale_factor = self.get_scale_factor(sym_dim)

        # Create glyphs from symbol font
        #
        # If we are going to copy all Glyphs, then assume we want to be careful
        # and only copy those that are not already contained in the source font
        if symbolFontStart == 0:
            symbolFont.selection.all()
            self.sourceFont.selection.all()
            careful = True
        else:
            symbolFont.selection.select((str("ranges"), str("unicode")), symbolFontStart, symbolFontEnd)
            self.sourceFont.selection.select((str("ranges"), str("unicode")), sourceFontStart, sourceFontEnd)

        # Get number of selected non-empty glyphs @TODO FIXME
        for index, sym_glyph in enumerate(symbolFont.selection.byGlyphs):
            glyphSetLength += 1
        # end for

        if self.args.quiet is False:
            sys.stdout.write("Adding " + str(max(1, glyphSetLength)) + " Glyphs from " + setName + " Set \n")

        for index, sym_glyph in enumerate(symbolFont.selection.byGlyphs):
            index = max(1, index)

            try:
                sym_attr = attributes[sym_glyph.unicode]
            except KeyError:
                sym_attr = attributes['default']

            if exactEncoding:
                # use the exact same hex values for the source font as for the symbol font
                currentSourceFontGlyph = sym_glyph.encoding

                # Save as a hex string without the '0x' prefix
                copiedToSlot = format(sym_glyph.unicode, 'X')
            else:
                # use source font defined hex values based on passed in start and end
                # convince that this string really is a hex:
                currentSourceFontGlyph = int("0x" + sourceFontList[sourceFontCounter], 16)
                copiedToSlot = sourceFontList[sourceFontCounter]
                sourceFontCounter += 1

            if int(copiedToSlot, 16) < 0:
                print("Found invalid glyph slot number. Skipping.")
                continue

            if self.args.quiet is False:
                if self.args.progressbars:
                    update_progress(round(float(index + 1) / glyphSetLength, 2))
                else:
                    progressText = "\nUpdating glyph: " + str(sym_glyph) + " " + str(sym_glyph.glyphname) + " putting at: " + copiedToSlot
                    sys.stdout.write(progressText)
                    sys.stdout.flush()

            # Prepare symbol glyph dimensions
            sym_dim = get_glyph_dimensions(sym_glyph)

            # check if a glyph already exists in this location
            if careful or 'careful' in sym_attr['params']:
                if copiedToSlot.startswith("uni"):
                    copiedToSlot = copiedToSlot[3:]
                codepoint = int("0x" + copiedToSlot, 16)
                if codepoint in self.sourceFont:
                    if self.args.quiet is False:
                        print("  Found existing Glyph at {}. Skipping...".format(copiedToSlot))

                    # We don't want to touch anything so move to next Glyph
                    continue

            # Select and copy symbol from its encoding point
            # We need to do this select after the careful check, this way we don't
            # reset our selection before starting the next loop
            symbolFont.selection.select(sym_glyph.encoding)
            symbolFont.copy()

            # Paste it
            self.sourceFont.selection.select(currentSourceFontGlyph)
            self.sourceFont.paste()
            self.sourceFont[currentSourceFontGlyph].glyphname = sym_glyph.glyphname
            scale_ratio_x = 1
            scale_ratio_y = 1

            # Now that we have copy/pasted the glyph, if we are creating a monospace
            # font we need to scale and move the glyphs.  It is possible to have
            # empty glyphs, so we need to skip those.
            if self.args.single and sym_dim['width'] and sym_dim['height']:
                # If we want to preserve that aspect ratio of the glyphs we need to
                # find the largest possible scaling factor that will allow the glyph
                # to fit in both the x and y directions
                if sym_attr['stretch'] == 'pa':
                    if scale_factor and use_scale_glyph(sym_glyph.unicode, scaleGlyph['GlyphsToScale']):
                        # We want to preserve the relative size of each glyph to other glyphs
                        # in the same symbol font.
                        scale_ratio_x = scale_factor
                        scale_ratio_y = scale_factor
                    else:
                        # In this case, each glyph is sized independently to each other
                        scale_ratio_x = self.get_scale_factor(sym_dim)
                        scale_ratio_y = scale_ratio_x
                else:
                    if 'x' in sym_attr['stretch']:
                        # Stretch the glyph horizontally to fit the entire available width
                        scale_ratio_x = self.font_dim['width'] / sym_dim['width']
            # end if single width

            # non-monospace (double width glyphs)
            # elif sym_dim['width'] and sym_dim['height']:
                    # any special logic we want to apply for double-width variation
                    # would go here

            if 'y' in sym_attr['stretch']:
                # Stretch the glyph vertically to total line height (good for powerline separators)
                # Currently stretching vertically for both monospace and double-width
                scale_ratio_y = self.font_dim['height'] / sym_dim['height']

            if scale_ratio_x != 1 or scale_ratio_y != 1:
                if 'overlap' in sym_attr['params']:
                    scale_ratio_x *= 1 + sym_attr['params']['overlap']
                    scale_ratio_y *= 1 + sym_attr['params']['overlap']
                self.sourceFont.transform(psMat.scale(scale_ratio_x, scale_ratio_y))

            # Use the dimensions from the newly pasted and stretched glyph
            sym_dim = get_glyph_dimensions(self.sourceFont[currentSourceFontGlyph])
            y_align_distance = 0
            if sym_attr['valign'] == 'c':
                # Center the symbol vertically by matching the center of the line height and center of symbol
                sym_ycenter = sym_dim['ymax'] - (sym_dim['height'] / 2)
                font_ycenter = self.font_dim['ymax'] - (self.font_dim['height'] / 2)
                y_align_distance = font_ycenter - sym_ycenter

            # Handle glyph l/r/c alignment
            x_align_distance = 0
            if sym_attr['align']:
                # First find the baseline x-alignment (left alignment amount)
                x_align_distance = self.font_dim['xmin'] - sym_dim['xmin']
                if sym_attr['align'] == 'c':
                    # Center align
                    x_align_distance += (self.font_dim['width'] / 2) - (sym_dim['width'] / 2)
                elif sym_attr['align'] == 'r':
                    # Right align
                    x_align_distance += self.font_dim['width'] - sym_dim['width']

            if 'overlap' in sym_attr['params']:
                overlap_width = self.font_dim['width'] * sym_attr['params']['overlap']
                if sym_attr['align'] == 'l':
                    x_align_distance -= overlap_width
                if sym_attr['align'] == 'r':
                    x_align_distance += overlap_width

            align_matrix = psMat.translate(x_align_distance, y_align_distance)
            self.sourceFont.transform(align_matrix)

            # Needed for setting 'advance width' on each glyph so they do not overlap,
            # also ensures the font is considered monospaced on Windows by setting the
            # same width for all character glyphs. This needs to be done for all glyphs,
            # even the ones that are empty and didn't go through the scaling operations.
            self.set_glyph_width_mono(self.sourceFont[currentSourceFontGlyph])

            # Ensure after horizontal adjustments and centering that the glyph
            # does not overlap the bearings (edges)
            self.remove_glyph_neg_bearings(self.sourceFont[currentSourceFontGlyph])

            # reset selection so iteration works properly @TODO fix? rookie misunderstanding?
            # This is likely needed because the selection was changed when the glyph was copy/pasted
            if symbolFontStart == 0:
                symbolFont.selection.all()
            else:
                symbolFont.selection.select((str("ranges"), str("unicode")), symbolFontStart, symbolFontEnd)
        # end for

        if self.args.quiet is False or self.args.progressbars:
            sys.stdout.write("\n")


    def set_sourcefont_glyph_widths(self):
        """ Makes self.sourceFont monospace compliant """

        for glyph in self.sourceFont.glyphs():
            if (glyph.width == self.font_dim['width']):
                # Don't touch the (negative) bearings if the width is ok
                # Ligartures will have these.
                continue

            if (glyph.width != 0):
                # If the width is zero this glyph is intened to be printed on top of another one.
                # In this case we need to keep the negative bearings to shift it 'left'.
                # Things like &Auml; have these: composed of U+0041 'A' and U+0308 'double dot above'
                #
                # If width is not zero, correct the bearings such that they are within the width:
                self.remove_glyph_neg_bearings(glyph)

            self.set_glyph_width_mono(glyph)


    def remove_glyph_neg_bearings(self, glyph):
        """ Sets passed glyph's bearings 0 if they are negative. """
        try:
            if glyph.left_side_bearing < 0:
                glyph.left_side_bearing = 0
            if glyph.right_side_bearing < 0:
                glyph.right_side_bearing = 0
        except:
            pass


    def set_glyph_width_mono(self, glyph):
        """ Sets passed glyph.width to self.font_dim.width.

        self.font_dim.width is set with self.get_sourcefont_dimensions().
        """
        try:
            glyph.width = self.font_dim['width']
        except:
            pass


def replace_font_name(font_name, replacement_dict):
    """ Replaces all keys with vals from replacement_dict in font_name. """
    for key, val in replacement_dict.items():
        font_name = font_name.replace(key, val)
    return font_name


def make_sure_path_exists(path):
    """ Verifies path passed to it exists. """
    try:
        os.makedirs(path)
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise


def get_glyph_dimensions(glyph):
    """ Returns dict of the dimesions of the glyph passed to it. """
    bbox = glyph.boundingBox()
    return {
        'xmin'  : bbox[0],
        'ymin'  : bbox[1],
        'xmax'  : bbox[2],
        'ymax'  : bbox[3],
        'width' : bbox[2] + (-bbox[0]),
        'height': bbox[3] + (-bbox[1]),
    }


def use_scale_glyph(unicode_value, glyph_list):
    """ Determines whether or not to use scaled glyphs for glyphs in passed glyph_list """
    for i in glyph_list:
        if isinstance(i, tuple):
            if unicode_value >= i[0] and unicode_value <= i[1]:
                return True
        else:
            if unicode_value == i:
                return True
    return False


def update_progress(progress):
    """ Updates progress bar length.

    Accepts a float between 0.0 and 1.0. Any int will be converted to a float.
    A value at 1 or bigger represents 100%
    modified from: https://stackoverflow.com/questions/3160699/python-progress-bar
    """
    barLength = 40  # Modify this to change the length of the progress bar
    if isinstance(progress, int):
        progress = float(progress)
    if progress >= 1:
        progress = 1
        status = "Done...\r\n"  # NOTE: status initialized and never used
    block = int(round(barLength * progress))
    text = "\r╢{0}╟ {1}%".format("█" * block + "░" * (barLength - block), int(progress * 100))
    sys.stdout.write(text)
    sys.stdout.flush()


def check_fontforge_min_version():
    """ Verifies installed FontForge version meets minimum requirement. """
    minimumVersion = 20141231
    actualVersion = int(fontforge.version())

    # un-comment following line for testing invalid version error handling
    # actualVersion = 20120731

    # versions tested: 20150612, 20150824
    if actualVersion < minimumVersion:
        sys.stderr.write("{}: You seem to be using an unsupported (old) version of fontforge: {}\n".format(projectName, actualVersion))
        sys.stderr.write("{}: Please use at least version: {}\n".format(projectName, minimumVersion))
        sys.exit(1)


def main():
    check_fontforge_min_version()
    patcher = font_patcher()
    patcher.patch()


if __name__ == "__main__":
    __dir__ = os.path.dirname(os.path.abspath(__file__))
    main()
