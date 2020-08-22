#!/bin/bash
SMALI_PATH="/home/azraelsec/trainship/Attack/smali/smali.jar"
BAKSMALI_PATH="/home/azraelsec/trainship/Attack/smali/baksmali.jar"

# $1 file_path
conversion_reconversion() {
    java -jar $BAKSMALI_PATH dis $1 -o /tmp/tmp
    java -jar $SMALI_PATH ass /tmp/tmp -o $1
    rm -rf /tmp/tmp
}

if [ $# -lt "1" ] || ! [ -d $1 ];then
    echo "usage: $0 <dexes_dir>"
    exit 1
fi

for file in $(find $1 -mindepth 1 -printf "%p\n");do
    conversion_reconversion $file
    echo -e "file $file processed"
done