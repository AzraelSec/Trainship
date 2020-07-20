#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "usage: $0 [dataset_path] [number_of_families]"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "error: $1 is not a valid directory"
    exit 1
fi

FILES_PER_FAMILY=300

echo -e "\n######## ANALYSIS ########"
collected_family_info=()
for family in $(ls $1); do
    ordered_complete=`find $1$family -type f -printf "%p %s\n" | sort -nk 2`
    complete_name=`echo "$ordered_complete" | cut -d ' ' -f 1`
    total_number=`echo "$complete_name" | wc -l`
    if [ "$total_number" -ge $FILES_PER_FAMILY ]; then
        target_size="`echo "$ordered_complete" | head -n $FILES_PER_FAMILY | tail -n 1 | cut -d ' ' -f 2`"
        echo "family ${family} has ${total_number} files and the ${FILES_PER_FAMILY}th example is ${target_size} bytes long"
        collected_family_info+=("$family-$target_size")
    else
        echo "family ${family} hasn't enough files" 
    fi
done

echo -e "\n######## SORTED FAMILIES ########"
sorted_selected_info=($(for info in ${collected_family_info[*]};do
    echo "$info" | tr '-' ' '
done | sort -nrk 2 | head -n $2 | tr ' ' '-'))
printf '%s\n' "${sorted_selected_info[@]}"

sorted_selected_families=()
for family in $(echo ${sorted_selected_info[*]} | tr ' ' '\n' |cut -d '-' -f 1);do
    sorted_selected_families+=("$family")
done

echo -e "\n######## RESULTS ########"
min_size=`echo "${collected_family_info[*]}" | tr ' ' '\n' | tr '-' ' ' | sort -nrk 2 | head -n 1 | cut -d ' ' -f 2`
echo -e "\nYou need a minumum size of ${min_size} bytes from the fist ${2} families from above"

echo -e "\n######## RANDOM FILES CREATING ########"
for family in ${sorted_selected_families[*]};do
    selected_files_list=`find $1$family -type f -size -${min_size} -printf "%p\n" | head -n $FILES_PER_FAMILY | sort -R`
    selected_files_num=`echo "$selected_files_list" | wc -l`
    echo "I would have copied ${selected_files_num} files from $family"
done