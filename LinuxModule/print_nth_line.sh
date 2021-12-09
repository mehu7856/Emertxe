<<COMMENT
Name:Mahaboob basha S.R
Date:26-10-2021
Description: Print the 5th line of a file passed through command line
Sample input: file.txt
Sample output: line5
COMMENT

#!/bin/bash
file=$1                                   
if [ $# -eq 1 ]
then
        if [ -f $file ]                
        then
                if [ -s $file ]                                        
                then
                        length=`cat $file |wc -l`                      
                        if [ $length -eq 5 ]
                        then
                                echo "Fifth line of file.txt is" `head -n 5 $file | tail -n 1 $file`        
                        else
                                echo "Error: file is 2 lines only. So cant print 5th line!"
                        fi
                else
                        echo "No contents in the file"  
                fi
        else
                echo "error: NO such a file"
        fi
else
        echo "Error: please pass the file name through CLA!"
fi
