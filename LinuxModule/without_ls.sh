<<COMMENT
Name : Mahaboob basha S.R
Date : 2-11-2021
Description: Print contents of a directory without ls command
Sample input: test
Sample output: music files, videos etc...
COMMENT

#!/bin/bash
if [ $# -eq 1 ]
then
        if [ -d $1 ]
        then
                for i in `dir ~/$1`
                do
                        echo -n "$i"
                done
        else
                echo "Can't access '$1' : No such a file or directory"
        fi
else
        echo "`echo *`"
fi

