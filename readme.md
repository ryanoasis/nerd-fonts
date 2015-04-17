nerd-filetype-glyphs-fonts-patcher v0.2.0
=========================================

* A python fontforge command line script to patch any font
* patched-fonts folder contains pre-patched fonts provided for use with [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) [(see list below)](#patched-fonts)

![image](https://github.com/ryanoasis/vim-webdevicons/wiki/screenshots/v0.3.4/fontforge-glyph-set-1.png)

... and more ...

* Particularly created for use with [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) vim plugin to add glyphs (icons) as labels for files based on the filetype extension or entire path

## Usage

### Option A

Typical install of any of the [provided patched fonts](#patched-fonts)

or

### Option B

Use the provided python command line script to generate a patched font from your own font to get the additional new glyphs

See: [Font Patcher](#font-patcher) for usage

* use this option if you do __not__ want to use one of the [fonts provided](#patched-fonts)

## Patched Fonts

| Currently Included Patched Fonts (double width glyphs)      | em size  |
|-------------------------------------------------------------|----------|
| Anonymice Powerline Plus Nerd File Types                    |   2048   |
| Droid Sans Mono for Powerline Plus Nerd File Types          |   2048   |
| Literation Mono Powerline Plus Nerd File Types              |   2048   |
| ProggyCleanTT Plus Nerd File Types                          |   2048   |
| Sauce Code Powerline Plus Nerd File Types                   |   1000   |
| Ubuntu Mono derivative Powerline Plus Nerd File Types       |   1000   |
| Ubuntu Mono Plus Nerd File Types                            |   1000   |

| Currently Included Absolute Mono Patched Fonts (single width glyphs)| em size  |
|---------------------------------------------------------------------|----------|
| Anonymice Powerline Plus Nerd File Types Mono                       |   2048   |
| Droid Sans Mono for Powerline Plus Nerd File Types Mono             |   2048   |
| Literation Mono Powerline Plus Nerd File Types Mono                 |   2048   |
| ProggyCleanTT Plus Nerd File Types Mono                             |   2048   |
| Sauce Code Powerline Plus Nerd File Types Mono                      |   1000   |
| Ubuntu Mono derivative Powerline Plus Nerd File Types Mono          |   1000   |
| Ubuntu Mono Plus Nerd File Types Mono                               |   1000   |

## Font Patcher

Patching the font of your own choosing for use with the [vim-webdevicons](https://github.com/ryanoasis/vim-webdevicons) vim plugin:
* requires: python2, python-fontforge package
* usage:

	> ./font-patcher PATH_TO_FONT

```
usage: font-patcher [-h] [-s] [-q] font

Patches a given font with programming and web development related glyphs
(mainly for vim-webdevicons)

positional arguments:
  font                  The path to the font to be patched (e.g.
                        Inconsolata.otf)

optional arguments:
  -h, --help            show this help message and exit
  -s, --use-single-width-glyphs
                        Whether to generate the glyphs as single-width not
                        double-width (default is double-width)
  -q, --quiet, --shutup
                        Do not generate verbose output
```

### Examples

	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf -s -q
	./font-patcher unpatched-sample-fonts/Droid\ Sans\ Mono\ for\ Powerline.otf --use-single-width-glyphs --quiet
	./font-patcher Inconsolata.otf


## License

see [LICENSE](LICENSE)
