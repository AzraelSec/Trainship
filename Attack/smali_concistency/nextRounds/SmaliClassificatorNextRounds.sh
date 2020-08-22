#!/bin/bash
CLASSIFICATOR_PATH="/home/azraelsec/trainship/MalwareImagesClassificator/MalwareClassificator.py"
WEIGHTS_PATH="/home/azraelsec/weights_result/weights_result"
SMALI_PATH="/home/azraelsec/trainship/Attack/smali/smali.jar"
BAKSMALI_PATH="/home/azraelsec/trainship/Attack/smali/baksmali.jar"
MIRRORPY_PATH="/home/azraelsec/trainship/MirrorPy/mirror.py"
MAX_RECOURSION=3

# $1 file_path
classify() {
    python3 $CLASSIFICATOR_PATH $1 $WEIGHTS_PATH
}

# $1 file_path
imagefy() {
    python3 $MIRRORPY_PATH $1 /tmp &> /dev/null
}

# $1 file_path
# $2 attempt_num
conversion_reconversion() {
    java -jar $BAKSMALI_PATH dis $1 -o /tmp/tmp
    java -jar $SMALI_PATH ass /tmp/tmp -o /tmp/$(echo $(basename ${1%.*}) | sed -E 's/(_[0-9]*)?//g')_$2.dex
    rm -r /tmp/tmp
    if [ $2 -lt $MAX_RECOURSION ];then
        conversion_reconversion /tmp/$(echo $(basename ${1%.*}) | sed -E 's/(_[0-9]*)?//g')_$2.dex $(($2+1))
    fi
}

# $1 file_path
# $2 output_path
analyze() {
    echo "analyzing file $1"
    echo -e "$1" >> $2

    imagefy $1
    original_classification=$(classify /tmp/$(basename ${1%.*}).png)
    echo -e "\tfirst: $original_classification" >> $2

    conversion_reconversion $1 1

    for i in `seq $MAX_RECOURSION`;do
        imagefy /tmp/$(basename ${1%.*})_$i.dex
        classification=$(classify /tmp/$(basename ${1%.*})_$i.png)
        echo -e "\tconversion: $classification" >> $2
        rm /tmp/$(basename ${1%.*})_$i.*
    done
    
    echo >> $2
    rm "/tmp/$(basename ${1%.*}).png"
}

if [ $# -lt "1" ] || ! [ -d $1 ];then
    echo "usage: $0 <dataset_dir>"
    exit 1
fi

for file in $(find $1 -mindepth 1 -printf "%p\n" | head -n 50);do
    analyze $file "./analysis.txt"
done