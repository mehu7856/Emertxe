<<COMMENT

Name: Mahaboob basha S.R

Date:19/10/2021

Description: script to print a given number in reverse order

Sample input:12345

Sample output:54321

COMMENT

#!/bin/bash

regex='^[0-9]?$'

if [ $# -ne 0 ]

then						

	if [[ $1 =~ $regex ]]			

	then

		if [ $1 -ge 10 ]

		then

               		n=$1

			sd=0

			rev=0

			while [ $n -gt 0  ]		

			do

			sd=$(( $n % 10 ))

			rev=$(($rev * 10 + $sd))

		  	n=$(( $n / 10 ))

	  		done

	 	 echo "Reverse is " $rev		

		else

			echo "Error: please enter multi-digit numbers"

		fi

	else					

		echo "Error: enter only number"				

	fi

else

  echo "Error: No arguments pass"	

fi

