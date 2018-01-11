#!/bin/bash

for i in $(dirname "${BASH_SOURCE[0]:-$0}")/i_{dev,fae,fa,iec,linux,oct,ple,pom,seti}.sh; do
	test -f "$i" -a -r "$i" && source "$i"
done
unset i
