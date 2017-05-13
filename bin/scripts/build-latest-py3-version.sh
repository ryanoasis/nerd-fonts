#!/bin/bash
# project: Nerd Fonts (https://github.com/ryanoasis/nerd-fonts)
# version: 1.0.0
# Executes the 2to3 conversion to generate latest py3 version of font patcher

LINE_PREFIX="# [Nerd Fonts] "

# Check for 2to3
type 2to3 >/dev/null 2>&1 || {
  echo >&2 "$LINE_PREFIX 2to3 must be installed before running this script."
  echo >&2 "# Please see details at"
  echo >&2 "# https://docs.python.org/2/library/2to3.html"
  exit 1
}

# -x unicode: ignore changing unicode to str
# purpose: to prevent 2to3 by default from changing 'unicode' to 'str'
# because in FontForge 'str' is not an attribute of the glyph object
# for more information:
# see: https://docs.python.org/2/library/2to3.html#to3-fixers
# see: https://github.com/ryanoasis/nerd-fonts/issues/49
# see: https://github.com/ryanoasis/nerd-fonts/issues/79
2to3 -x unicode -n -w ./font-patcher --add-suffix=-py3

# fix environment (first line in file)
# from `/usr/bin/env python2` when it should
# be `/usr/bin/env python3`
# using 1 as line number and '%' as delimiter:
sed -i '1s%.*%#!/usr/bin/env python3%' ./font-patcher-py3
