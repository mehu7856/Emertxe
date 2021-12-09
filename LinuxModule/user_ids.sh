<<COMMENT
Name : Mahaboob basha S.R
Date : 22-11-2021
Description : Count the number of users with user IDs between given range
Sample input: 500 10000
Sample output:2
COMMENT

#!/bin/bash
array=(`cat /etc/passwd | cut -d ":" -f 1 `)
userid=(`cat /etc/passwd | cut -d ":" -f 3 `)
count=0
if [ $# -eq 0 ]
then
        for ((i=0; i<${#userid[@]}; i++))
        do
                if [ ${userid[i]} -gt 500  -a ${userid[i]} -lt 10000 ]
                then
                        count=$((count + 1))
                fi
        done
        echo "Total count of user id 500 and 10000 are : $count"
elif [ $# -eq 2 ]
then
        for ((i=0;i<${#userid[@]}; i++))
        do
                if [ ${userid[i]} -gt $1 -a  ${userid[i]} -lt $2 ]
                then
                        count=$((count+1))
                elif [ $1 -gt $2 ]
                then
                        echo "Error : invalid range. please enter a valid range through CLA!"
                fi
        done
        echo "Total count of user ids $1 and $2 are :$count"
else
        echo "Error: please pass 2 arguments!"
fi

