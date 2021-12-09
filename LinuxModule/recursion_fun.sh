<<COMMENT
Name : Mahaboob basha S.R
Date : 22-10-2021
Description : Use a recursive function to print each argument passed to the function
Sample input: How are you ? I am fine
Sample output: How
               are
               you
COMMENT

#!/bin/bash
if [ $# -ne 0 ]
then
        num=0
        array=("$@")
        temp=$#
        function recursive()
        {
                if [ $num -lt $temp ]
                then
                        num=$(($num+1))
                        echo $1
                        recursive ${array[$num]}
                fi
        }
        recursive $@
else
        echo "Error: please pass the arguments through CLA!"
fi

