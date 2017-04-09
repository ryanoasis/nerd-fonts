#!/bin/bash

# Given a decimal number start and end print all unicode codepoint.
# If $3 is specified, it's used as the current column number.
function print-decimal-unicode-range() {
    local start="$1"
    local end="$2"
    local continuedCount="$3"
	 #echo "1 is $1"
	 #echo "2 is $2"
	 #echo "3 is $3"
	 local counter=0
    local count="${continuedCount:-0}"
    # Use alternating colors to see which symbols extend out of the bounding
    # box.
	 #local bgColor='\033[48;2;54;11;0m'
	 #local alternateBgColor='\033[48;2;0;54;11m'
	 local bgColorBorder='\033[48;5;8m'
	 local bgColorCode='\033[48;5;246m'
	 local alternateBgColorCode='\033[48;5;240m'
	 local bgColorChar='\033[48;5;66m'
	 local alternateBgColorChar='\033[48;5;60m'
	 local underline='\033[4m'
    #local bgColor='\e[48;5;124m%03d'
    #local alternateBgColor='\e[48;5;202m%03d'
    local currentColorCode="${bgColorCode}"
    local currentColorChar="${bgColorChar}"
    local reset_color='\033[0m'

    #local allChars="${currentColor}"
    #local allCodes="${currentColor}"
    local allChars=""
    local allCodes=""
    local wrapAt=5
    local topLine="${bgColorBorder}╔══════╦══════╦══════╦══════╦══════╗${reset_color}"
	 local bottomLine="${bgColorBorder}╚══════╩══════╩══════╩══════╩══════╝${reset_color}"
	 local line="${bgColorBorder}╠══════╬══════╬══════╬══════╬══════╣${reset_color}"
	 local bar="${bgColorBorder}║${reset_color}"
	 local originalSequence=($(seq "${start}" "${end}"))
	 local originalSequenceLength=${#originalSequence[@]}
	 local leftoverSpaces=$((wrapAt - (originalSequenceLength % wrapAt)))

	 #printf "\nleftover is %s\n" "$leftoverSpaces"

	 # add fillers to array to maintain table:
	 if [[ "$leftoverSpaces" < "$wrapAt" ]]; then
		 for i in $(seq 1 $leftoverSpaces); do
			  #printf "adding a leftover\n"
			  originalSequence+=(0)
		 done
	fi

	 local sequenceLength=${#originalSequence[@]}

	 #printf "orig seq len %s" "$originalSequenceLength"
	 #printf "\n"
	 #printf "leftover is %s" "$leftoverSpaces"
	 #printf "\n"
	 #printf "seq len %s" "$sequenceLength"
	 #printf "\n"
	 #exit
	 #printf "hey"
	 printf "$topLine\n"
			 #printf "║"
    for decimalCode in "${originalSequence[@]}"; do
        local hexCode=$(printf '%x' "${decimalCode}")
		  local code="${hexCode}"
		  local char="\u${hexCode}"

		  #echo "hexcode was $hexCode"
		  #echo -e "char was ${char}"
		  # fill in placeholder cells properly formatted:
		  if [ "${char}" = "\u0" ]; then
		   #echo "IN IF char was '$char'"
			char=" "
			code="    "
		  #else 
		    #echo "IN ELSE char was '$char'"
		  fi

        allCodes+="${currentColorCode} ${underline}${code}${reset_color}${currentColorCode} ${reset_color}$bar"
        allChars+="${currentColorChar}  ${char}   ${reset_color}$bar"
		  #echo -e "\ncount was $count"
		  counter=$((counter + 1))
        count=$(( (count + 1) % wrapAt))
		  #echo -e "\ncount was $count"
		  #echo -e "\nwrap was $wrapAt"
		  #echo -e "\nwrap-1 was $((wrapAt - 1))"
			#leftoverSpaces=$((wrapAt - count))
        if [[ $count -eq 0 ]]; then
			 #printf "║"
			  #echo -e "\ncount is at zero\n"
			  #echo -e "\nleftoversSpaces is $leftoverSpaces\n"
            if [[ "${currentColorCode}" = "${alternateBgColorCode}" ]]; then
                currentColorCode="${bgColorCode}"
                currentColorChar="${bgColorChar}"
            else
                currentColorCode="${alternateBgColorCode}"
                currentColorChar="${alternateBgColorChar}"
            fi

            #allCodes+="${currentColor}"
            #allChars+="${currentColor}"

			 printf "%b%b%b" "$bar" "$allCodes" "$reset_color"
			 printf "\n"
			 printf "%b%b%b" "$bar" "$allChars" "$reset_color"
			 printf "\n"

			 #printf "counter is %s" "$counter"

			 if [ "$counter" != "$sequenceLength" ]; then
			   printf "%b\n" "$line"
		    fi
			 
			 allCodes=""
			 allChars=""
        fi

    done
	 printf "$bottomLine\n"
	 		# print left-overs:
			#leftoverSpaces=$((wrapAt - count))
			# printf "${allCodes}${reset_color}"
			# printf "\n║${allChars}${reset_color}"
			#   printf "\n"
	 #printf "$bottomLine\n"
	 #printf "count was %s" $count
	 #printf "\nleftovers was %s" $leftoverSpaces
    #printf "${allChars}${reset_color}"
}

function print-unicode-ranges() {
  echo -e ''
    #local count=0
	 local arr=($@)
	 local len=$#
	 #echo "len was $len"
	 for ((j=0; j<len; j+=2)); do
	 #for i in "${!arr[@]}"
		  #echo "j $j"
        #local start="$@[i]"
		  #local start="${@[$i]}"
		  #echo 'heyman'
		  local start="${arr[$j]}"
		  #echo "start $start"
		  #echo "i+1 $((i+1))"
		  #echo "before inc end -- now i is $j"
		  #local end="$@[i+1]"
		  local end="${arr[(($j+1))]}"
		  #echo "after inc end -- now i is $j"
		  #echo "end $end"
        local startDecimal=$((16#$start))
        local endDecimal=$((16#$end))
		  #echo "startDec $startDecimal"
		  #echo "endDec $endDecimal"
		  #echo "end loop - now i is $j"
		  print-decimal-unicode-range "${startDecimal}" "${endDecimal}" "0"
		  #echo "end loop - now i is $j"
        #count=$(($count + $endDecimal - $startDecimal))
    done
}

function test-fonts() {
    echo "Nerd Fonts - Pomicons"
	 print-unicode-ranges e000 e00d
    #print-unicode-ranges e000 e009
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

	 #echo "Nerd Fonts - All"
	 #print-unicode-ranges e000 e00a e0a0 e0a2 e0b0 e0b3 e0a3 e0a3 e0b4 e0c8 e0cc e0d2 e0d4 e0d4 e5fa e62b e700 e7c5 f000 f2e0 e200 e2a9 f400 f4a8 2665 2665 26A1 26A1 f27c f27c f300 f313 23fb 23fe 2b58 2b58

	 #echo; echo
}

test-fonts
