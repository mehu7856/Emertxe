<<COMMENT
Name : Mahaboob basha S.R
Date : 27-11-2021
Description : Display the names of any files system which have less than 10% free space available
Sample input :
Sample output:
COMMENT

#!/bin/bashi
array=(`df --output=source`)
use=(`df --output=pcent | cut -d '%' -f 1`)
count=0
input=$1
for ((i=1; i<${#use[@]}; i++))
do
        if [[ "${use[$i]}" -ge $input ]]
        then
                count=1
                echo "file system ${array[i]} has less than $((100-${use[$i]}))% of free space "
        fi
done
if [ $count -eq 0 ]
then
        echo "No files system has usage of $((100-$input))% of free space"
fi

