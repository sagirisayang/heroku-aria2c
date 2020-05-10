#!/bin/bash

filePath="./$3"
dwnldir="./downloads/"
tmp1=${filePath#./*/}
folderName=${tmp1%%/*}
folderPath=${dwnldir}${folderName}

LIGHT_GREEN_FONT_PREFIX="\033[1;32m"
FONT_COLOR_SUFFIX="\033[0m"
INFO="[${LIGHT_GREEN_FONT_PREFIX}INFO${FONT_COLOR_SUFFIX}]"

echo -e "$(date +"%m/%d %H:%M:%S") ${INFO} Download error or stop, start deleting files..."

if [ $2 -eq 0 ]; then
    exit 0
elif [ -e "${filePath}.aria2" ]; then
    rm -rvf "${filePath}.aria2"
    rm -rvf "${filePath}"
elif [ -e "${folderPath}.aria2" ]; then
    rm -rvf "${folderPath}.aria2"
    rm -rvf "${folderPath}"
fi

echo -e "$(date +"%m/%d %H:%M:%S") ${INFO} Download error or stop, start deleting files finish"
