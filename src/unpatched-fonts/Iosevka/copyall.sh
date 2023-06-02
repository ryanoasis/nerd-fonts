#!/usr/bin/env bash

set -ex

cd ~/Downloads/iosevka
rm -- *.ttf
unzip ttf-iosevka-22.1.0.zip
mv -- *-heavyoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Heavy-Oblique
mv -- *-medium.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Medium
mv -- *-italic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Italic
mv -- *-extrabold.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Bold
mv -- *-thin.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Thin
mv -- *-light.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Light
mv -- *-bold.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Bold
mv -- *-extralightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Light-Italic
mv -- *-lightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Light-Italic
mv -- *-boldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Bold-Oblique
mv -- *-thinitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Thin-Italic
mv -- *-extraboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Bold-Oblique
mv -- *-lightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Light-Oblique
mv -- *-semibold.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Semi-Bold
mv -- *-oblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Oblique
mv -- *-semiboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Semi-Bold-Oblique
mv -- *-heavyitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Heavy-Italic
mv -- *-mediumoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Medium-Oblique
mv -- *-heavy.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Heavy
mv -- *-regular.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Regular
mv -- *-semibolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Semi-Bold-Italic
mv -- *-extralightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Light-Oblique
mv -- *-thinoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Thin-Oblique
mv -- *-extralight.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Light
mv -- *-bolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Bold-Italic
mv -- *-extrabolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Extra-Bold-Italic
mv -- *-mediumitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/Iosevka/Medium-Italic
