<< COMMENT
Name : Mahaboob basha S.R
Date : 18-10-2021
Description :Genarate fibanocci Numbers
Sample input :10
Sample output :0,1,1,2,3,5,8

COMMENT

#!/bin/bash
regex='^[+-]?[0-9]+$'                               #regex mehod is used for the matching string pattern
read -p"Enter the value:" num                         #read numbers
a=1
b=0
fn=0                                                 #instiliaze numbers
if [[ $num =~ $regex ]]
then
        if [ $num -gt 0 ]                                    #if -gt stands for greaterthan
        then
                while [ $fn -le $num ]                           #loop useing satisfied condtion
                do
                        echo -n  "$fn "
                        fn=$(( a + b ))                                #expression fn=a+b
                        a=$b
                        b=$fn
                done                                                                  #condtion is not satisfied show error
        else
                echo "Error: Please enter only positive numbers"
        fi
else
        echo "Error: Please enter only numbers"
fi
