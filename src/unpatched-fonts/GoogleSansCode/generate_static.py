#!/usr/bin/env python
# coding=utf8
#
# Dependencies: fonttools and skia-pathops

import os
import fontTools
from fontTools import ttLib
from fontTools.varLib import instancer
from fontTools.varLib.instancer.names import NameID

fonts = [
    'GoogleSansCode[MONO,wght].ttf',
    'GoogleSansCode-Italic[MONO,wght].ttf',
]

weights = {
    #'Thin': 100,
    #'ExtraLight': 200,
     'Light': 300,
     'Regular': 400,
     'Medium': 500,
     'SemiBold': 600,
     'Bold': 700,
    'ExtraBold': 800,
    #'Black': 900,
}

def update_font_names(font, weight_name):
    """Analyse the name(s) and put the weight in the appropriate position"""

    fullname_parts = [ '', '' ]
    ribbi_weight = weight_name in [ 'Regular', 'Bold' ]
    for name in font['name'].names:
        if name.nameID not in (
                NameID.FAMILY_NAME,
                NameID.SUBFAMILY_NAME,
                NameID.UNIQUE_FONT_IDENTIFIER,
                NameID.FULL_FONT_NAME,
                NameID.POSTSCRIPT_NAME,
                NameID.TYPOGRAPHIC_FAMILY_NAME,
                NameID.TYPOGRAPHIC_SUBFAMILY_NAME):
            continue

        # ID 1   Google Sans Code                    Google Sans Code
        # ID 2   Regular                             Italic
        # ID 3   7.001;GOOG;GoogleSansCode-Regular   7.001;GOOG;GoogleSansCode-Italic
        # ID 4   Google Sans Code Regular            Google Sans Code Italic
        # ID 6   GoogleSansCode-Regular              GoogleSansCode-Italic

        current_name = name.toUnicode()


        if name.nameID == NameID.FAMILY_NAME:
            if not ribbi_weight:
                current_name = current_name + ' ' + weight_name
            fullname_parts[0] = current_name

        elif name.nameID == NameID.SUBFAMILY_NAME:
            if ribbi_weight:
                if current_name == 'Regular':
                    current_name = weight_name
                elif weight_name != 'Regular':
                    current_name = weight_name + ' ' + current_name
            if current_name != 'Regular' or ribbi_weight:
                fullname_parts[1] = current_name

        elif name.nameID == NameID.FULL_FONT_NAME:
            # The names come in ID order so we are sure we collected the name here
            current_name = ' '.join(fullname_parts).strip()
            # Add typogr. family, maybe, after tweaking ID4
            if not ribbi_weight:
                parts = fullname_parts[0].split(' ')
                fullname_parts[0] = ' '.join(parts[:-1])
                fullname_parts[1] = (parts[-1] + ' ' + fullname_parts[1]).strip()
                font['name'].setName(fullname_parts[0],
                    nameID=NameID.TYPOGRAPHIC_FAMILY_NAME,
                    platformID=name.platformID,
                    platEncID=name.platEncID,
                    langID=name.langID,
                )
                font['name'].setName(fullname_parts[1],
                    nameID=NameID.TYPOGRAPHIC_SUBFAMILY_NAME,
                    platformID=name.platformID,
                    platEncID=name.platEncID,
                    langID=name.langID,
                )

        elif name.nameID in [ NameID.POSTSCRIPT_NAME, NameID.UNIQUE_FONT_IDENTIFIER ]:
            current_name = current_name.replace('Regular', '')
            parts = current_name.split('-')
            if weight_name != 'Regular' or len(parts[-1]) == 0:
                parts[-1] = weight_name + parts[-1]
            current_name = '-'.join(parts)
            if name.nameID == NameID.UNIQUE_FONT_IDENTIFIER:
                current_name += ';NF'

        name.string = current_name.encode(name.getEncoding())

for f in fonts:
    font = ttLib.TTFont(f)
    for weight_name, weight_value in weights.items():
        print('Working on {} with weight {}'.format(f, weight_name), end='\r')
        static_font = instancer.instantiateVariableFont(
                font, {'wght': weight_value, 'MONO': 1},
                overlap=instancer.OverlapMode.REMOVE,
                #updateFontNames=True, #  Does not work because of the MONO axis
                static=True)
        update_font_names(static_font, weight_name)
        instancer.setRibbiBits(static_font)
        static_filename = static_font['name'].getName(instancer.names.NameID.POSTSCRIPT_NAME, 3, 1).toUnicode() + '.ttf'
        print('       Creating', static_filename, '                          ')
        static_font.save(static_filename)
    font.close()
    os.rename(f, f + '_orig')
