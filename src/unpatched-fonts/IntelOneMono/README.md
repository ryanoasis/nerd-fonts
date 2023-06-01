# Intel One Mono Typeface

![Image of Intel One Mono character set](https://github.com/intel/intel-one-mono/assets/130394986/6c921cf4-f614-41bd-a909-363bb19f9a30)

Introducing Intel One Mono, an expressive monospaced font family that’s built with clarity, legibility, and the needs of developers in mind.

It’s easier to read, and available for free, with an open-source font license.

Identifying the typographically underserved low-vision developer audience, [Frere-Jones Type](https://frerejones.com/) designed the Intel One Mono typeface in partnership with the Intel Brand Team and VMLY&R, for maximum legibility to address developers' fatigue and eyestrain and reduce coding errors. A panel of low-vision and legally blind developers provided feedback at each stage of design.

Intel One Mono also covers a wide range of over 200 languages using the Latin script. The Intel One Mono fonts are provided in four weights — Light, Regular, Medium, and Bold — with matching italics, and we are happy to share both an official release of fonts ready to use as well as editable sources.    

## Using the Fonts

To install the fonts, please use the provided builds under [Releases](https://github.com/intel/intel-one-mono/releases). Refer to your software’s documentation for how to activate and use these fonts.

### Font Formats
- We recommend the .otf or .ttf format for desktop use.
- The .ttf files are also well suited for mobile apps.
- The .woff and .woff2 fonts are optimized for web use.

### Screen Rendering and Size Ranges
We recommend using these fonts at 7 points and larger in print, 9 pixels and larger on screen. The .ttf, .woff and .woff2 fonts provided in the official release have been manually optimized for screen display, improving clarity and legibility, especially on Windows platforms.

### Available OpenType Features
Outside of the default characters, there are a few extra features that are accessible in some applications, as well as via CSS:
**Raised Colon:** there is an option for a raised colon, either applied contextually between numbers or activated generally. The contextual option is available via ss11 (Stylistic Set #11), or use ss12 (Stylistic Set #12) or salt (Stylistic Alternates) for the global switch.
**Language Support:** ccmp and locl features ensure correct display across a wide range of languages. These are usually activated by default. We recommend setting the language tag/setting in your software to the desired language for best results.
**Superior/superscript and inferior/subscript figures** are included via their Unicode codepoints, or you can produce them from the default figures via the sups (Superscript), subs (Subscript), and si (Scientific Inferior) features.
**Fraction numerals** are similarly available via the numr (Numerator) and dnom (Denominator) features. A set of premade fractions is also available in the fonts.

## Viewing and Editing Sources

### UFO Source Files: Instances
You will find editable sources in the sources directory. The instances subfolder contains separate source files for each style of the typeface. Sources are provided in .ufo files, which contain complete artwork, OpenType features, as well as meta information like naming and vertical alignments for each style of the typeface.

These are not installable fonts, but rather the source files that produce them: UFO (Unified Font Object) is an open, human-readable font source file format; you can find the [file spec here](https://github.com/unified-font-object/ufo-spec). 
These sources were created using [RoboFont](https://robofont.com/). Many other font editors will also be able to open .ufo files; we recommend using RoboFont version 3.4 or up for the closest approximation of the original design and development environment.

### Outline Formats
For instances, you will find postscript and truetype subfolders; these contain separate source files for the .otf format and the .ttf/.woff/.woff2 files respectively. Since the format for the outline drawings differs between these sets of formats, for best results we recommend using the postscript sources to create .otf fonts, and the TrueType sources to create .ttf, .woff, or .woff2 fonts.
 
### Generating Fonts
After making your desired edits, you can generate installable fonts directly from the font editor using its “Generate Font” functionality. If you use RoboFont, any install options should default to the ideal settings, but here they are for reference:
- For .otf builds, we recommend activating “Decompose” as well as “Autohint” options.
- For .ttf, .woff and .woff2 builds, we recommend activating the “Autohint” option only for more compact files (see note on hinting below).
- In any case, we recommend using the “Release Mode” setting for best results.
 
### UFO Source Files: Masters

If you would like to apply edits across multiple weights, a more advanced yet potentially efficient way is to edit the masters. These are special sources that describe the extreme points in the design space — the lightest and heaviest weights for both roman and italic designs.

After editing masters, you will need to rerun interpolation to generate individual weights and styles within that design space. This requires the .designspace files enclosed with the masters; the designspace format is an open, XML-based format that describes interpolation spaces ([format specification](https://github.com/fonttools/fonttools/tree/main/Doc/source/designspaceLib) for reference). For a RoboFont-based workflow we recommend [Skateboard](https://extensionstore.robofont.com/extensions/skateboard/) for interpolation; you can also use the free [DesignSpaceEditor](https://github.com/LettError/designSpaceRoboFontExtension) extension to view and edit these files.

Note that masters are only available in postscript format, so they will be best for creating .otf fonts. If you need to make TrueType based builds from the masters, we recommend [QuadraticConverter](https://github.com/BlackFoundry/QuadraticConverter) for best quality conversion of the curves before generating .ttf, .woff, or .woff2 files; mind that the results will not match the provided instances precisely.

NB: The prepared instances contain some additional data that cannot be stored in the masters and maintained through interpolation. For best results, compare new interpolations to the existing instance sources and update them accordingly, specifically the information accessible through the Font Info panels.


### Other Files: Hinting Source
For TrueType-based formats (.ttf, .woff, .woff2 files), the official releases are manually optimized for screen rendering. These “hinting” sources are stored separately from the .ufo files, which do not contain any TrueType hinting information. When rebuilding TrueType-based formats, we recommend using the “autohint” option to achieve reasonable, though not identical screen rendering.

If you would like to access and edit manual hinting instructions, you will find these in the separate set of source files under other files/truetype hinting source. These special TTF files will be viewable and editable using [Microsoft VTT](https://learn.microsoft.com/en-us/typography/tools/vtt/).
 
 
## Suggesting Edits
If you have suggestions for edits or additions to the official releases, please email brand_q@intel.com. 
