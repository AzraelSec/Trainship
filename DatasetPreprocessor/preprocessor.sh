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
VAL_PERCENTAGE=10 #Compared to $FILES_PER_FAMILY
TEST_PERCENTAGE=20 #Compared to $FILES_PER_FAMILY

if [ "$(($VAL_PERCENTAGE + $TEST_PERCENTAGE))" -le 50 ];then
    echo "These will be the percentage:"
    echo -e "\ttest: $TEST_PERCENTAGE"
    echo -e "\tval: $VAL_PERCENTAGE"
    echo -e "\ttrain: $((100 - $TEST_PERCENTAGE - $VAL_PERCENTAGE))"
else
    echo "error: VAL_PERCENTAGE and TEST_PERCENTAGE >= 50%"
    exit 1
fi

test_dir_path="$2/test"
training_main_path="$2/training"
training_path="$2/training/train"
val_dir_path="$2/training/val"
mkdir $test_dir_path
mkdir $training_main_path
mkdir $training_path
mkdir $val_dir_path

echo -e "directories structure created:"
echo -e "\t$test_dir_path"
echo -e "\t$training_path"
echo -e "\t$val_dir_path"

echo -e 'labels processing:'
for label in $(find $1 -maxdepth 1 -mindepth 1 -type d -printf "%p\n");do

    family_training_path=$training_path/$label/

    mkdir $family_training_path
    mkdir $test_dir_path/$label
    mkdir $val_dir_path/$label

    all_files=`find $1/$label -type f -printf "%p\n"`
    all_files_num=`echo "$all_files" | wc -l`
    val_files_num=$(($all_files / 100 * $VAL_PERCENTAGE))
    test_files_num=$(($all_files / 100 * $TEST_PERCENTAGE))
    training_files_num=$(($all_files - $val_files_num - $test_files_num))

    echo -e "\t[$label]"
    echo -e "\t\tval: $val_files_num"
    echo -e "\t\ttest: $test_files_num"
    echo -e "\t\ttrain: $training_files_num"

    for file in ${all_files[*]};do
        cp $file $family_training_path/`basename $file`
    done
    for file in $(find $family_training_path -type f -printf "%p\n" | head -n $val_files_num | sort -R);do
        mv $file $family_training_path/../../val/$label/`basename $file`
    done
    for file in $(find $family_training_path -type f -printf "%p\n" | head -n $test_files_num | sort -R);do
        mv $file $family_training_path/../../../test/$label/`basename $file`
    done

    echo "I've preprocessed all the files belonging to the $label label"
done

echo -e "\n$0 has finished; good luck!"