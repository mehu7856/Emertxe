<< COMMENT
Name : Mahaboob basha S.R
Date : 22-10-2021
Description : Print the length of each and every string using array
Sample input : hello
Sample output : length of string (hello): 5
COMMENT

#!/bin/bash
arr=($@)                                                                          

if [ ${#arr[@]} -ge 1 ]                                                          

then

        echo "All the ELements of array: ${arr[@]}

        length of the string (${arr[0]}) : ${#arr}

        length of the string (${arr[1]}) : ${#arr[1]}

        length of the string (${arr[2]}) : ${#arr[2]}

        length of the string (${arr[3]}) : ${#arr[3]}

        length of the string (${arr[4]}) : ${#arr[4]}

        length of the string (${arr[5]}) : ${#arr[5]}"                              

else

        echo "Error : Please pass the arguments through command line!"      
fi                                                                                  

