#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright 2016 The Fontbakery Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Adapted for the Hack typeface build workflow by Chris Simpkins

import os
import sys
from fontTools.ttLib import TTFont

def main(argv):
    for path in argv:
        if not os.path.exists(path):
            sys.stderr.write("[fix-fstype.py] ERROR: " + path + " is not a valid path to a font file")
            sys.exit(1)
        else:
            font = TTFont(path)
            font['OS/2'].fsType = 0
            font.save(path)
            print(path + " - successful fstype fix")

if __name__ == '__main__':
  main(sys.argv[1:])
