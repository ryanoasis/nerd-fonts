#!/usr/bin/env python
# coding=utf8

import re
from FontnameTools import FontnameTools

class FontnameParser:
    """Parse a font name and generate all kinds of names"""

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
        [ self.parse_ok, self._basename, self.weight_token, self.style_token, self.other_token, self.rest ] = FontnameTools.parse_font_name(filename)
        self.basename = self._basename

    def _make_ps_mame(self, n):
        """Helper to limit font name length in PS names"""
        if self.for_windows and len(n) > 31:
            print('Shortening too long PS family name')
            return n[:31]
        return n

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
        if ('Regular' in styles
                and (not self.keep_regular_in_family # User says: Regular is the normal font, so it is not mentioned
                    or len(self.weight_token) > 0)): # This is actually a malformed font name
            styles = list(self.style_token)
            styles.remove('Regular')
        # For naming purposes we want Oblique to be part of the styles
        (weights, styles) = FontnameTools.make_oblique_style(weights, styles)
        return FontnameTools.concat(self.basename, self.rest, self.other_token, self.fullname_suff, win, weights, styles)

    def psname(self):
        """Get the SFNT PostScriptName (ID 6)"""
        # The name string must be no longer than 63 characters and restricted to the printable ASCII subset, codes 33 to 126,
        # except for the 10 characters '[', ']', '(', ')', '{', '}', '<', '>', '/', '%'
        out = ""
        # This is almost self.family() + '-' + self.subfamily() but without short styles:
        for c in FontnameTools.concat(self.basename, self.rest, self.other_token, self.fontname_suff) + '-' + FontnameTools.concat(self.weight_token, self.style_token):
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
        return FontnameTools.concat(self.basename, self.rest, self.other_token, self.family_suff)

    def preferred_styles(self):
        """Get the SFNT Preferred Styles (ID 17)"""
        styles = self.style_token
        weights = self.weight_token
        if self.suppress_preferred_if_identical and len(weights) == 0:
            # Do not set if identical to ID 2
            return ''
        # For naming purposes we want Oblique to be part of the styles
        (weights, styles) = FontnameTools.make_oblique_style(weights, styles)
        return FontnameTools.concat(weights, styles)

    def family(self):
        """Get the SFNT Familyname (ID 1)"""
        # We use the short form of the styles to save on number of chars
        other = self.other_token
        weight = self.weight_token
        if self.use_short_style:
            other = FontnameTools.short_styles(other)
            weight = FontnameTools.short_styles(weight)
        return FontnameTools.concat(self.basename, self.rest, other, self.family_suff, weight)

    def subfamily(self):
        """Get the SFNT SubFamily (ID 2)"""
        if len(self.style_token) == 0:
            if 'Oblique' in self.weight_token:
                return FontnameTools.concat(self.style_token, 'Italic')
            return 'Regular'
        if 'Oblique' in self.weight_token and not 'Italic' in self.style_token:
                return FontnameTools.concat(self.style_token, 'Italic')
        return FontnameTools.concat(self.style_token)

    def ps_familyname(self):
        """Get the PS Familyname"""
        return self._make_ps_mame(self.family())

    def ps_fontname(self):
        """Get the PS fontname"""
        # This Adobe restriction is classically ignored
        # if len(n) > 29:
        #     print('Shortening too long PS fontname')
        #     return n[:29]
        return self._make_ps_mame(self.psname())

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

        # We have to work around several issues in fontforge:
        #
        # a. Remove some entries from SFNT table; fontforge has no API function for that
        #
        # b. Fontforge does not allow to set SubFamily (and other) to any value:
        #
        #    Fontforge lets you set any value, unless it is the default value. If it
        #    is the default value it does not set anything. It also does not remove
        #    a previously existing non-default value. Why it is done this way is
        #    unclear:
        #      fontforge/python.c SetSFNTName() line 11431
        #        return( 1 ); /* If they set it to the default, there's nothing to do */
        #
        #    Then is the question: What is the default? It is taken from the
        #    currently set fontname (??!). The fontname is parsed and everything
        #    behind the dash is the default SubFamily:
        #      fontforge/tottf.c DefaultTTFEnglishNames()
        #      fontforge/splinefont.c _GetModifiers()
        #
        #    To fix this without touching Fontforge we need to set the SubFamily
        #    directly in the SFNT table:
        #
        # c. Fontforge has the bug that it allows to write empty-string to a SFNT field
        #    and it is actually embedded as empty string, but empty strings are not
        #    shown if you query the sfnt_names *rolleyes*

        sfnt_list = []
        TO_DEL = ['Family', 'SubFamily', 'Fullname', 'Postscriptname', 'Preferred Family', 'Preferred Styles', 'Compatible Full']
        for l, k, v in list(font.sfnt_names):
            if not k in TO_DEL:
                sfnt_list += [( l, k, v )]

        sfnt_list += [( 'English (US)', 'Family', self.family() )]
        sfnt_list += [( 'English (US)', 'SubFamily', self.subfamily() )]
        sfnt_list += [( 'English (US)', 'Fullname', self.fullname() )]
        sfnt_list += [( 'English (US)', 'PostScriptName', self.psname() )]

        p_fam = self.preferred_family()
        if len(p_fam):
            sfnt_list += [( 'English (US)', 'Preferred Family', p_fam )]
        p_sty = self.preferred_styles()
        if len(p_sty):
            sfnt_list += [( 'English (US)', 'Preferred Styles', p_sty )]

        font.sfnt_names = tuple(sfnt_list)

        font.macstyle = self.macstyle(font.macstyle)

        # TODO: fsSelection, unfortunately fontforge does not support that directly
        # but has some automaton to deduce it from macstyle, which means loosing information
        # https://github.com/fontforge/fontforge/issues/2131
        # https://github.com/jsomedon/Fix-fsSelection-bits-for-SF-fonts/blob/main/fix_fsSelection.sh
        # Well, lets ignore it for now, as we always did ;)
