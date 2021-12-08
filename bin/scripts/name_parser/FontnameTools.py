#!/usr/bin/env python
# coding=utf8

import re

class FontnameTools:
    """Deconstruct a font filename to get standardized name parts"""

    @staticmethod
    def front_upper(word):
        """Capitalize a string (but keep case of subsequent chars)"""
        return word[:1].upper() + word[1:]

    @staticmethod
    def camel_casify(word):
        """Remove blanks and use CamelCase for the new word"""
        return ''.join(map(FontnameTools.front_upper, word.split(' ')))

    @staticmethod
    def camel_explode(word):
        """Explode CamelCase -> Camel Case"""
        # But do not explode "JetBrains" etc at string start...
        excludes = [
                'JetBrains',
                'DejaVu',
                'OpenDyslexicAlta',
                'OpenDyslexicMono',
                'OpenDyslexic',
                'DaddyTimeMono',
                'InconsolataGo',
                'ProFontWindows',
                'ProFont',
                'ProggyClean',
                ]
        m = re.match('(' + '|'.join(excludes) + ')(.*)', word)
        (prefix, word) = m.group(1,2) if m != None else ('', word)
        if len(word) == 0:
            return prefix
        parts = re.split('(?<=[a-z])(?=[A-Z])', word)
        if len(prefix):
            parts.insert(0, prefix)
        return ' '.join(parts)

    @staticmethod
    def drop_empty(l):
        """Remove empty strings from list of strings"""
        return [x for x in l if len(x) > 0]

    @staticmethod
    def concat(*all_things):
        """Flatten list of (strings or lists of strings) to a blank-separated string"""
        all = []
        for thing in all_things:
            if type(thing) == str:
                all.append(thing)
            else:
                all += thing
        return ' '.join(FontnameTools.drop_empty(all))

    @staticmethod
    def unify_style_names(style_name):
        """Substitude some known token with standard wording"""
        known_names = {
            # Source of the table is the current sourcefonts
            '-':            '',
            'Book':         '',
            'Roman':        '',
            #'Text':         '',
            #'SemiBold':     'Demi',
            'ob':           'Oblique',
            'it':           'Italic',
            'i':            'Italic',
            'b':            'Bold',
            'Normal':       'Regular',
            'c':            'Condensed',
            'r':            'Regular',
            'm':            'Medium',
            'l':            'Light',
        }
        if style_name in known_names:
            return known_names[style_name]
        return style_name

    @staticmethod
    def shorten_style_name(name):
        """Substitude some known styles to short form"""
        known_names = {
            # Chiefly from Noto
            'Condensed':        'Cond',
            'SemiCondensed':    'SemCond',
            'ExtraCondensed':   'ExtCond',
            'ExtraBold':        'ExtBd',
            'SemiBold':         'SemBd',
            'Medium':           'Med',
            'ExtraLight':       'ExtLt',
            'Black':            'Blk',
        }
        if name in known_names:
            return known_names[name]
        return name

    @staticmethod
    def short_styles(styles):
        """Shorten all style names in a list"""
        return list(map(FontnameTools.shorten_style_name, styles))
    @staticmethod
    def make_oblique_style(weights, styles):
        """Move "Oblique" from weights to styles for font naming purposes"""
        if 'Oblique' in weights:
            weights = list(weights)
            weights.remove('Oblique')
            styles = list(styles)
            styles.append('Oblique')
        return (weights, styles)

    @staticmethod
    def get_name_token(name, tokens):
        """Try to find any case insensitive token from tokens in the name, return tuple with found token-list and rest"""
        lower_tokens = [ t.lower() for t in tokens ]
        not_matched = ""
        all_tokens = []
        j = 1
        while j:
            j = re.match('(.*?)(' + '|'.join(tokens) + ')(.*)', name, re.IGNORECASE)
            if not j:
                break
            not_matched += ' ' + j.groups()[0] # Blanc prevents unwanted concatenation of unmatched substrings
            tok = j.groups()[1].lower()
            tok = tokens[lower_tokens.index(tok)]
            tok = FontnameTools.unify_style_names(tok)
            if len(tok):
                all_tokens.append(tok)
            name = j.groups()[2] # Recurse rest
        not_matched += ' ' + name
        return ( not_matched.strip(), all_tokens )

    @staticmethod
    def _parse_simple_font_name(name):
        """Parse a filename that does not follow the 'FontFamilyName-FontStyle' pattern"""
        # No dash in name, maybe we have blanc separated filename?
        if ' ' in name:
            return FontnameTools.parse_font_name(name.replace(' ', '-'))
        # Do we have a number-name boundary?
        p = re.split('(?<=[0-9])(?=[a-zA-Z])', name)
        if len(p) > 1:
            return FontnameTools.parse_font_name('-'.join(p))
        # Or do we have CamelCase?
        n = FontnameTools.camel_explode(name)
        if n != name:
            return FontnameTools.parse_font_name(n.replace(' ', '-'))
        return (False, FontnameTools.camel_casify(name), [], [], [], '')

    @staticmethod
    def parse_font_name(name):
        """Expects a filename following the 'FontFamilyName-FontStyle' pattern and returns ... parts"""
        name = re.sub('[_\s]+', ' ', name)
        matches = re.match(r'([^-]+)(?:-(.*))?', name)
        familyname = FontnameTools.camel_casify(matches.group(1))
        style = matches.group(2)

        if not style:
            return FontnameTools._parse_simple_font_name(name)

        # These are the FontStyle keywords we know, in three categories
        # Weights end up as Typographic Family parts ('after the dash')
        # Styles end up as Family parts (for classic grouping of four)
        # Others also end up in Typographic Family ('before the dash')
        weights = [ 'Thin', 'Light', 'ExtraLight', 'SemiBold', 'Demi',
                    'SemiLight', 'Medium', 'Black', 'ExtraBold', 'Heavy',
                    'Oblique', 'Condensed', 'SemiCondensed', 'ExtraCondensed',
                    'Narrow', 'SemiNarrow', 'Retina', ]
        styles = [ 'Bold', 'Italic', 'Regular', 'Normal', ]
        other = [ 'Book', '-', 'Roman', 'Text', 'For', 'Powerline', ]
        other += [ 'LGC', '11', 'uni-11', '14', 'uni-14', 'IIx', 'CE'] # Some font specialities
        other += [ '1mn', '1c', '1m', '1p', '2c', '2m', '2p', ] # MPlus names need to be preserved (sort array elements long to short, i.e. '1mn' first)

        # Sometimes used abbreviations
        weight_abbrevs = [ 'ob', 'c', 'm', 'l', ]
        style_abbrevs = [ 'it', 'r', 'b', 'i', ]

        ( style, weight_token ) = FontnameTools.get_name_token(style, weights)
        ( style, style_token ) = FontnameTools.get_name_token(style, styles)
        ( style, other_token ) = FontnameTools.get_name_token(style, other)
        if len(style) < 4:
            ( style, weight_token_abbrevs ) = FontnameTools.get_name_token(style, weight_abbrevs)
            ( style, style_token_abbrevs ) = FontnameTools.get_name_token(style, style_abbrevs)
            weight_token += weight_token_abbrevs
            style_token += style_token_abbrevs
        while 'Regular' in style_token and len(style_token) > 1:
            # Correct situation where "Regular" and something else is given
            style_token.remove('Regular')

        # Recurse to see if unmatched stuff between dashes can belong to familyname
        if '-' in style:
            matches = re.match(r'(\w+)-(.*)', style)
            return FontnameTools.parse_font_name(familyname + matches.group(1) + '-' + matches.group(2))

        style = re.sub(r'(^|\s)\d+(\.\d+)+(\s|$)', r'\1\3', style) # Remove (free standing) version numbers
        style_parts = FontnameTools.drop_empty(style.split(' '))
        style = ' '.join(map(FontnameTools.front_upper, style_parts))
        familyname = FontnameTools.camel_explode(familyname)
        return (True, familyname, weight_token, style_token, other_token, style)

    SIL_TABLE = [
        ( '(s)ource',                   r'\1auce' ),
        ( '(h)ermit',                   r'\1ermit' ),
        ( '(h)asklig',                  r'\1asklug' ),
        ( '(s)hare',                    r'\1hure' ),
        ( 'IBM[- ]?plex',               r'Blex' ), # We do not keep the case here
        ( '(t)erminus',                 r'\1erminess' ),
        ( '(l)iberation',               r'\1iteration' ),
        ( 'iA([- ]?)writer',            r'iM\1Writing' ),
        ( '(a)nka/(c)oder',             r'\1na\2onder' ),
        ( '(c)ascadia( ?)(c)ode',       r'\1askaydia\3ove' ), # Also drop blank (\2)
        ( '(c)ascadia( ?)(m)ono',       r'\1askaydia\3ono' ), # Also drop blank (\2)
        ( '(m)plus',                    r'\1+'), # Added this, because they use a plus symbol :->
        # Noone cares that font names starting with a digit are forbidden:
        # ( '(3270)',                     r'Ibeam\1'),
    ]
