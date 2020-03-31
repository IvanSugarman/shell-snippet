#!/bin/bash

# path
trashPath=$HOME/.trash

# time
period=2592000

# createtrash
if [ ! -d "$trashPath" ]; then
    mkdir $trashPath
fi

# clear instruction
args=${@##-*}

# create temp dir from date
dest=$trashPath/`date "+%Y-%m-%d"`/
if [ ! -d "$dest" ]; then
    mkdir $dest
fi

# move file
msg=`mv $args "$dest" 2>&1`
if [ ! "$msg" = "" ]; then
    echo ${msg//mv/rmofjmq}
fi

# clear function
function clearOldFile(){
    echo "delete old trash file"

    now=`date "+%s"`
    echo "now:"${now}
    for folder in `ls $trashPath`
    do
        folderTime=`date -d $folder "+%s"`
        echo $folderTime
        gap=`expr $now - $folderTime`
        if [ $gap -gt $period ]; then
            /bin/rm -rf $trashPath/$folder
        fi
    done
}

flagFile=$trashPath/.flag

today=`date "+%d"`
if [ -f "$flagFile" ]; then
        lastTime=`cat $flagFile`
        if [ "$lastTime" -ne "$today" ]; then
            clearOldFile
        fi
else
    clearOldFile
fi
echo $today > $flagFile
