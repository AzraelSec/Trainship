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
VAL_PERCENTAGE=10 #Compared to $FILES_PER_FAMILY
TEST_PERCENTAGE=20 #Compared to $FILES_PER_FAMILY

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

test_dir_path="$2/test"
training_main_path="$2/training"
training_path="$2/training/train"
val_dir_path="$2/training/val"
mkdir $test_dir_path
mkdir $training_main_path
mkdir $training_path
mkdir $val_dir_path

for family in ${sorted_selected_families[*]};do

    family_training_path=$training_path/$family/

    mkdir $family_training_path
    mkdir $test_dir_path/$family
    mkdir $val_dir_path/$family

    training_files=`find $1/$family -type f -size -${min_size} -printf "%p\n" | head -n $FILES_PER_FAMILY | sort -R`
    training_files_num=`echo "$training_files" | wc -l`
    val_files_num=$(($training_files_num / 100 * $VAL_PERCENTAGE))
    test_files_num=$(($training_files_num / 100 * $TEST_PERCENTAGE))

    for file in ${training_files[*]};do
        cp $file $family_training_path/`basename $file`
    done
    for file in $(find $family_training_path -type f -printf "%p\n" | head -n $val_files_num | sort -R);do
        mv $file $family_training_path/../../val/$family/`basename $file`
    done
    for file in $(find $family_training_path -type f -printf "%p\n" | head -n $test_files_num | sort -R);do
        mv $file $family_training_path/../../../test/$family/`basename $file`
    done

    echo "I've preprocessed all the files belonging to the $family family"
done

echo -e "\n$0 has finished; good luck!"