#!/bin/bash

DIR=()
BASE="$HOME/browser-fe"

if [ $# -eq 0 ]; then
    for i in "${DIR[@]}"
        do
            cd "$BASE/$i"
            git co master
            git pull --rebase
        done
    exit;
fi

[[ $# -ne 1 ]] && { echo "Fail Arg"; exit; }

echo "Switch to $1 or CR + C"
read
for i in "${DIR[@]:1}"
do
    {
        cd "$BASE/$i"
        git stash
        git co "feature-$1"
        git rebase origin/master
    } || { echo "Error with $i: feature-$1" exit; }
done
