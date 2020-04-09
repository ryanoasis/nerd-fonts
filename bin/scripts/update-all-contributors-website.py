import fileinput
import string
import re

file = open("../../CONTRIBUTORS.md", "r")
contributorContents = file.read()
file.close()

# print(contributorContents)


file = open("/home/ryan/projects/nerd-fonts-gh-pages/_posts/2017-01-05-all-contributors.md", "r")
webContributorContents = file.read()
file.close()

# print(webContributorContents)

# search and replace
starting_text = '<!-- UPDATE START -->'
ending_text = '<!-- UPDATE END -->'
to_replace = webContributorContents[webContributorContents.find(starting_text)+len(starting_text):webContributorContents.rfind(ending_text)]

print('re replace')
print('-------------------------------------------------')
print(to_replace)

# Remove markdown that won't work as-is in the jekyll page:
transformedContributorContents = re.sub('[![All Contributors](.*)\(#contributors\)\n', '', contributorContents)
transformedContributorContents = re.sub('Thanks goes to these wonderful people(.*):\n', '', transformedContributorContents)
transformedContributorContents = string.replace(transformedContributorContents, '## Contributors\n\n', '')
transformedContributorContents = string.replace(transformedContributorContents, 'This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!', '')

# Fix the formatting for the grid table:
transformedContributorContents = string.replace(transformedContributorContents, ' [<img src=', '\n<div markdown="1">\n[<img class="lzy_img" data-src=')
transformedContributorContents = string.replace(transformedContributorContents, '") |', '")\n</div>')
transformedContributorContents = string.replace(transformedContributorContents, '| :---: | :---: | :---: | :---: | :---: | :---: | :---: |', '')
transformedContributorContents = string.replace(transformedContributorContents, '<!-- ALL-CONTRIBUTORS-LIST:END -->', '')
transformedContributorContents = string.replace(transformedContributorContents, '|\n', '') # @TODO fixme


print('transformed contr contents')
print('-------------------------------------------------')
print(transformedContributorContents)

webContributorContents = string.replace(webContributorContents, to_replace, transformedContributorContents)

print('final out')
print('-------------------------------------------------')
print(webContributorContents)


# write the updated all contributors to the website
file = open("/home/ryan/projects/nerd-fonts-gh-pages/_posts/2017-01-05-all-contributors.md", "w")
file.write(webContributorContents)
