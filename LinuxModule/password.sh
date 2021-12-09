<< COMMENT
Name: Mahaboob basha S,R
Date: 19-10-2021
Description: script for generating random 8-character passwords including alpha numeric characters
sample input:
sample output: nh@78fgxk
COMMENT

#!/bin/bash
if [ $# -eq 0 ]                    

then
        < /dev/urandom tr -dc A-za-z0-9!"#$%&*?/?@~" | head -c8
        echo                                 
fi                               
