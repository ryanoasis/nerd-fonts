#!/usr/bin/env python
# coding=utf8

import re

class FontnameParser:
    """Deconstruct a font filename to get standardized name parts"""

    @staticmethod
    def front_upper(word):
        """Capitalize a string (but keep case of subsequent chars)"""
        return word[:1].upper() + word[1:]

    @staticmethod
    def camel_casify(word):
        """Remove blanks and use CamelCase for the new word"""
        return ''.join(map(FontnameParser.front_upper, word.split(' ')))

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
    def concat(*all_things):
        """Flatten a lot (list of) strings to a blank-separated string"""
        base = ''
        for thing in all_things:
            if len(thing) == 0: # list or string
                continue
            if type(thing) == str:
                base += ' ' + thing
            else:
                while '' in thing:
                    thing.remove('')
                base += ' ' + ' '.join(thing)
        return base.strip()

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
        return list(map(FontnameParser.shorten_style_name, styles))
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
            tok = FontnameParser.unify_style_names(tok)
            if len(tok):
                all_tokens.append(tok)
            name = j.groups()[2] # Recurse rest
        not_matched += ' ' + name
        return ( not_matched.strip(), all_tokens )

    @staticmethod
    def parse_font_name(name):
        """Expects a filename following the 'FontFamilyName-FontStyle' pattern and returns ... parts"""
        name = re.sub('[_\s]+', ' ', name)
        matches = re.match(r'([^-]+)(?:-(.*))?', name)
        familyname = FontnameParser.camel_casify(matches.group(1))
        style = matches.group(2)

        if not style:
            # No dash in name, maybe we have blanc separated filename?
            if ' ' in name:
                return FontnameParser.parse_font_name(name.replace(' ', '-'))
            # Do we have a number-name boundary?
            p = re.split('(?<=[0-9])(?=[a-zA-Z])', name)
            if len(p) > 1:
                return FontnameParser.parse_font_name('-'.join(p))
            # Or do we have CamelCase?
            n = FontnameParser.camel_explode(name)
            if n != name:
                return FontnameParser.parse_font_name(n.replace(' ', '-'))
            return (False, familyname, [], [], [], '')

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

        ( style, weight_token ) = FontnameParser.get_name_token(style, weights)
        ( style, style_token ) = FontnameParser.get_name_token(style, styles)
        ( style, other_token ) = FontnameParser.get_name_token(style, other)
        if len(style) < 4:
            ( style, weight_token_abbrevs ) = FontnameParser.get_name_token(style, weight_abbrevs)
            ( style, style_token_abbrevs ) = FontnameParser.get_name_token(style, style_abbrevs)
            weight_token += weight_token_abbrevs
            style_token += style_token_abbrevs
        while 'Regular' in style_token and len(style_token) > 1:
            # Correct situation where "Regular" and something else is given
            style_token.remove('Regular')

        # Recurse to see if unmatched stuff between dashes can belong to familyname
        if '-' in style:
            matches = re.match(r'(\w+)-(.*)', style)
            return FontnameParser.parse_font_name(familyname + matches.group(1) + '-' + matches.group(2))

        style = re.sub(r'(^|\s)\d+(\.\d+)+(\s|$)', r'\1\3', style) # Remove (free standing) version numbers
        style_parts = style.split(' ')
        while '' in style_parts:
            style_parts.remove('')
        style = ' '.join(map(FontnameParser.front_upper, style_parts))
        familyname = FontnameParser.camel_explode(familyname)
        return (True, familyname, weight_token, style_token, other_token, style)

    ### Objectify the parse result:

    def __init__(self, filename):
        """Parse a font filename and store the results"""
        self.parse_ok = False
        self.for_windows = False
        self.use_short_style = False
        self.keep_regular_in_family = False
        self.suppress_preferred_if_identical = True
        self.fullname_suff = ''
        self.fontname_suff = ''
        self.family_suff = ''
        self.name_subst = []
        [ self.parse_ok, self._basename, self.weight_token, self.style_token, self.other_token, self.rest ] = FontnameParser.parse_font_name(filename)
        self.basename = self._basename

    def set_for_windows(self, for_windows):
        """Create slightly different names, suitable for Windows use"""
        self.for_windows = for_windows
        return self

    def set_keep_regular_in_family(self, keep):
        """Familyname may contain 'Regular' where it should normally be suppressed"""
        self.keep_regular_in_family = keep

    def set_suppress_preferred(self, suppress):
        """Suppress ID16/17 if it is identical to ID1/2 (True is default)"""
        self.suppress_preferred_if_identical = suppress

    def inject_suffix(self, fullname, fontname, family):
        """Add a custom additonal string that shows up in the resulting names"""
        self.fullname_suff = fullname
        self.fontname_suff = fontname
        self.family_suff = family
        return self
        # font-patcher behavior:
        #   verboseSuff  = "Nerd Font"
        #   shortSuff    = win ? "NF" : "Nerd Font"
        #   verboseSuff += "Plus Font Awesome"
        #   shortSuff   += "A"
        # OR when complete:
        #   shortSuff    = "Nerd Font Complete"
        #   verboseSuff  = "Nerd Font Complete"
        # AND
        #   shortSuff   += "M"
        #   verboseSuff += "Mono"
        #
        # fullname += verboseSuff
        # fontname += shortSuff
        # if win familyname += "NF"
        # else   familyname += "Nerd Font"
        # if win fullname += "Windows Compatible"
        # if !win familyname += "Mono"
        #
        # THUS:
        # fontname => shortSuff
        # fullname => verboseSuff {{ we do the following already: }} + win ? "Windows Compatible" : ""
        # family => win ? "NF" : "Nerd Font" + mono ? "Mono" : ""

    def dump(self):
        """Get all stored filename parse results, mainly for debugging"""
        return (self.basename, self.weight_token, self.style_token, self.other_token, self.rest)

    def enable_short_style_when(self, prefix):
        """Enable short styles in SFNT Familyname when (original) font name starts with prefix"""
        self.use_short_style = self._basename.startswith(prefix)
        return self

    def add_name_substitution_table(self, table):
        """Have some fonts renamed, takes list of tuples (regex, replacement)"""
        # The regex will be anchored to name begin and used case insensitive
        # Replacement can have regex matches, mind to catch the correct source case
        self.name_subst = table
        for regex, replacement in self.name_subst:
            newname = re.sub('^' + regex, replacement, self._basename, 1, re.IGNORECASE)
            if newname != self._basename:
                self.basename = newname
                break
        return self

    ### Following the creation of the name parts:
    #
    # Relevant websites
    # https://www.fonttutorials.com/how-to-name-font-family/
    # https://docs.microsoft.com/en-us/typography/opentype/spec/name#name-ids
    # https://docs.microsoft.com/en-us/typography/opentype/spec/os2#fss
    # https://docs.microsoft.com/en-us/typography/opentype/spec/head#macstyle

    # Example (mind that they group 'semibold' as classic-group-of-4 Bold, while we will always only take bold as Bold):
    # Adobe Caslon Pro Regular            ID1: Adobe Caslon Pro         ID2: Regular
    # Adobe Caslon Pro Italic             ID1: Adobe Caslon Pro         ID2: Italic
    # Adobe Caslon Pro Semibold           ID1: Adobe Caslon Pro         ID2: Bold           ID16: Adobe Caslon Pro    ID17: Semibold
    # Adobe Caslon Pro Semibold Italic    ID1: Adobe Caslon Pro         ID2: Bold Italic    ID16: Adobe Caslon Pro    ID17: Semibold Italic
    # Adobe Caslon Pro Bold               ID1: Adobe Caslon Pro Bold    ID2: Regular        ID16: Adobe Caslon Pro    ID17: Bold
    # Adobe Caslon Pro Bold Italic        ID1: Adobe Caslon Pro Bold    ID2: Italic         ID16: Adobe Caslon Pro    ID17: Bold Italic

    # fontname === preferred_family + preferred_styles
    # fontname === family + subfamily
    #
    # familybase = basename + rest + other (+ suffix)
    # ID 1/2 just have self.style in the subfamily, all the rest ends up in the family
    # ID 16/17 have self.style and self.weight in the subfamily, the rest ends up in the family

    def fullname(self):
        """Get the SFNT Fullname (ID 4)"""
        if self.for_windows:
            win = 'Windows Compatible'
        else:
            win = ''
        styles = self.style_token
        weights = self.weight_token
        if 'Regular' in styles:
            if (not self.keep_regular_in_family # User says: Regular is the normal font, so it is not mentioned
                    or len(self.weight_token) > 0): # This is actually a malformed font name
                styles = list(self.style_token)
                styles.remove('Regular')
        # For naming purposes we want Oblique to be part of the styles
        (weights, styles) = FontnameParser.make_oblique_style(weights, styles)
        return FontnameParser.concat(self.basename, self.rest, self.other_token, self.fullname_suff, win, weights, styles)

    def psname(self):
        """Get the SFNT PostScriptName (ID 6)"""
        # The name string must be no longer than 63 characters and restricted to the printable ASCII subset, codes 33 to 126,
        # except for the 10 characters '[', ']', '(', ')', '{', '}', '<', '>', '/', '%'
        out = ""
        # This is almost self.family() + '-' + self.subfamily() but without short styles:
        for c in FontnameParser.concat(self.basename, self.rest, self.other_token, self.fontname_suff) + '-' + FontnameParser.concat(self.weight_token, self.style_token):
            if c in '[](){}<>/%':
                continue
            if ord(c) < 33 or ord(c) > 126:
                continue
            out += c
        return out[:63]

    def preferred_family(self):
        """Get the SFNT Preferred Familyname (ID 16)"""
        if self.suppress_preferred_if_identical and len(self.weight_token) == 0:
            # Do not set if identical to ID 1
            return ''
        return FontnameParser.concat(self.basename, self.rest, self.other_token, self.family_suff)

    def preferred_styles(self):
        """Get the SFNT Preferred Styles (ID 17)"""
        styles = self.style_token
        weights = self.weight_token
        if self.suppress_preferred_if_identical and len(weights) == 0:
            # Do not set if identical to ID 2
            return ''
        # For naming purposes we want Oblique to be part of the styles
        (weights, styles) = FontnameParser.make_oblique_style(weights, styles)
        return FontnameParser.concat(weights, styles)

    def family(self):
        """Get the SFNT Familyname (ID 1)"""
        # We use the short form of the styles to save on number of chars
        other = self.other_token
        weight = self.weight_token
        if self.use_short_style:
            other = FontnameParser.short_styles(other)
            weight = FontnameParser.short_styles(weight)
        return FontnameParser.concat(self.basename, self.rest, other, self.family_suff, weight)

    def subfamily(self):
        """Get the SFNT SubFamily (ID 2)"""
        if len(self.style_token) == 0:
            if 'Oblique' in self.weight_token:
                return FontnameParser.concat(self.style_token, 'Italic')
            return 'Regular'
        if 'Oblique' in self.weight_token and not 'Italic' in self.style_token:
                return FontnameParser.concat(self.style_token, 'Italic')
        return FontnameParser.concat(self.style_token)

    def ps_familyname(self):
        """Get the PS Familyname"""
        n = self.family()
        if self.for_windows and len(n) > 31:
            print('Shortening too long PS family name')
            return n[:31]
        return n

    def ps_fontname(self):
        """Get the PS fontname"""
        n = self.psname()
        # This Adobe restriction is classically ignored
        # if len(n) > 29:
        #     print('Shortening too long PS fontname')
        #     return n[:29]
        if self.for_windows and len(n) > 31:
            print('Shortening too long PS fontname')
            return n[:31]
        return n

    def macstyle(self, style):
        """Modify a given macStyle value for current name, just bits 0 and 1 touched"""
        b = style & (~3)
        b |= 1 if 'Bold' in self.style_token else 0
        b |= 2 if 'Italic' in self.style_token else 0
        return b

    def fs_selection(self, fs):
        """Modify a given fsSelection value for current name, bits 0, 5, 6, 8, 9 touched"""
        ITALIC = 1 << 0; BOLD = 1 << 5; REGULAR = 1 << 6; WWS = 1 << 8; OBLIQUE = 1 << 9
        b = fs & (~(ITALIC | BOLD | REGULAR | WWS | OBLIQUE))
        if 'Bold' in self.style_token:
            b |= BOLD
        # Ignore Italic if we have Oblique
        if 'Oblique' in self.weight_token:
            b |= OBLIQUE
        elif 'Italic' in self.style_token:
            b |= ITALIC
        # Regular is just the basic weight
        if len(self.weight_token) == 0:
            b |= REGULAR
        b |= WWS # We assert this by our naming process
        return b

    def rename_font(self, font):
        """Rename the font to include all information we found (font is fontforge font object)"""
        font.fontname = self.ps_fontname()
        font.fullname = self.fullname()
        font.familyname = self.ps_familyname()
        font.appendSFNTName('English (US)', 'Family', self.family())
        # NOT: font.appendSFNTName('English (US)', 'SubFamily', self.subfamily())
        font.appendSFNTName('English (US)', 'Fullname', self.fullname())
        font.appendSFNTName('English (US)', 'PostScriptName', self.psname())

        # Remove some entries from SFNT table; fontforge has no API function for that
        sfnt_list = []
        TO_DEL = ['Preferred Family', 'Preferred Styles', 'Compatible Full', 'SubFamily']
        for l, k, v in list(font.sfnt_names):
            if not k in TO_DEL:
                sfnt_list += [( l, k, v )]

        # Fontforge does not allow to set SubFamily to any value:
        #
        # Fontforge lets you set any value, unless it is the default value. If it
        # is the default value it does not set anything. It also does not remove
        # a previously existing non-default value. Why it is done this way is
        # unclear:
        #   fontforge/python.c SetSFNTName() line 11431
        #     return( 1 ); /* If they set it to the default, there's nothing to do */
        #
        # Then is the question: What is the default? It is taken from the
        # currently set fontname (??!). The fontname is parsed and everything
        # behind the dash is the default SubFamily:
        #   fontforge/tottf.c DefaultTTFEnglishNames()
        #   fontforge/splinefont.c _GetModifiers()
        #
        # To fix this without touching Fontforge we need to set the SubFamily
        # directly in the SFNT table:
        sfnt_list += [( 'English (US)', 'SubFamily', self.subfamily() )]
        font.sfnt_names = tuple(sfnt_list)

        # Fontforge has the bug that it allows to write empty-string to a SFNT field and it is actually embedded as empty string,
        # but empty strings are not shown if you query the sfnt_names *rolleyes*
        p_fam = self.preferred_family()
        if len(p_fam):
            font.appendSFNTName('English (US)', 'Preferred Family', p_fam)
        p_sty = self.preferred_styles()
        if len(p_sty):
            font.appendSFNTName('English (US)', 'Preferred Styles', p_sty)

        font.macstyle = self.macstyle(font.macstyle)

        # TODO: fsSelection, unfortunately fontforge does not support that directly
        # but has some automaton to deduce it from macstyle, which means loosing information
        # https://github.com/fontforge/fontforge/issues/2131
        # https://github.com/jsomedon/Fix-fsSelection-bits-for-SF-fonts/blob/main/fix_fsSelection.sh
        # Well, lets ignore it for now, as we always did ;)
