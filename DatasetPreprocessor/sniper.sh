#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "usage: $0 [dataset_path] [output_path]"
    exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "error: $1 or $2 is not a valid directory"
    exit 1
fi

# $1 source path
# $2 destination path
copy_max_label() {
    for file in $(find $1 -type f -printf "%P\n" | head -n $MAX_FAMILIES); do
        cp "$1/$file" "$2/$file"
    done
}

MAX_FAMILIES=10
MIN_EXAMPLES=600
MAX_EXAMPLES=1000
available_families=()
echo "sniper's gone start:"
for family in $(ls $1 | sort);do
    for variety in $(find $1/$family -mindepth 1 -maxdepth 1 -type d -printf "%P\n");do
        examples_num=`ls $1/$family/$variety/ |wc -l`
        if [ $examples_num -ge $MIN_EXAMPLES ];then
            echo -e "\t[$family][$variety]: $examples_num"
            available_families+=("$1/$family/$variety+${family}_${variety}")
        fi
    done
done
if [ -d "$1/trusted" ];then
    echo "$1/trusted director found"
    mkdir "$2/trusted"
    copy_max_label "$1/trusted/" "$2/trusted/"
fi

filtered_data=($(for data in ${available_families[*]};do
    echo "$data"
done | sort -R | head -n $MAX_FAMILIES))

for data in ${filtered_data[*]};do
    path=`echo $data | cut -d '+' -f 1`
    label=`echo $data | cut -d '+' -f 2`
    mkdir "$2/$label"
    echo -e "\t$path -> $2/$label"
    copy_max_label $path "$2/$label"
done
echo -e "work done!"