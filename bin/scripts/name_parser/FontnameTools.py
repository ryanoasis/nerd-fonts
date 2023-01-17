#!/usr/bin/env python
# coding=utf8

import re
import sys

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
        parts = re.split('(?<=[a-z0-9])(?=[A-Z])', word)
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
            if type(thing) is not list:
                all.append(thing)
            else:
                all += thing
        return ' '.join(FontnameTools.drop_empty(all))

    @staticmethod
    def unify_style_names(style_name):
        """Substitude some known token with standard wording"""
        known_names = {
            # Source of the table is the current sourcefonts
            # Left side needs to be lower case
            '-':            '',
            'book':         '',
            'text':         '',
            'ce':           'CE',
            '(ttf)':        '(TTF)',
            #'semibold':     'Demi',
            'ob':           'Oblique',
            'it':           'Italic',
            'i':            'Italic',
            'b':            'Bold',
            'normal':       'Regular',
            'c':            'Condensed',
            'r':            'Regular',
            'm':            'Medium',
            'l':            'Light',
        }
        if style_name in known_names:
            return known_names[style_name.lower()]
        return style_name

    @staticmethod
    def shorten_style_name(name):
        """Substitude some known styles to short form"""
        known_names = {
            # Chiefly from Noto
            'SemiCondensed':    'SemCond',
            'Condensed':        'Cond',
            'ExtraCondensed':   'ExtCond',
            'SemiBold':         'SemBd',
            'ExtraBold':        'ExtBd',
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
    def get_name_token(name, tokens, allow_regex_token = False):
        """Try to find any case insensitive token from tokens in the name, return tuple with found token-list and rest"""
        # The default mode (allow_regex_token = False) will try to find any verbatim string in the
        # tokens list (case insensitive matching) and give that tokens list item back with
        # unchanged case (i.e. [ 'Bold' ] will match "bold" and return it as [ 'Bold', ]
        # In the regex mode (allow_regex_token = True) it will use the tokens elements as
        # regexes and return the original (i.e. from name) case.
        #
        # Token are always used in a regex and may not capture, use non capturing
        # grouping if needed (?: ... )
        lower_tokens = [ t.lower() for t in tokens ]
        not_matched = ""
        all_tokens = []
        j = 1
        regex = re.compile('(.*?)(' + '|'.join(tokens) + ')(.*)', re.IGNORECASE)
        while j:
            j = regex.match(name)
            if not j:
                break
            if len(j.groups()) != 3:
                sys.exit('Malformed regex in FontnameTools.get_name_token()')
            not_matched += ' ' + j.groups()[0] # Blanc prevents unwanted concatenation of unmatched substrings
            tok = j.groups()[1].lower()
            if tok in lower_tokens:
                tok = tokens[lower_tokens.index(tok)]
            tok = FontnameTools.unify_style_names(tok)
            if len(tok):
                all_tokens.append(tok)
            name = j.groups()[2] # Recurse rest
        not_matched += ' ' + name
        return ( not_matched.strip(), all_tokens )

    @staticmethod
    def postscript_char_filter(name):
        """Filter out characters that are not allowed in Postscript names"""
        # The name string must be restricted to the printable ASCII subset, codes 33 to 126,
        # except for the 10 characters '[', ']', '(', ')', '{', '}', '<', '>', '/', '%'
        out = ""
        for c in name:
            if c in '[](){}<>/%' or ord(c) < 33 or ord(c) > 126:
                continue
            out += c
        return out

    SIL_TABLE = [
        ( '(s)ource',                   r'\1auce' ),
        ( '(h)ermit',                   r'\1urmit' ),
        ( '(h)asklig',                  r'\1asklug' ),
        ( '(s)hare',                    r'\1hure' ),
        ( 'IBM[- ]?plex',               r'Blex' ), # We do not keep the case here
        ( '(t)erminus',                 r'\1erminess' ),
        ( '(l)iberation',               r'\1iteration' ),
        ( 'iA([- ]?)writer',            r'iM\1Writing' ),
        ( '(a)nka/(c)oder',             r'\1na\2onder' ),
        ( '(c)ascadia( ?)(c)ode',       r'\1askaydia\2\3ove' ),
        ( '(c)ascadia( ?)(m)ono',       r'\1askaydia\2\3ono' ),
        ( '(m)plus',                    r'\1+'), # Added this, because they use a plus symbol :->
        ( 'Gohufont',                   r'GohuFont'), # Correct to CamelCase
        # Noone cares that font names starting with a digit are forbidden:
        ( 'IBM 3270',                   r'3270'), # for historical reasons and 'IBM' is a TM or something
    ]

    @staticmethod
    def is_keep_regular(basename):
        """This has been decided by the font designers, we need to mimic that (for comparison purposes)"""
        KEEP_REGULAR = [
            'Agave',
            'Arimo',
            'Aurulent',
            'Cascadia',
            'Cousine',
            'Fantasque',
            'Fira',

            'Overpass',
            'Lilex',
            'Inconsolata$', # not InconsolataGo
            'IAWriter',
            'Meslo',
            'Monoid',
            'Mononoki',
            'Hack',
            'JetBrains Mono',
            'Noto Sans',
            'Noto Serif',
            'Victor',
        ]
        for kr in KEEP_REGULAR:
            if (basename.rstrip() + '$').startswith(kr): return True
        return False

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
        name = re.sub(r'\bsemi-condensed\b', 'SemiCondensed', name, 1, re.IGNORECASE) # Just for "3270 Semi-Condensed" :-/
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
        # Some font specialities:
        other = [
            '-', 'Book', 'For', 'Powerline',
            'Text',             # Plex
            'IIx',              # Profont IIx
            'LGC',              # Inconsolata LGC
            r'\(TTF\)',         # Terminus (TTF)
            r'\bCE\b',          # ProggycleanTT CE
            r'[12][cmp]n?',     # MPlus
            r'(?:uni-)?1[14]',  # GohuFont uni
        ]

        # Sometimes used abbreviations
        weight_abbrevs = [ 'ob', 'c', 'm', 'l', ]
        style_abbrevs = [ 'it', 'r', 'b', 'i', ]

        ( style, weight_token ) = FontnameTools.get_name_token(style, weights)
        ( style, style_token ) = FontnameTools.get_name_token(style, styles)
        ( style, other_token ) = FontnameTools.get_name_token(style, other, True)
        if len(style) < 4:
            ( style, weight_token_abbrevs ) = FontnameTools.get_name_token(style, weight_abbrevs)
            ( style, style_token_abbrevs ) = FontnameTools.get_name_token(style, style_abbrevs)
            weight_token += weight_token_abbrevs
            style_token += style_token_abbrevs
        while 'Regular' in style_token and len(style_token) > 1:
            # Correct situation where "Regular" and something else is given
            style_token.remove('Regular')

        # Recurse to see if unmatched stuff between dashes can belong to familyname
        matches2 = re.match(r'(\w+)-(.*)', style)
        if matches2:
            return FontnameTools.parse_font_name(familyname + matches2.group(1) + '-' + matches2.group(2))

        style = re.sub(r'(^|\s)\d+(\.\d+)+(\s|$)', r'\1\3', style) # Remove (free standing) version numbers
        style_parts = FontnameTools.drop_empty(style.split(' '))
        style = ' '.join(map(FontnameTools.front_upper, style_parts))
        familyname = FontnameTools.camel_explode(familyname)
        return (True, familyname, weight_token, style_token, other_token, style)
