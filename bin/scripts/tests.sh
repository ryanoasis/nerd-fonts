#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version: 1.0.0

clear
echo "Click to start"

# Window geometry
# source: https://www.maketecheasier.com/record-screen-as-animated-gif-ubuntu/
XWININFO=$(xwininfo)
read -r X < <(awk -F: '/Absolute upper-left X/{print $2}' <<< "$XWININFO")
read -r Y < <(awk -F: '/Absolute upper-left Y/{print $2}' <<< "$XWININFO")
read -r W < <(awk -F: '/Width/{print $2}' <<< "$XWININFO")
read -r H < <(awk -F: '/Height/{print $2}' <<< "$XWININFO")

byzanz-record -c --exec=./test-fonts.sh --x="$X" --y="$Y" --width="$W" --height="$H" "rec3.gif"

convert -coalesce "rec3.gif" "results/nerd-fonts.png"
convert -append $"(ls -v results/*.png)" ./test-combined.png

