#!/bin/bash

for i in $(dirname "${BASH_SOURCE[0]:-$0}")/i_{dev,fae,fa,iec,linux,oct,ple,pom,seti}.sh; do
	# shellcheck source=/dev/null
	test -f "$i" -a -r "$i" && source "$i"
done
unset i
