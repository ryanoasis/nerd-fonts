#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright 2013,2016 The Font Bakery Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# See AUTHORS.txt for the list of Authors and LICENSE.txt for the License.

# Adapted for the Hack typeface build workflow by Chris Simpkins

from __future__ import print_function, unicode_literals
import sys
import os
from fontTools import ttLib


def set_empty_dsig(ttFont):
  newDSIG = ttLib.newTable("DSIG")
  newDSIG.ulVersion = 1
  newDSIG.usFlag = 0
  newDSIG.usNumSigs = 0
  newDSIG.signatureRecords = []
  ttFont.tables["DSIG"] = newDSIG

def main(argv):
  for path in argv:
    if not os.path.exists(path):
      sys.stderr.write("[fix-dsig.py] ERROR: " + path + " is not a valid path to a font file")
      sys.exit(1)
    else:
      font = ttLib.TTFont(path)
      set_empty_dsig(font)
      font.save(path)
      print(path + " - successful DSIG table fix")

if __name__ == '__main__':
  main(sys.argv[1:])
