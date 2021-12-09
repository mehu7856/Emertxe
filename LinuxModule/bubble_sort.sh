<<COMMENT
Name: Mahaboob basha S.R
Date:21/10/2021
Description: Sorting ascending order and descending order
Sample input:45321
Sample output:12345
COMMENT

#!/bin/bash

echo enter choice                                                                                                    

read c                                                                                                                        

read -p "enter an array:" -a a                                                                

if [ ${#a[@]} -ne 0 ]                                                                                 

then

	if [ -z "$c" ]                                                                                                         

	then

		echo "error: please pass a choice"

		elif [ $c = a ]                                                                       

		then

			echo "ascending order"

			for i in $( echo "${a[@]}" |tr ' ' '\n' | sort -nf )                     

			do

				echo $i

			done

		elif [ $c = d ]                                                                           

		then

			echo "descending order"

			for i in $( echo "${a[@]}" |tr ' ' '\n' | sort -nr )

			do

				echo $i

			done

		else

			echo "error: please pass choice"

		fi

else

	echo "error: please pass argument through CLA"                                   

fi
