<<COMMETNT
Name : Mahaboob basha S.R
Date : 27-11-2021
Description: perform arithmetic operation on digits given number
Sample input : 1234+
Sample output :10
COMMETNT
#!/bin/bash

if [ $# -ne 0 ]

then
        digit=$1

        operator=$2

        #get string count and also includes null

        count=`echo $digit | wc -c`

        #get digit count

        digitCount=$((count - 2 ))

        #givennumber

        givennumber=${digit:0:$digitCount}

        #operator

        ope=${digit:$digitCount:$count}

        #first digit result

        result=${digit:0:1}

        for ((i=1; i < digitCount; i++))

        do
                #fetch the nextdigit number

                nextDigit=${digit:$i:1}

                result=$(($result$ope$nextDigit))

        done

        echo "$ope result is $result"
else

        echo "Error:Please pass the arguments through CLA!"

fi
