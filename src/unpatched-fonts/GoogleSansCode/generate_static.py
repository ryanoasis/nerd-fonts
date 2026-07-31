#!/usr/bin/env python
# coding=utf8
#
# Dependencies: fonttools and skia-pathops

import fontTools
from fontTools import ttLib
from fontTools.varLib import instancer
from fontTools.varLib.instancer.names import NameID

fonts = [
    'GoogleSansCode[MONO,wght].ttf_orig',
    'GoogleSansCode-Italic[MONO,wght].ttf_orig',
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
    # This code is not 100% generic and might or might not work for other
    # fonts than Google Sans Code
    fullname_parts = [ '', '' ]
    ribbi_weight = weight_name in [ 'Regular', 'Bold' ]
    for name in sorted(font['name'].names, key=lambda e: e.nameID):
        if name.nameID not in (
                NameID.FAMILY_NAME,
                NameID.SUBFAMILY_NAME,
                NameID.UNIQUE_FONT_IDENTIFIER,
                NameID.FULL_FONT_NAME,
                NameID.POSTSCRIPT_NAME,
                NameID.TYPOGRAPHIC_FAMILY_NAME,
                NameID.TYPOGRAPHIC_SUBFAMILY_NAME):
            continue

        # Names stored in the VF:
        #
        # ID  1   Google Sans Code                    Google Sans Code
        # ID  2   Regular                             Italic
        # ID  3   7.001;GOOG;GoogleSansCode-Regular   7.001;GOOG;GoogleSansCode-Italic
        # ID  4   Google Sans Code Regular            Google Sans Code Italic
        # ID  6   GoogleSansCode-Regular              GoogleSansCode-Italic
        # ID 16   -                                   -
        # ID 17   -                                   -

        current_name = name.toUnicode()

        # Add the new weight to the FAMILY if it is not a ribbi weight
        # Add it to the SUBFAMILY if it is a ribbi weight

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

        # Assemble the FULLNAME from the basic parts
        # Repurpose the basic parts for the TYPO FAMILY by shifting
        # part of the style to the front

        elif name.nameID == NameID.FULL_FONT_NAME:
            # The names come in ID order so we are sure we collected the name before
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

        # Standalone code for the blank-less and hyphen containing names

        elif name.nameID in [ NameID.POSTSCRIPT_NAME, NameID.UNIQUE_FONT_IDENTIFIER ]:
            current_name = current_name.replace('Regular', '')
            parts = current_name.split('-')
            if weight_name != 'Regular' or len(parts[-1]) == 0:
                parts[-1] = weight_name + parts[-1]
            current_name = '-'.join(parts)
            if name.nameID == NameID.UNIQUE_FONT_IDENTIFIER:
                current_name += ';NF'

        font['name'].setName(current_name,
            nameID=name.nameID,
            platformID=name.platformID,
            platEncID=name.platEncID,
            langID=name.langID,
        )

for f in fonts:
    font = ttLib.TTFont(f)
    for weight_name, weight_value in weights.items():
        print('Working on "{}" of {}'.format(weight_name, f), end='', flush=True)
        static_font = instancer.instantiateVariableFont(
                font, {'wght': weight_value, 'MONO': 1},
                overlap=instancer.OverlapMode.REMOVE,
                #updateFontNames=True, #  Does not work because of the MONO axis
                static=True)
        update_font_names(static_font, weight_name)
        instancer.setRibbiBits(static_font)
        static_filename = static_font['name'].getName(NameID.POSTSCRIPT_NAME, 3, 1).toUnicode() + '.ttf'
        static_font.save(static_filename)
        print('\r       Created', static_filename, '                        ')
        static_font.close()
    font.close()
