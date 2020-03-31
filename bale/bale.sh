#!/bin/bash

color_echo() {
    tput setaf "$1"
    shift
    echo "$@"
    tput sgr0
}

SH="$HOME/browser-fe/shenghuo"
BASE="$HOME/bale"

if [ -d "$SH" ];then
    cd "$SH"
    OPENRESTY="$HOME/openresty-staging/site-enable"
    BRANCH=$(git symbolic-ref --short -q HEAD | cut -d'-' -f2)
    MAX=$(tac ~/proxy.conf | awk 'NR==1{print}' | cut -d' ' -f1)
    USER=$(whoami)
    PORT=$((MAX + 1))
    CONF="$OPENRESTY/shenghuo.conf"

    while getopts ":n" options;
    do
        case $options in
        n)
            # deal nginx conf
            CONF="$OPENRESTY/shenghuo-$BRANCH.conf"
            if [ ! -f "$CONF" ];then
                sed 's/tempSource/'"$BRANCH"'/g' "$BASE"/temp.conf | sed 's/tempUser/'"$USER"'/g' > "$CONF"
                ~/openresty-staging/load.sh -s reload
            fi
            ;;
        esac
    done

    # deal proxy.conf
    if [ -f ~/proxy.conf ];then
        if grep -q "$BRANCH" ~/proxy.conf
        then
            PORT=$(grep "$BRANCH" ~/proxy.conf | cut -d' ' -f1)
        else
            sed 's/tempPort/'"$PORT"'/g' "$BASE"/template-proxy | sed 's/tempSource/'"$BRANCH"'/g' | sed 's/tempUser/'"$USER"'/g' >> ~/proxy.conf
            sh ~fe/browser-fe/proxy-tool/proxy.sh ~/proxy.conf
            echo "$PORT $BRANCH $CONF" >> "$BASE"/list.log
        fi
    fi

    ./build.sh test/"$BRANCH"

    color_echo 2 "PORT: $PORT"
    color_echo 2 "NAME: $BRANCH"
    color_echo 2 "NGINX: $CONF"
fi
