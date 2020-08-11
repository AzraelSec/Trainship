#!/bin/bash
MAX_FAMILIES=10
MIN_EXAMPLES=600
MAX_EXAMPLES=1000
MAX_WIDTH=500

if [ "$#" -ne 2 ]; then
    echo "usage: $0 [dataset_path] [output_path]"
    exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "error: $1 or $2 is not a valid directory"
    exit 1
fi

# $1 to analyze file path
has_acceptable_width() {
    if [ "$(identify -format '%w' $1)" -le "$MAX_WIDTH" ];then
        echo 1
    else
        echo 0
    fi
}

# $1 source path
# $2 destination path
copy_max_label() {
    for file in $(find $1 -type f -printf "%P\n"); do
        if [ "$(has_acceptable_width $1/$file)" == "1" ];then
            cp "$1/$file" "$2/$file"
        fi
    done
    copied_files_num=$(ls $2 | wc -l)
    if [ "$copied_files_num" -gt "$MAX_EXAMPLES" ];then
        to_remove_files=$((copied_files_num - MAX_EXAMPLES))
        rm `find $2 -type f -printf "%p\n" | sort -R | head -n $to_remove_files`
    fi
}

# $1 path to count in
count_available_images() {
    acceptable_count=0
    for file in $(find $1 -type f -printf "%p\n");do
        if [ "$(has_acceptable_width $file)" == "1" ];then
            ((acceptable_count++))
        fi
    done
    echo $acceptable_count
}

available_families=()
echo "sniper's gone start:"
for family in $(ls $1);do
    for variety in $(find $1/$family -mindepth 1 -maxdepth 1 -type d -printf "%P\n");do
        acceptable_num=`count_available_images $1/$family/$variety`
        examples_num=`ls $1/$family/$variety/ | wc -l`
        if [ "$acceptable_num" -ge "$MIN_EXAMPLES" ];then
            echo -e "\t[$family][$variety]: $acceptable_num"
            available_families+=("$1/$family/$variety+${family}_${variety}")
        fi
    done
done
if [ -d "$1/trusted" ];then
    echo "$1/trusted director found"
    mkdir "$2/trusted"
    echo -e "\tcopying $(count_available_images $1/trusted/) files from trusted"
    copy_max_label "$1/trusted/" "$2/trusted/"
    echo "trusted copied"
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
