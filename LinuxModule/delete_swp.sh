<<COMMENT
Name : Mahaboob basha S.R
Date: 04-11-2021
Description : script to delete all the .swp files found in your system or directory
Sample input:
Sample output:  swp file found :
                /home/user/ConventionalMethod/.pic16F887.as.swp
                /home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
                /home/user/Development/LDD/.expt_drv.c.swp
                /home/user/Development/LDD/.ddk_block.c.swp
COMMENT

#!/bin/bash
if [ $# -eq 0 ]
then
        echo ".swp files are found "
        find ~ -name "*.swp" -print 2>/dev/null
else
        if [ -d $1 ]
        then
                files=`find $1 -name "*.swp"|wc -l`
                if [[  $files -eq 1 ]]
                then
                        echo ".swp files found"
                        find $1 -name "*.swp" -print 2>/dev/null
                        find $1 -name "*.swp" -delete 2>/dev/null
                else
                        echo "no swp files found $1"
                fi
        else
                echo "Error: no such files or directory"
        fi
fi

