<<COMMENT

Name:Mahaboob basha S.R

Date:20-10-2021

Description: Delete empty lines from a file name

Sample input:./file.sh file.txt

Sample output: Empty lines are deleted

COMMENT

#!/bin/bash

file=$1                                                        

if [ $# -eq 1 ]

then

        if [ -s $file ]                                            

        then

                sed -i 's/[[:space:]]//g' $file                     

                sed -i '/^$/d' $file                                    

                echo "Empty lines are deleted"
        else

                echo "Error:file.txt empty, So Empty lines are not delete!"
       fi                                                        
else

        echo "Error: Pleas pass the file name through CLA"                                                               
fi
