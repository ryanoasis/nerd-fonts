#!/bin/bash

clear
echo "Click to start"

# Window geometry
# source: https://www.maketecheasier.com/record-screen-as-animated-gif-ubuntu/
XWININFO=$(xwininfo)
read X < <(awk -F: '/Absolute upper-left X/{print $2}' <<< "$XWININFO")
read Y < <(awk -F: '/Absolute upper-left Y/{print $2}' <<< "$XWININFO")
read W < <(awk -F: '/Width/{print $2}' <<< "$XWININFO")
read H < <(awk -F: '/Height/{print $2}' <<< "$XWININFO")

byzanz-record -c --exec=./test-fonts.sh --x=$X --y=$Y --width=$W --height=$H "rec3.gif"

convert -coalesce "rec3.gif" "results/nerd-fonts.png"
convert -append $(ls -v results/*.png) ./test-combined.png

