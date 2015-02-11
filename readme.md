nerd-filetype-glyphs-fonts-patcher v0.1.2
==================================

* A python fontforge command line script to patch any font for use with the [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) vim plugin
  * Adds the [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) glyphs (icons) to any font you pass in
* patched-fonts folder contains pre-patched fonts provided for use with [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) [(see list below)](#patched-fonts)

## Usage

### Option A

Typical install of any of the [provided patched fonts](#patched-fonts)

or

### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Currnetly Included Patched Fonts                       | em size  |
|--------------------------------------------------------|----------|
| Anonymice Powerline Plus Nerd File Types               |   2048   |
| Droid Sans Mono for Powerline Plus Nerd File Types     |   2048   |
| Literation Mono Powerline Plus Nerd File Types         |   2048   |
| PragmataPro for Powerline Plus Nerd File Types         |   2048   |
| ProggyCleanTT Plus Nerd File Types                     |   2048   |
| Sauce Code Powerline Plus Nerd File Types              |   1000   |
| Ubuntu Mono derivative Powerline Plus Nerd File Types  |   1000   |
| Ubuntu Mono Plus Nerd File Types                       |   1000   |

## Font Patcher

Patching the font of your own choosing for use with the [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) vim plugin:
* requires: python2, python-fontforge package
* usage:

	> ./font-patcher PATH_TO_FONT

e.g.

	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf

	./font-patcher Inconsolata.otf


## License

see [LICENSE](LICENSE)
