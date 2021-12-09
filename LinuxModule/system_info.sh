<< COMMENT
Name: Mahaboob basha S.R
Date: 28-10-2021
Description: script to print system information using commands
Sample input:1
Sample output: show logged user
COMMENT

#!/bin/bash

echo "1.Current logged user

2.Your Shell directory

3.home directory

4.os name and version

5.current working directory

6.number of user logged in

7.show all available shell in system

8.hard disk information

9.CPU information

10.memory information

11.files system information

12.currently running process"

option=yes

while [[ $option -eq yes ]]               

do

        read -p "Enter a value:" number    

        case $number in                                           

                1)

                        echo "Current logged user"`whoami`        

                        ;;

                2)

                        echo "Your shell directory"`echo $SHELL`         

                        ;;

                3)

                        echo "Home directory"`echo $HOME`            

                        ;;

                4)

                        echo "Os name ans version"`uname -v`         

                        ;;

                5)

                        echo "Current working directory"`pwd`        

                        ;;

                6)

                        echo "number of users logged in"`w`         

                        ;;

                7)

                        echo "Show all avilable shells"`cat /etc/shells`   

                        ;;

                8)

                        echo "Hard disk information"`df -h`          

                        ;;

                9)

                        echo "CPU information"`cat /proc/cpuinfo`          

                        ;;

                10)

                        echo "Memory information"`cat /proc/meminfo`            

                        ;;

                11)

                        echo "Flie system"`cat /proc/filesystems`       

                        ;;

                12)

                        echo "Currently running process"`ps`     

                        ;;

                *)

                        echo "Invalid option: please pass valid option"

                        ;;

        esac

        read -p "Do you want continue(yes/no):" option2

        option=$option2

done
