<<COMMENT
Name : Mahaboob basha S.R
Date: 05-11-2021
Description : Use pipes or redirection to create an infinite feedback loop.
Sample input :
Sample output: hello hai
               hello hai
COMMENT

#!/bin/bash
if [ -f $1 ]
then
        echo "Hai hello" > $1
        echo "before loop contents `cat $1`"
        echo "After the loop contents:  "
        tail -f $1 >> $1 | tail -f $1
fi
