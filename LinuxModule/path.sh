<<COMMENT
Name : Mahaboob basha S.R
Date : 27-11-2021
Description : For each directory in path, display the number of executable files in directory
Sample input :
Sample Output :      Current dir: /usr/local/sbin
                                  current count: 0
                                  Current dir: /usr/local/bin
                                  current count: 0
                                  Current dir: /usr/sbin
                                  current count: 205
                                  Current dir: /usr/bin

                                   Total – 2445
COMMENT

#!/bin/bash
file=(`echo $PATH | tr ":" "\n " `)
for ((i=0; i< ${#file[@]}; i++))
do
        if [ -x $file ]
        then
                echo "Current dir: ${file[$i]}"
                count=(`find ${file[$i]} | wc -l`)
                echo "current count:$count"
                totalCount=$(($totalCount+$count))
        fi
done
echo "Total--$totalCount"
