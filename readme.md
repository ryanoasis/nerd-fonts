nerd-filetype-glyphs-fonts-patcher
==================================

Adds filetype glyphs (icons) to any font you pass in or you can simply use one of the provided patched font (see list below)
Created for use with [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons)

## Usage

Typical install of the patched font or generate a patched font from your own font to get the additional new glyphs.

## Patched Fonts

| Currnetly Included Patched Fonts                       | em size  |
|--------------------------------------------------------|----------|
| Anonymice Powerline Plus Nerd File Types               |   2048   |
| Droid Sans Mono for Powerline Plus Nerd File Types     |   2048   |
| Literation Mono Powerline Plus Nerd File Types         |   2048   |
| ProggyCleanTT Plus Nerd File Types                     |   2048   |
| Sauce Code Powerline Plus Nerd File Types              |   1000   |
| Ubuntu Mono derivative Powerline Plus Nerd File Types  |   1000   |
| Ubuntu Mono Plus Nerd File Types                       |   1000   |

Patching the font of your own choosing:
* requires: python2, python-fontforge package
* usage:

	> ./font-patcher PATH_TO_FONT

e.g.

	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf
	
	./font-patcher Inconsolata.otf


## License

see [LICENSE](LICENSE)
