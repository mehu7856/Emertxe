<<COMMENT
Name:MAHABOOB BASHA S.R
Date:18/10/2021
Description: Calculating BMI
Sample input:  The enter a weight and height: 45.5 & 1.5	    
Sample output: Your normal
COMMENT


#!/bin/bash
regex='^[+-]?[0-9]?+[.]?[0-9]?+$'
read -p "the enter number weight in kg:" weight
read -p "the enter number height in mm:" height

if [[ $weight =~ $regex ]]                                                   #Use regex representing string matching patterns
then
	if [[ $height =~ $regex ]]
	then
	product=`echo "$height*$height" |bc`                                # product=height*height

	bmi=`echo "scale=2;$weight/$product"|bc`                            #bmi=weight/height
	
		if [ `echo "$bmi < 18.5"|bc` -eq 1 ]                        #if ur weight is lessthan 18.5  print under weight
		then
			echo "you are underweighted"
		fi
		if [ `echo "$bmi >= 18.5"|bc` -eq 1 ]                                                  
		then

			if [ `echo "$bmi <= 24.5"|bc` -eq 1 ]                 #if ur weight is lessthan 24.5 print the your normal     
			then
				echo "you are normal"
			fi
		fi
			if [ `echo "$bmi >= 25"|bc` -eq 1 ]
			then

				if [ `echo "$bmi <= 29.8"|bc` -eq 1  ]         #if ur weigth is lessthan 29.8 print over weigth
				then 
					echo "you are overweighted"
				fi
			fi
		if [ `echo "$bmi > 30 " |bc` -eq 1 ]                           #if ur weigth is gretarthan 30 print Ur obese
		then
			echo "you are obese"
		fi
	else
		echo "error invalid"                                                            
	fi
else
	echo "error invalid"
fi

