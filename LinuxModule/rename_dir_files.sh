<< COMMENT
Name: Mahaboob basha S.R
Date : 22-10-2021
Description: script to rename a file/directory replaced by lower/upper case letters
Sample input: File.txt
Sample output: file.txt
COMMENT

#!/bin/bash

if [ $# -eq 0 ]               #user did not pass any argument

then

        echo "Files are renamed by lower and directories are rename by upper"

        for i in `ls`

        do

                if [ -f $i ]                      

                then

                        mv -i "$i" `echo $i | tr '[A-Z]' '[a-z]'`   

                fi

                if [ -d $i ]                                            

                then

                        mv -i "$i" `echo $i | tr '[a-z]' '[A-Z]'`        

                fi

        done

        #close for loop

fi
