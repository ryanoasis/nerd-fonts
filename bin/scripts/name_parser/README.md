## Creating Consistently Grouped Patched Fonts

This is a small sub-project to font-patcher that uses a little bit more knowledge
to come up with font names and name parts. In applications multiple fonts are grouped
under a 'Family'. Each member of the Family has a different 'SubFamily' or 'Style'.

Consider a font named 'Times' that has two variants: normal and bold. For this font the
Family would be 'Times' and the 'Style' would be 'Regular' (i.e normal) in one file and
'Bold' in the other file.

With this information applications are able to group all 'Times' together and additionally choose the
'Bold' font if the user pushes the 'B' button on the font style dialog in that application.

### Motivation

Quite a number of patched fonts have inconsistent or simply wrong font grouping. The naming in
general is sometimes surprising and not following naming conventions. This is in part due to
the font-patcher, but in part the source fonts are already strange.
This results in invisible (but installed) fonts in some applications, inconsistent naming
(Familyname differs from Fullname) and not correctly working bold/italic selectors in some applications.

And we would like to have the information within the names sorted in a consistent way.
usually a font name consists of these parts (in this order):

1. Name base (e.g. `Noto`)
2. Variant (e.g. `Sans`)
3. Subvariant (e.g. `Display`)
4. Weight (e.g. `Black`)
5. Style (e.g. `Italic`)

This is important because we want to add subvariant information, namely the `Nerd Font` part.

Example:

* (old) `Iosevka Term Light Italic Nerd Font`
* (new) `Iosevka Term Nerd Font Light Italic`

### The Plan

To solve these issues the font name parts have to be analyzed more thoroughly and then categorized.
These categories are then used to assemble the names in correct order. The simple (not
typographically aware) applications shall always get groups of at most four styles, and these
are Regular, Bold, Italic, and Bold-Italic. Other styles turn up as Families, because this is the
only way they would work in these more simple applications.

Typographically aware applications, on the other hand, get all styles grouped under one Family name.

First experiments showed that the full information can usually be restored already from the file
names that our source fonts have.

This new naming is complete optional (but recommended). Give the option `--makegroups` to `font-patcher`
and it will try to come up with reasonable grouping and naming. Leave the option out and it will
work as it always did.

### The Tests

In this directory there are two tests.

1. The first test checks the basics of the algorithm. It takes the filenames of all fonts in
   `src/unpatched-fonts/`, then it calculates the naming and compares it to the original
   naming in the font files. Ideally they would be equal.
2. The second test does a 'production run'. It patches each font in `src/unpatched-fonts/`
   and patches it two times: Once without `--makegroups` and once with. Then it compares the
   naming, and it also shows the original font naming (for comparison).

All tests base on these assumptions

* Fullname must be roughly equal
* Fontname must be roughly equal
* Familyname must roughly equal, order of all words does not matter
  _(Order of words is ignored with test 2 only)_
* SubFamilyname must be equal, order of words does not matter
  _(First word must be equal, order of other words is ignored with test 2 only)_
* Typographic names can be empty if the correct typographic name would be equal to the ordinary name
* Tests are done case insensitive
* Some special exemptions are made (see `lenient_cmp()` in test scripts)

#### Test 1

`fontforge name_parser_test1 ../../../src/unpatched-fonts/**/*.[ot]tf 2>/dev/null`

This test takes the filename of a font, parses it and generates names from it. Then the actual
font is opened and the generated names are compared with the stored names. This test is used
to test the algorithm itself. Of course no SIL table is active as we want to preserve the original
names.

The output shows all the names, always two lines: first the generated names, then the readout
names. If there are differences the generated names are tagged with `+` and the readout ones
with `-`. If there are differences the actually different name part is marked with an `X`.

The differences have reasons, and there is a file with textual explanations for them. So far
all differences are 'ok'. A new run of the script will compare all differences with the stored
ones and alert the user if a new difference is detected (or a difference vanished). In this
way changes of the algorithm can be tested with a wide base of inputs.

#### Test 2

`fontforge name_parser_test2 ../../../src/unpatched-fonts/**/*.[ot]tf 2>/dev/null`

