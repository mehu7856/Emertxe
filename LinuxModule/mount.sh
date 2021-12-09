<<COMMENT
Name : Mahaboob basha S.R
Date: 03-11-2021
Description: script to determine whether a given file system or mount point is mounted
Sample input: /dev
Sample output: /dev is mounted and used and free space
COMMENT

#!/bin/bash
arr=(`df -h |tr -s " " |cut -d " " -f 6 `)
dir=$1
if [ $# -ne 0 ]
then
        for i in ${#arr[@]}
        do
                if [[ $i != $dir ]]
                then
                        echo "`df --output=source,fstype,pcent,iavail $dir ` "
                else
                        echo "$dir is not mounted"
                fi
        done
else
        echo "Error: please pass the file system through CLA!"
fi

