#!/usr/bin/env python3
import fileinput
import string
import re

print("* reading CONTRIBUTORS.md")
file = open("../../CONTRIBUTORS.md", "r")
contributorContents = file.read()
file.close()

print("* reading post")
file = open("../../_posts/2017-01-05-all-contributors.md", "r")
webContributorContents = file.read()
file.close()

print("* find fences")
starting_text = '<!-- UPDATE START -->'
ending_text = '<!-- UPDATE END -->'
wCC_start = webContributorContents.find(starting_text) + len(starting_text)
wCC_end = webContributorContents.rfind(ending_text)

starting_text = '<!-- ALL-CONTRIBUTORS-LIST:START '
ending_text = '<!-- ALL-CONTRIBUTORS-LIST:END -->'
cC_start = contributorContents.find(starting_text)
cC_end = contributorContents.rfind(ending_text) + len(ending_text)

transformedContributorContents = contributorContents[cC_start:cC_end]

print('* improving table')
transformedContributorContents = transformedContributorContents.replace('<img src=', '<img class="lzy_img" data-src=')

print('* final out')
webContributorContents = (webContributorContents[:wCC_start]
    + "\n" + transformedContributorContents
    + "\n" + webContributorContents[wCC_end:])

file = open("../../_posts/2017-01-05-all-contributors.md", "w")
file.write(webContributorContents)
file.close()
