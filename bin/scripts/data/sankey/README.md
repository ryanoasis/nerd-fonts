## How to update the sankey diagram

![Sankey Generator Screenshot](./sankey_settings.png)


### Generate diagram

Goto https://sankeymatic.com/

Enter data:

    Powerline Symbols: 7 icons [7] Nerd Fonts: 9,014 icons
    Powerline Extra Symbols: 38 icons [31] Nerd Fonts: 9,014 icons
    Font Awesome: 675 icons [675] Nerd Fonts: 9,014 icons
    Font Awesome Extension: 170 icons [170] Nerd Fonts: 9,014 icons
    Devicons:198 icons [198] Nerd Fonts: 9,014 icons
    Weather Icons: 228 icons [228] Nerd Fonts: 9,014 icons
    Seti UI + Custom: 179 icons [179] Nerd Fonts: 9,014 icons
    Octicons: 172 icons [172] Nerd Fonts: 9,014 icons
    Font Logos: 48 icons [48] Nerd Fonts: 9,014 icons
    IEC Power Symbols: 5 icons [5] Nerd Fonts: 9,014 icons
    Pomicons: 11 icons [11] Nerd Fonts: 9,014 icons
    Material Design: 6,896 icons [2119] Nerd Fonts: 9,014 icons
    Codicons: 387 icons [387] Nerd Fonts: 9,014 icons
    :Nerd Fonts: 9,014 icons #3484bb

Note that we do not use the amount calculation anymore but do that by hand. The reason is that Material Design has so many icons now, if we keep this graph to scale MDI will dominate them all. So we put the numbers and the sum there explicitely as text and do the scaling (number is brackets) about as before.

### Steps

_See `sankeymatic_source.txt`_
```
Height 53
Spacing 71
Nodes Width 18
Nodes Color Categories
Flow Curviness 0.7
Show Node totals (remove checkmark)
Place the first labels: After the node
Place labels on the other side starting at: Stage 2
Label Size 14
Label Face mono
Label Unit Suffix " icons"
Diagram Size Width 600
Diagram Size Height 764
Deselect 'Include "Made with ..."'

Download .SVG

Open in inkscape

Ctrl-click on 'Nerd Fonts: x,xxx icons'
Change text size (top bar) to 16
Ctrl-click on underlying box
Rescale to fit

Rip out old icon sets from old diagram
And insert in new
Adapt colors if need be:
Select icon group
Use eyedropper tool and click on colored bar of new diagram

Save as compressed inkscape svgz
Store as bin/scripts/data/sankey/sankey-glyphs-x.x.x.svgz

Save as optimized svg, select:
  Remove XML decl
  Remove metadata
  Remove comments
  Embed raster img
  Untick Format with line-breaks
Store as images/sankey-glyphs-combined-diagram.svg
Store as assets/img/sankey-glyphs-combined-diagram.svg (in gh-pages)

Use Export as PNG... with Z_DEFAULT_COMPTESSION
Store as assets/img/sankey-glyphs-combined-diagram.png (in gh-pages)
```
