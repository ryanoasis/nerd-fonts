#!/usr/bin/env bash
# Nerd Fonts Version: 2.2.0-RC
# Script Version 1.1.0

for i in $(dirname "${BASH_SOURCE[0]:-$0}")/i_{dev,fae,fa,iec,linux,oct,ple,pom,seti,material,weather}.sh; do
	# shellcheck source=/dev/null
	test -f "$i" -a -r "$i" && source "$i"
done
unset i
