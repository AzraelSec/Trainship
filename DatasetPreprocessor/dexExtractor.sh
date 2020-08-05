#!/bin/bash
if [ "$#" -ne 2 ];then
    echo "usage: $0 [input_path] [output_path]"
    exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "error: $1 or $2 is not a valid directory"
    exit 1
fi
ACTUAL_PATH=$(pwd)
cd $1 && find . -type d -exec mkdir -p -- $2/{} \; && cd $ACTUAL_PATH
echo "directory structure cloned"
echo "dex file extraction:"
for relative_path_file in $(find $1 -type f -printf "%P\n");do
    filename=`basename $relative_path_file | tr -d '.apk'`
    dirname=`dirname $relative_path_file`
    unzip -p "$1/$relative_path_file" "classes.dex" > "$2/$dirname/$filename.dex"
    echo -e "\t{$1/$relative_path_file} -> {$2/$dirname/$filename.dex}"
done
echo "work done!"