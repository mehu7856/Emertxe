<<COMMENT
Name : Mahaboob basha S.R
Date : 27-11-2021
Description :script to rename current working directory with given name
Sample input: test
Sample output: current directory will be renamed to test

COMMENT

#!/bin/bash
if [ $# -ne 1 ]
then
        echo " Error: no file or/directory is given"
fi
path=$1
currentdir=`basename $PWD`
cd ../
if [ -e $path ]
then
        echo "Error: Current directory name and $path both same, Please pass new name"
else
         mv "$currentdir" "$path"
         echo "$currentdir is renamed as $path"
fi
