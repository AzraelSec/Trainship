#!/bin/bash

D8_PATH='/usr/lib/android-sdk/build-tools/28.0.3'

if [ $# -lt "2" ] || ! [ -f $1 ];then
    echo "usage: $0 [DEX_FILE] [class_name]"
    exit 1
fi

if [ $(adb devices | grep  -c -e "device$") -eq "0" ];then
    echo "no available devices"
    exit 1
fi

NOW_PATH=$(pwd)
echo -e "executing...\n"
cd /tmp
zip -j tmp.zip $1 && \
adb push tmp.zip /sdcard && \
adb shell dalvikvm -cp /sdcard/tmp.zip $2

adb shell rm /sdcard/tmp.zip 2> /dev/null 
rm tmp.zip 2> /dev/null
cd $NOW_PATH