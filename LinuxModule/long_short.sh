<<COMMENT
Name: Mahaboob basha S.R
Date: 5-11-2021
Description: Display the longest and shortest user-names on the system
Sample input:
Sample output: The Longest Name is: speech-dispatcher
               The Shortest Name is:lp
COMMENT
#!/bin/bash
array=(`cat /etc/passwd |cut -d ":" -f 1 `)
max=${array[@]:0:1}
min=${array[@]:0:1}
total_length=`expr ${#array[@]} - 1`
for i in `seq 1 $total_length`
do
        if [[ ${#array[$i]} -ge ${#max} ]]
        then
                longest=${array[$i]}
                max=${array[$i]}
        fi
        if [[ ${#array[$i]} -le ${#min} ]]
        then
                small=${array[$i]}
                min=${array[$i]}
        fi
done
echo "the largest name is :" $longest
echo "the smallest name is :" $small
