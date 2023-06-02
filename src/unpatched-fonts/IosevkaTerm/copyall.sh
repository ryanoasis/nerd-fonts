#!/usr/bin/env bash

set -ex

cd ~/Downloads/iosevka
rm -- *.ttf
unzip ttf-iosevka-term-22.1.0.zip
mv -- *-heavyoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Heavy-Oblique
mv -- *-medium.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Medium
mv -- *-italic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Italic
mv -- *-extrabold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Bold
mv -- *-thin.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Thin
mv -- *-light.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Light
mv -- *-bold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Bold
mv -- *-extralightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Light-Italic
mv -- *-lightitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Light-Italic
mv -- *-boldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Bold-Oblique
mv -- *-thinitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Thin-Italic
mv -- *-extraboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Bold-Oblique
mv -- *-lightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Light-Oblique
mv -- *-semibold.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Semi-Bold
mv -- *-oblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Oblique
mv -- *-semiboldoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Semi-Bold-Oblique
mv -- *-heavyitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Heavy-Italic
mv -- *-mediumoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Medium-Oblique
mv -- *-heavy.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Heavy
mv -- *-regular.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Regular
mv -- *-semibolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Semi-Bold-Italic
mv -- *-extralightoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Light-Oblique
mv -- *-thinoblique.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Thin-Oblique
mv -- *-extralight.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Light
mv -- *-bolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Bold-Italic
mv -- *-extrabolditalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Extra-Bold-Italic
mv -- *-mediumitalic.ttf ~/git/nerd-fonts/src/unpatched-fonts/IosevkaTerm/Medium-Italic
