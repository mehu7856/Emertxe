<<COMMENT
Name:Mahaboob bahsa S.R
Date:31-10-21
Description:Print greetings based on time
Sample input:
Sample output:
COMMENT

#!/bin/bash
#current hour(24 hours clock)
hour=$(date +"%H")
#instilize date month year  time to store the varible
days=$(date +"This is %A %d in %B of %Y (%X %p)")
#5 am to 12 will be greet Good morning
if [ $hour -ge 5 -a $hour -lt 12 ]
then
        greet="Good Morning $USER Have a nice day!"
#mid aftennnon to 1 willbe greet good noon
elif [ $hour -ge 12 -a $hour -lt 13 ]
then
        greet="Good noon $USER Have a nice day!"
#mid noon to 17 will be greet good aftrnoon
elif [ $hour -ge 13 -a $hour -lt 17 ]
then
        greet="Good afternoon $USER Have a nice day!"
#mid afternoon to 21 willbe greet good evening
elif [ $hour -ge 17 -a $hour -lt 21 ]
then
        greet="Good evening $USER Have a nice day!"
#evening 9 to 5 willbe greet good night
else
        echo "Good night $USER Have a nice day!"
fi
#print greetings
echo "$greet"
#print day month year time
echo "$days"
