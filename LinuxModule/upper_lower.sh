<< COMMENT
Name : Mahaboob basha S.R
Date : 25-10-2021
Description : script to convert string lower to upper and upper to lower
Sample input : abcd & ABCD
Sample output : ABCD & abcd
COMMENT

#!/bin/bash
file=$1                                    
if [ $# -eq 1 ]
then
        if [ -f $file ]                                  
        then
                if [ -s $file ]                              
                then
                        echo " 1 - lower to upper"
                        echo " 2 - upper to lower"
                        read -p "Enter a option:" option
                        if [ $option -eq 1 ]                          
                        then
                                tr [:lower:] [:upper:] < $file
                        fi
                        if [ $option -eq 2 ]                            
                        then
                                tr [:upper:] [:lower:] < $file            
                        fi
                else
                        echo "Error: no content inside the file"        
                fi
        else
                echo "Error: File is not "                    
        fi
else
        echo "Error: Please pass the file name through CLA!"
fi
