#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "usage: $0 [dataset_path] [output_path]"
    exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "error: $1 or $2 is not a valid directory"
    exit 1
fi

MAX_FAMILIES=10
MIN_EXAMPLES=10
MAX_EXAMPLES=20
available_families=()
echo "sniper's gone start:"
for family in $(ls $1 | sort);do
    for variety in $(find $1/$family -mindepth 1 -maxdepth 1 -type d -printf "%P\n");do
        examples_num=`ls $1/$family/$variety/ | head -n $MIN_EXAMPLES |wc -l`
        if [ $examples_num -ge $MIN_EXAMPLES ];then
            echo -e "\t[$family][$variety]: $examples_num"
            available_families+=("$1/$family/$variety+${family}_${variety}")
        fi
    done
done

filtered_data=($(for data in ${available_families[*]};do
    echo "$data"
done | sort -R | head -n $MAX_FAMILIES))

for data in ${filtered_data[*]};do
    path=`echo $data | cut -d '+' -f 1`
    label=`echo $data | cut -d '+' -f 2`
    echo -e "\t$path -> $2/$label"
    cp -r $path "$2/$label"
done
echo -e "work done!"