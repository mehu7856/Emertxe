<< COMMENT

Name : MAHABOOB BASHA S.R

Date : 18-10-2021

Description : Athematic calculator through CLA

Sample input : 20 + 10

Sample output : 30

COMMENT



#!/bin/bash



if [ $# -eq 0 ]

then

        echo "Error: please pass arguments through CLA"                         #user gives no arguments shows error

elif [ $# -eq 3 ]                                                               #user given number is equal to 3 arg

then

        case $2 in

                +)

                        echo "The addition is" `echo "$1 + $3"|bc`

                        ;;

                -)

                        echo "The subtraction is" `echo " $1 - $3" |bc`

                        ;;                                                                                                  #case condition considered operate in calculator

                \*)

                        echo "The multiplication is" `echo " $1 * $3"|bc`

                        ;;

                /)

                        echo "The division is" `echo "scale=2; $1 / $3"|bc`

                        ;;



        esac

else

        echo "Error: please pass 3 arguments"                                          #user gives below 3 shows Error

fi

