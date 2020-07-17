#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "usage: $0 [dataset_path]"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "error: $1 is not a valid directory"
    exit 1
fi

echo -e "\n######## ANALYSIS ########\n"

declare -A temporary_list
for family in $(ls $1); do
    ordered_complete=`ls -1 -S -ald -Ar $1$family*/* | tr -s [:space:]`
    complete_name=`echo "$ordered_complete" | cut -d ' ' -f 9`
    total_number=`echo "$complete_name" | wc -l`
    if [ "$total_number" -ge 300 ];then
        smaller_file="`echo "$ordered_complete" | head -n 1 | cut -d ' ' -f 5`"
        echo "family ${family} has ${total_number} files and the minimum size is ${smaller_file}"
        temporary_list[$family]=$smaller_file
    else
        echo "family ${family} hasn't enough files" 
    fi
done

echo -e "\n######## MINIMUM SIZE ORDERED ########\n"
for k in "${!temporary_list[@]}"; do
    echo $k ' - ' ${temporary_list["$k"]}
done | sort -n -k3

