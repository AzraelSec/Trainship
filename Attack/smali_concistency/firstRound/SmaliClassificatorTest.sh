#!/bin/bash
CLASSIFICATOR_PATH="/home/azraelsec/trainship/MalwareImagesClassificator/MalwareClassificator.py"
WEIGHTS_PATH="/home/azraelsec/weights_result/weights_result"
SMALI_PATH="/home/azraelsec/trainship/Attack/smali/smali.jar"
BAKSMALI_PATH="/home/azraelsec/trainship/Attack/smali/baksmali.jar"
MIRRORPY_PATH="/home/azraelsec/trainship/MirrorPy/mirror.py"

# $1 file_path
classify() {
    python3 $CLASSIFICATOR_PATH $1 $WEIGHTS_PATH
}

# $1 file_path
imagefy() {
    python3 $MIRRORPY_PATH $1 /tmp &> /dev/null
}

# $1 file_path
conversion_reconversion() {
    java -jar $BAKSMALI_PATH dis $1 -o /tmp/tmp
    java -jar $SMALI_PATH ass /tmp/tmp -o /tmp/$(basename ${1%.*})_new.dex
    rm -r /tmp/tmp
}

# $1 file_path
# $2 output_path
analyze() {
    echo "analyzing file $1"
    imagefy $1
    original_classification=$(classify /tmp/$(basename ${1%.*}).png)
    conversion_reconversion $1
    imagefy /tmp/$(basename ${1%.*})_new.dex
    conversion_classification=$(classify /tmp/$(basename ${1%.*})_new.png)
    echo -e "$1" >> $2
    echo -e "\toriginal: $original_classification" >> $2
    echo -e "\tconversion: $conversion_classification\n" >> $2
    rm "/tmp/$(basename ${1%.*}).png" /tmp/$(basename ${1%.*})_new.*
}

if [ $# -lt "1" ] || ! [ -d $1 ];then
    echo "usage: $0 <dataset_dir>"
    exit 1
fi

for file in $(find $1 -mindepth 1 -printf "%p\n");do
    analyze $file "./analysis.txt"
done
