#!/usr/bin/env bash
# Nerd Fonts Version: 3.1.1
# Script Version: 1.0.0
#
# A more conceise version of the Powerline test, designed to show
# the dreaded 'faint vertical lines' phenomenon from LCD antialiasing

COL_A='\033[48;5;51m\033[38;5;200m'
COL_B='\033[48;5;200m\033[38;5;51m'

printf "\
${COL_A}                                                         \n\
Under \ue0b2${COL_B} lap ${COL_A}\ue0b0 and \ue0b6${COL_B} top ${COL_A}\ue0b4 mop             \n\
${COL_A}Over \ue0b2${COL_B} lap ${COL_A}\ue0b0 and \ue0b6${COL_B} top ${COL_A}\ue0b4 mop trop lop klop\n\
                                      \n"

COL_A='\033[48;5;238m\033[38;5;253m'
COL_B='\033[48;5;253m\033[38;5;238m'

printf "\
${COL_A}                                                         \n\
Under \ue0b2${COL_B} lap ${COL_A}\ue0b0 and \ue0b6${COL_B} top ${COL_A}\ue0b4 mop             \n\
${COL_A}Over \ue0b2${COL_B} lap ${COL_A}\ue0b0 and \ue0b6${COL_B} top ${COL_A}\ue0b4 mop trop lop klop\n\
                                      \n"
