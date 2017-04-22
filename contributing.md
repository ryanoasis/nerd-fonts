# Contributing Guide

## How to contribute

Work In Progress, for now the minimum:

* Fork the project from the `master` branch and submit a Pull Request (PR)
  * Explain what the PR fixes or improves
  * Screenshots for bonus points
* Use sensible commit messages
  * If your PR fixes a separate issue number, include it in the commit message

## Steps for adding a new font or removing an existing font

* For removal of font skipt to Step #4

### 1. Verify license
* Check the license even allows the font to be modified and shared
### 2. Add original (unpatched) version
* Add the unpatched version of the font and any readme and/or license files to the `unpatched-sample-fonts` directory inside a new directory
  * e.g. Adding *XYZ Font*, create directory `src/unpatched-fonts/xyz/{PUT FONT FILES HERE}`
### 3. Execute basic testing
* Do a basic test with the new font to ensure it patches correctly and generates a new font file, e.g.
  * `./font-patcher src/unpatched-fonts/XYZ/XYZ.ttf --complete`
  * Make sure to then delete this new font file if it is in the repository (all patched fonts should be generated in the `patched-fonts` directory)
### 4. Run build scripts
* When fairly satisfied the font patches correctly, run the following scripts in this order:
  * Copy all the unpatched readmes to the patched location with additional info on variations appended:
    * `./standardize-and-complete-readmes.sh`
  * Patch **all** of the variations/options, e.g.
    * `./gotta-patch-em-all-font-patcher\!.sh XYZ`
### 5. Update readme
* Add the new font to the table of [Patched Fonts][]
* Update the "counts" in the [Features Section][]
  * You can get this information by simply passing a second param to the "all patcher": `./gotta-patch-em-all-font-patcher\!.sh "" info`
    * "`X` already patched font families" -> Give exact number from 'typefaces' line
    * "Over `X` unique combinations/variations..." -> round down to nearest hundred from 'variation' line
    * "Over `X` glyphs/icons combined" -> manual process for now (@todo)
* Update the "counts" in the [Combinations Section][]
  * Again, get this info from the "all patcher"

## Things to keep in mind

* Smaller Pull Requests are likely to be merged more quickly than bigger changes
* This project is using a [KISS Workflow][]
  * Pull Requests and bugfixes are directly merged into `master` after sanity testing
  * `master` is basically consider the main developer branch
    * We no longer wait to get changes into master when there is a release/milestone/version!
  * the release branches and version tags are considered stable and frozen
* This project is using [Semantic Versioning 2.0.0](http://semver.org/)
  * If a bugfix or PR is *not* trivial it will likely end up in the next **MINOR** version
  * If a bugfix or PR *is* trivial *or* critical it will likely end up in the next **PATCH** version
* Useful Pull Requests **will** get merged in eventually
  * [E.g. see how many have already been merged vs. still open][pulls]

## Commit messages

* Squashing to 1 commit is **not** required at this time
* Use sensible commit messages (when in doubt: `git log`)
* If your PR fixes a specific issue number, include it in the commit message: `"Fixes XYZ error (fixes #123)"`

## Code standards

### Shell Scripts

* Follow [ShellCheck](https://github.com/koalaman/shellcheck) - A shell script static analysis tool
* Try to follow [Google's Shell Style Guide](https://google.github.io/styleguide/shell.xml)

### Python

* Use 4 spaces for indentation
* Consider PEP8 and other (@todo)

<!-- link references -->

[pulls]: https://github.com/ryanoasis/nerd-fonts/pulls
[Features Section]: https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#features
[Combinations Section]: https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#combinations
[Patched Fonts]: https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#patched-fonts
[KISS Workflow]: https://github.com/ryanoasis/nerd-fonts/wiki/Development-Workflow#kiss-workflow
