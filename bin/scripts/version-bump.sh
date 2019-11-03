#!/usr/bin/env bash
# Nerd Fonts Version: 2.1.0
# Script Version: 1.0.1
# bump version number for release in scripts (bash and python)
# does not do semver format checking
# this obviously is not perfect but works good enough for now (YAGNI)
# todo take some ideas from: https://github.com/fsaintjacques/semver-tool

#set -x
LINE_PREFIX="# [Nerd Fonts] "

if [ ! $# -eq 1 ]
  then
    echo "$LINE_PREFIX No release version given, must give semver release version in format: #.#.#, e.g. 1.1.0"
fi

release=$1

sed -i "s|[0-9]\\.[0-9]\\.[0-9]|$release|g" ../../font-patcher
sed -i "s|\\# nerd fonts version: [0-9]\\.[0-9]\\.[0-9]|\\# version: $release|g" ../../bin/scripts/*.sh
sed -i "s|\\# version: [0-9]\\.[0-9]\\.[0-9]|\\# version: $release|g" ../../bin/scripts/*.sh
sed -i "s|version=\"[0-9]\\.[0-9]\\.[0-9]\"|version=\"$release\"|g" ../../bin/scripts/*.sh

exit

