#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "usage: $0 [dataset_path] [output_path]"
    exit 1
fi

if [ ! -d $1 ] || [ ! -d $2 ]; then
    echo "error: $1 or $2 is not a valid directory"
    exit 1
fi

############################
##### SCRIPT SETTINGS ######
############################
FILES_PER_FAMILY=300
FAMILIES_REQUIRED=8

echo -e "\n######## ANALYSIS ########"
collected_family_info=()
for family in $(ls $1); do
    ordered_complete=`find $1/$family -type f -printf "%p %s\n" | sort -nk 2`
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
done | sort -nrk 2 | head -n $FAMILIES_REQUIRED | tr ' ' '-'))
printf '%s\n' "${sorted_selected_info[@]}"

sorted_selected_families=()
for family in $(echo ${sorted_selected_info[*]} | tr ' ' '\n' |cut -d '-' -f 1);do
    sorted_selected_families+=("$family")
done

echo -e "\n######## RESULTS ########"
min_size=`echo "${collected_family_info[*]}" | tr ' ' '\n' | tr '-' ' ' | sort -nrk 2 | head -n 1 | cut -d ' ' -f 2`
echo -e "You need a minumum size of ${min_size} bytes from the fist ${FAMILIES_REQUIRED} families"

echo -e "\n######## RANDOM FILES CREATING ########"
for family in ${sorted_selected_families[*]};do
    mkdir $2/$family
    selected_files_list=`find $1/$family -type f -size -${min_size} -printf "%f\n" | head -n $FILES_PER_FAMILY | sort -R`
    selected_files_num=`echo "$selected_files_list" | wc -l`
    for file in ${selected_files_list[*]};do
        cp $1/$family/$file $2/$family/$file
    done
    echo "I would have copied ${selected_files_num} files from $family"
done