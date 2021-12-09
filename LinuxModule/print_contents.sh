<< COMMENT
Name : Mahaboob basha S.R
Date : 25-10-2021
Description : print contents of file from given line number to next given number of lines.
Sample input:  5 3 myfile.txt
Sample output: line number 5
               line number 6
               line number 7
COMMENT

#!/bin/bash
line1=$1
line2=$2
line3=$3                                                          
if [ $# -eq 3 ]
then

        total_length=`cat $line3 | wc -l`                           

        lines=`echo "$line1 + ( $line2 - 1 )"|bc`
        if [ $total_length -ge $lines ]
        then
                echo "`head -$lines $line3|tail -$line2`"
        else
                echo "Error:file.txt is having only 10 lines, file should have at least 14 lines"
        fi                                                              
else
        echo "Error: arguments missing!"
fi
