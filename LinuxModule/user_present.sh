<<COMMENT
Name: Mahaboob basha S.R
Date: 02-11-2021
Description: script to search whether the user is present or not in your system
Sample Input: root
Sample output: root present
COMMENT

#!/bin/bash
arr=(`cat /etc/passwd | cut -d ":" -f 1 `)
name=$1
if [ $# -ne 0 ]
then
        for i in ${arr[@]}
        do
                if [[ $i == $name ]]
                then
                        echo  "$name Present"
                else
                        echo "$name not present"
                fi
        done
else
        echo "Error: Please pass the arguments through CLA!"
fi

