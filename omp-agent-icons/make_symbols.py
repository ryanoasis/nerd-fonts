import math
import sys

import fontforge

OUT = sys.argv[1]
SSH, GPG = 0xFA000, 0xFA001
KAPPA = 0.5522847498

font = fontforge.font()
font.encoding = "UnicodeFull"
font.em = 1000
font.ascent = 800
font.descent = 200
font.fontname = "OMPAgentIcons"
font.familyname = "OMP Agent Icons"
font.fullname = "OMP Agent Icons"


def arc(pen, cx, cy, r, a0, a1, first):
    """Cubic arc of at most 90 degrees; y axis up, angles in radians."""
    k = KAPPA * r * (a1 - a0) / (math.pi / 2)
    p0 = (cx + r * math.cos(a0), cy + r * math.sin(a0))
    p1 = (cx + r * math.cos(a1), cy + r * math.sin(a1))
    c1 = (p0[0] - k * math.sin(a0), p0[1] + k * math.cos(a0))
    c2 = (p1[0] + k * math.sin(a1), p1[1] - k * math.cos(a1))
    if first:
        pen.moveTo(p0)
    pen.curveTo(c1, c2, p1)
    return p1


def circle(pen, cx, cy, r, clockwise):
    sign = -1 if clockwise else 1
    for i in range(4):
        a0 = sign * i * math.pi / 2
        arc(pen, cx, cy, r, a0, a0 + sign * math.pi / 2, i == 0)
    pen.closePath()


def rect(pen, x0, y0, x1, y1, clockwise=True):
    pts = [(x0, y0), (x0, y1), (x1, y1), (x1, y0)] if clockwise else [(x0, y0), (x1, y0), (x1, y1), (x0, y1)]
    pen.moveTo(pts[0])
    for p in pts[1:]:
        pen.lineTo(p)
    pen.closePath()


def rounded_rect(pen, x0, y0, x1, y1, r):
    pen.moveTo((x0 + r, y1))
    pen.lineTo((x1 - r, y1))
    arc(pen, x1 - r, y1 - r, r, math.pi / 2, 0, False)
    pen.lineTo((x1, y0 + r))
    arc(pen, x1 - r, y0 + r, r, 0, -math.pi / 2, False)
    pen.lineTo((x0 + r, y0))
    arc(pen, x0 + r, y0 + r, r, -math.pi / 2, -math.pi, False)
    pen.lineTo((x0, y1 - r))
    arc(pen, x0 + r, y1 - r, r, math.pi, math.pi / 2, False)
    pen.closePath()


def finish(g):
    g.width = 1000
    g.removeOverlap()
    g.correctDirection()


# Key (ssh): ring on the left, shaft to the right with two teeth.
g = font.createChar(SSH, "omp_ssh_key")
pen = g.glyphPen()
circle(pen, 290, 400, 230, True)
circle(pen, 290, 400, 105, False)
rect(pen, 470, 350, 940, 450, True)
rect(pen, 760, 200, 850, 350, True)
rect(pen, 880, 260, 940, 350, True)
pen = None
finish(g)

# Padlock (gpg): rounded body, thick shackle, keyhole.
g = font.createChar(GPG, "omp_gpg_lock")
pen = g.glyphPen()
rounded_rect(pen, 170, 0, 830, 430, 70)
cx, base, straight, outer_r, inner_r = 500, 400, 120, 230, 130
top = base + straight
pen.moveTo((cx - outer_r, base))
pen.lineTo((cx - outer_r, top))
arc(pen, cx, top, outer_r, math.pi, math.pi / 2, False)
arc(pen, cx, top, outer_r, math.pi / 2, 0, False)
pen.lineTo((cx + outer_r, base))
pen.lineTo((cx + inner_r, base))
pen.lineTo((cx + inner_r, top))
arc(pen, cx, top, inner_r, 0, math.pi / 2, False)
arc(pen, cx, top, inner_r, math.pi / 2, math.pi, False)
pen.lineTo((cx - inner_r, base))
pen.closePath()
circle(pen, 500, 250, 70, False)
rect(pen, 468, 80, 532, 235, False)
pen = None
finish(g)

font.generate(OUT)
print("symbol font written:", OUT, [hex(g.unicode) for g in font.glyphs()])
