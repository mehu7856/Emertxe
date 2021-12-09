<< COMMENT
Name : Mahaboob basha S.R
Date : 15-10-2021
Description : Print a chess board
Sample Input : 8
Sample Output : 101010   1 is white and 0 is black
COMMENT

#!/bin/bash
read -p "Enter a number:" num                                                     
for rows in $(seq 1 $num)                                                         

do
        for col in $(seq 1 $num)                                                  

        do
                total=$(((rows+col)%2))                                           
                if [ $total -eq 0 ]                                               
                then
                        echo -e -n "\e[47m " " "                                   
                else
                        echo -e -n "\e[40m " " "                                   
                fi
        done                                                                       
        echo -e -n "\e[0m " " "                                                    
        echo""
done                                                                               
