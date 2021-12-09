<< COMMENT

Name : Mahaboob basha S.R

Date : 20-10-2021

Description : script to find the larger number of 'n' number of arguments

Sample input : 2 4 6 8

Sample output : Largest is 8

COMMENT

#!/bin/bash
largest=$1                                                                                    
if [ $# -ne 0 ]                                                                                

then                                                                                                   

        for i in $@                                                                                 

        do

                if [ $largest -lt $i ]                                                                  

                then

                        largest=$i                                                                                  

                fi                                                                                                           

        done

        echo "Largest number is $largest"                                                   

else

        echo "Error: No arguments passed!"                                              

fi                                                                                                            

