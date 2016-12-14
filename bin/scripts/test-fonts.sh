#!/bin/bash

# Given a decimal number start and end print all unicode codepoint.
# If $3 is specified, it's used as the current column number.
function print-decimal-unicode-range() {
    local start="$1"
    local end="$2"
    local continuedCount="$3"
    local count="${continuedCount:-0}"
    # Use alternating colors to see which symbols extend out of the bounding
    # box.
    #local bgColor='\x1b[48;2;54;11;0m'
    #local alternateBgColor='\x1b[48;2;0;54;11m'
    local bgColor='\e[48;5;124m%03d'
    local alternateBgColor='\e[48;5;202m%03d'
    local currentColor="${bgColor}"
    local reset_color='\e[0m'

    local allChars="${currentColor}"
    local wrapAt=25
    for decimalCode in $(seq "${start}" "${end}"); do
        local hexCode=$(printf '%x ' "${decimalCode}")
        allChars+="\u${hexCode} "
        count=$(( (count + 1) % $wrapAt))
        if [[ count -eq 0 ]]; then
            if [[ "${currentColor}" = "${alternateBgColor}" ]]; then
                currentColor="${bgColor}"
            else
                currentColor="${alternateBgColor}"
            fi
            allChars+="\n${currentColor}"
        fi
    done
    printf "${allChars}${reset_color}"
}

function print-unicode-ranges() {
    local count=0
	 local arr=($@)
	 for ((i=0; i<=$#; i+=2)); do
	 #for i in "${!arr[@]}"
		  #echo "i $i"
        #local start="$@[i]"
		  #local start="${@[$i]}"
		  local start="${arr[$i]}"
		  #echo "start $start"
		  #echo "i+1 $((i+1))"
		  #local end="$@[i+1]"
		  local end="${arr[(($i+1))]}"
		  #echo "end $end"
        local startDecimal=$((16#$start))
        local endDecimal=$((16#$end))
		  #echo "startDec $startDecimal"
		  #echo "endDec $endDecimal"
        print-decimal-unicode-range "${startDecimal}" "${endDecimal}" "${count}"
        count=$(($count + $endDecimal - $startDecimal))
    done
}

function test-fonts() {
    echo "Nerd Fonts - Pomicons"
    print-unicode-ranges e000 e00a
    echo; echo

	 echo "Nerd Fonts - Powerline"
	 print-unicode-ranges e0a0 e0a2 e0b0 e0b3
	 echo; echo

	 echo "Nerd Fonts - Powerline Extra"
	 print-unicode-ranges e0a3 e0a3 e0b4 e0c8 e0cc e0d2 e0d4 e0d4
	 echo; echo

	 echo "Nerd Fonts - Symbols original"
	 print-unicode-ranges e5fa e62b
	 echo; echo

	 echo "Nerd Fonts - Devicons"
	 print-unicode-ranges e700 e7c5
	 echo; echo

	 echo "Nerd Fonts - Font awesome"
	 print-unicode-ranges f000 f2e0
	 echo; echo

	 echo "Nerd Fonts - Font awesome extension"
	 print-unicode-ranges e200 e2a9
	 echo; echo

	 echo "Nerd Fonts - Octicons"
	 print-unicode-ranges f400 f4a8 2665 2665 26A1 26A1 f27c f27c
	 echo; echo

	 echo "Nerd Fonts - Font Linux"
	 print-unicode-ranges f300 f313
	 echo; echo

	 echo "Nerd Fonts - Font Power Symbols"
	 print-unicode-ranges 23fb 23fe 2b58 2b58
	 echo; echo

	 echo "Nerd Fonts - All"
	 print-unicode-ranges e000 e00a e0a0 e0a2 e0b0 e0b3 e0a3 e0a3 e0b4 e0c8 e0cc e0d2 e0d4 e0d4 e5fa e62b e700 e7c5 f000 f2e0 e200 e2a9 f400 f4a8 2665 2665 26A1 26A1 f27c f27c f300 f313 23fb 23fe 2b58 2b58

	 echo; echo
}

test-fonts
