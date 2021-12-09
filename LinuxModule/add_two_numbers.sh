<< COMMENT
Name : Mahaboob basha S.R
Date : 15-10-2021
Description :  script for addition of two numbers for real numbers also
Sample input : 10 20
Sample output : 30
COMMENT

#!/bin/bash

regex='^[0-9]+[.]?[0-9]+$'                                              

read -p "enter a numbers :" num1 num2                       

sum=`echo "$num1 + $num2"| bc`                                  

if [[ $sum =~ $regex ]]                                                       

then

        echo addition "$sum"                                                     

else

        echo "please enter only integers or real numbers"           

fi     
