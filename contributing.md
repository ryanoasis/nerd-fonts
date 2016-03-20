# Contributing Guide

## How to contribute

Work In Progress, for now the minimum:

* Fork the project from the `master` branch and submit a Pull Request (PR)
  * Explain what the PR fixes or improves
  * Screenshots for bonus points
* Use sensible commit messages
  * If your PR fixes a separate issue number, include it in the commit message

## Adding a new font

* Check the license even allows the font to be modified and shared
* Add the original (unpatched) version of the font and any readme and/or license files to the `unpatched-sample-fonts` directory inside a new directory
  * e.g. Adding *XYZ Font*, create directory `unpatched-sample-fonts/xyz/{PUT FONT FILES HERE}`
* Do a basic test with the new font to ensure it patches correctly and generates a new font file, e.g.
  * `./font-patcher unpatched-sample-fonts/XYZ/XYZ.ttf --powerline --powerlineextra`
  * Make sure to then delete this new font file if it is in the repository (all patched fonts should be generated in the `patched-fonts/` directory)
* When fairly satisfied the font patches correctly, patch **all** of the variations/options, e.g.
  * `./gotta-patch-em-all-font-patcher\!.sh XYZ`
* Add the new font to the README table of supported fonts

## Things to keep in mind
* Smaller PRs are likely to be merged more quickly than bigger changes
* If it is a useful PR it **will** get merged in eventually
  * [E.g. see how many have already been merged vs. still open](https://github.com/ryanoasis/nerd-fonts/pulls)
* This project is using [Semantic Versioning 2.0.0](http://semver.org/)
* I try to group fixes into milestones/versions
  * If your bug or PR is *not* trivial it will likely end up in the next **MINOR** version
  * If your bug or PR *is* trivial *or* critical it will likely end up in the next **PATCH** version
* Most of the time PRs and fixes are *not* merged directly into master without being present on a new versioned branch
  * Sometimes for small items I will make exceptions to get the fix or readme change on master sooner but even after there will *always* be a versioned branch to keep track of each release

## Commit messages

* squash or not to squash into 1 commit ? (@todo)
* require a specific format for commit messages for consistency ? (@todo)

## Code standards (@todo)

* tabs or spaces for Python :[ (@todo)