This test compares actually patched fonts. Every font in `src/unpatched-fonts/` is patched two
times: First with the 'old/classic' `font-patcher` naming, and second with the new naming
algorithm in action (by specifying `--makegroups`). Again the name parts are compared with some
lenience and an output generated like test 1 does.

Also again a file with known differences (with explanations) is read, and any new or vanished
differences are reported. In the report an additional line is given, tagged with `>`, that
contains the names of the original font, for human interpretation (often the reason
for a difference is obvious, because the classic `font-patcher` dropped information.

_Note: Fonts `NotoColorEmoji` and `Lilex-VF` are not patchable, and thus ignored_
_Note: Fonts `iosevka-heavyoblique`, `iosevka-term-heavyoblique`, `iosevka-mediumoblique` crash my machine and are ignored_

### Differences

The naming of the patched fonts, if `--makegroups` is applied, will be different. Of course, that is the goal.
What are the differences in particular:

* `Nerd Font` is not added in the end, but after the extended base name before the style
* The SubFamily contains only 4 Styles max: Regular, Bold, Italic, Bold-Italic
* The Noto fonts retain their abbreviated style names in the Family information
* `Nerd Font Mono` fonts get a `M` in windows mode (I believe that has been left out accidentally before)

Apart from these general things, all changes are documented in detail in the `name_parser_test2` issues file.
Here is an overview over all the things that get renamed and why:

| Occurences | Description |
|------------|-------------|
| 511        | Add weight/style to family |
|  43        | The fonts name is M+ not Mplus |
|  36        | Drop unneeded Typogr.Family/Typogr.Style |
|  26        | 'Term' is missing from Family |
|  22        | Change regular-equivalent name to Regular |
|  19        | Put Oblique into own SubFamily (and mark it as italic) |
|   5        | Drop Regular from Style |
|   4        | We handle (TTF) as sub-name |
|   4        | Fullname has been missing 'Nerd Font' |
|   4        | Bold / Bold-Italic are just a styles of Regular |
|   2        | Original font broken (Light in Family) |
|   2        | Classify Medium as own weigt and not Bold |
|   2        | Bold and Italic are styles of a basefont |
|   1        | Weight Condensed does not belong to base name |
|   1        | Use only Regular/Bold/Italic in SubFamily |
|   1        | Handle Retina as Weight and not Style |
|   1        | Do not call Semibold Light-Bold |

From the count we see that almost all fonts are affected by incorrect Family naming.

### Further steps

One can examine all the (current) naming differences in the `name_parser_test2.known_issues`
file. The Explanation is followed by three lines of names: source-file, patched-with-makegroups,
and patched-classic.

The Explanation sorts most differences into common groups. This helps to weed out
explanations that might do not need much attention.

### Helper scripts

There are some helper scripts that help examining the font files. Of course there are other,
more professional tools to dump font information, but here we get all we need in a concise
way:
* `query_mono` `font_name [font_name ...]`
* `query_names` `font_name [font_name ...]`
* `query_panose` `font_name`
* `query_sftn` `[<sfnt-name>] font_name`
* `query_version` `font_name`

They can be invoked like this `$ fontforge query_sfnt foo.ttf`.

### Appendix: The `name_parser_test*.known_issues` files

All differences of 'old' to 'new' naming (if not one of the very general kind like resorting of
the words) are documented in the `known_issues` files. For each difference a reason is given.

The files consist of entries that spans 3 (for test 1) or 4 (for test 2) lines.
| Line starts with | Contents |
|------------------|----------|
| #                | Reson for the difference (or `AUTOGENERATED`) |
| >                | Naming fo the original/source font (only test 2) |
| +                | Naming with `--makegroups` (new naming) |
| -                | Naming classically generated by font-patcher |

After any test run a `known_issues.new` file is generated. It contains all the issues
from the `known_issues` file that were detected. Original issues that are not
existing anymore are at the bottom of the new file, clearly marked as such. If new
(previously unexplained) issues were detected they show up with the `AUTOGENERATED`
reason.

After adding new fonts or replacing font files the test can be rerun. If there are issues
in the `.new` file they should be documented there, and the `.new` file replace the
original `known_issues` file (after removing possible 'obsolete' issues that are listed in
the bottom of the new file).

In this way one can tweak the parser code and compare very easily what a change
means for all the fonts, which will break or be repaired.
