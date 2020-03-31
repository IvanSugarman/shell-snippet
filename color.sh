#!/bin/bash

color_echo() {
    tput setaf "$1"
    shift
    echo "$@"
    tput sgr0
}

color_echo 1 "Usage: dist_dir"
