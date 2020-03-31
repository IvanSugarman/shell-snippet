#!/bin/bash

color_echo() {
    tput setaf "$1"
    shift
    echo "$@"
    tput sgr0
}

BASE=~/bale

[[ $# -eq 0 ]] && {
    color_echo 2 "$(cat "$BASE"/list.log)"
    exit;
}

if [ $# -eq 1 ];then
    color_echo 2 "$(grep "$1" "$BASE"/list.log)"
fi
