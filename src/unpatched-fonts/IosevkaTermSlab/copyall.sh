#!/usr/bin/env bash

set -ex

cd ~/Downloads/iosevka
rm -f *.ttf
unzip ttf-iosevka-term-slab-22.1.1.zip
rsync --remove-source-files *-heavyoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Heavy-Oblique/
rsync --remove-source-files *-medium.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Medium/
rsync --remove-source-files *-italic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Italic/
rsync --remove-source-files *-extrabold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Bold/
rsync --remove-source-files *-thin.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Thin/
rsync --remove-source-files *-light.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Light/
rsync --remove-source-files *-bold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Bold/
rsync --remove-source-files *-extralightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Light-Italic/
rsync --remove-source-files *-lightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Light-Italic/
rsync --remove-source-files *-boldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Bold-Oblique/
rsync --remove-source-files *-thinitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Thin-Italic/
rsync --remove-source-files *-extraboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Bold-Oblique/
rsync --remove-source-files *-lightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Light-Oblique/
rsync --remove-source-files *-semibold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Semi-Bold/
rsync --remove-source-files *-oblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Oblique/
rsync --remove-source-files *-semiboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Semi-Bold-Oblique/
rsync --remove-source-files *-heavyitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Heavy-Italic/
rsync --remove-source-files *-mediumoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Medium-Oblique/
rsync --remove-source-files *-heavy.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Heavy/
rsync --remove-source-files *-regular.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Regular/
rsync --remove-source-files *-semibolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Semi-Bold-Italic/
rsync --remove-source-files *-extralightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Light-Oblique/
rsync --remove-source-files *-thinoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Thin-Oblique/
rsync --remove-source-files *-extralight.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Light/
rsync --remove-source-files *-bolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Bold-Italic/
rsync --remove-source-files *-extrabolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Extra-Bold-Italic/
rsync --remove-source-files *-mediumitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTermSlab/Medium-Italic/
