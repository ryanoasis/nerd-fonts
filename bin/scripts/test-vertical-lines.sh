#!/usr/bin/env bash
# Nerd Fonts Version: 3.1.1
# Script Version: 1.0.1
#
# A more conceise version of the Powerline test, designed to show
# the dreaded 'faint vertical lines' phenomenon from LCD antialiasing

COL_A=$(printf '\033[48;5;51m\033[38;5;200m')
COL_B=$(printf '\033[48;5;200m\033[38;5;51m')
COL_C=$(printf '\033[48;5;238m\033[38;5;253m')
COL_D=$(printf '\033[48;5;253m\033[38;5;238m')

printf "\
%s                                                         \n\
Under \ue0b2%s lap %s\ue0b0 and \ue0b6%s top %s\ue0b4 mop             \n\
%sOver \ue0b2%s lap %s\ue0b0 and \ue0b6%s top %s\ue0b4 mop trop lop klop\n\
                                      \n" \
"${COL_A}" "${COL_B}" "${COL_A}" "${COL_B}" "${COL_A}" \
"${COL_A}" "${COL_B}" "${COL_A}" "${COL_B}" "${COL_A}"

printf "\
%s                                                         \n\
Under \ue0b2%s lap %s\ue0b0 and \ue0b6%s top %s\ue0b4 mop             \n\
%sOver \ue0b2%s lap %s\ue0b0 and \ue0b6%s top %s\ue0b4 mop trop lop klop\n\
                                      \n" \
"${COL_C}" "${COL_D}" "${COL_C}" "${COL_D}" "${COL_C}" \
"${COL_C}" "${COL_D}" "${COL_C}" "${COL_D}" "${COL_C}"
