<<COMMENT
Name: Mahaboob basha S.R
Date : 06-11-2021
Description :script to replace 20% lines in a C file randomly and replace it with the pattern
Sample input :
Sample output: Before replacing
#incude <stdio.h>
               int main()
               {
                    printf(“Hello world\n”);
               }
               After replacing
               #incude <stdio.h>
               int main()
               {
                    <-----------Deleted------------>
               }
COMMENT

#!/bin/bash
if [ $# -ne 0 ]
then
        if [ -f $1 ]
        then
                if [ -s $1 ]
                then
                        arr=$(shuf $1 | wc -l < "$1" )
                        for i in ${arr[@]}
                        do
                                echo "before looping"
                                echo "`cat $1`"
                                echo "After looping"
                                sed 's/print.*/<-------Deleted--------->/' $1
                        done
                else
                        echo "Error: $1 is a empty file. So can't replace string"
                fi
        else
                echo "Error: $1 No such a file"
        fi
else
        echo "Error: please pass the file through command line"
fi
