<<comments
Author: Girish Gaude
Date: 30/Oct/2019
Desciption: Program to print greeeting based on time

    Requirements: -
    1. The script should run as soon as you log-on to system
    2. Print greetings based on time as follows.
    3. "Good morning" (5 AM – 12 PM)
    4. "Good noon" (12 PM – 1 PM)
    5. "Good afternoon" (2 PM – 5 PM)
    6. "Good evening" (5PM – 9 PM)
    7. “Good night” (9 PM – 5 AM)

    Sample execution: -
    1. When we start shell (whenever you opening new tab or terminal)
    Good Morning user, Have nice day!
    This is Thursday 08 in June of 2017 (10:44:10 AM)

Input: Read the system date
Output: Print Greeting
comments

#!/bin/bash
					    #use vim ./bashrc and put path
time=`date +%H`				    #load time (Hours) in variable
if [ $time -ge 5 -a $time -lt 12 ]          #Good morning  loop
then
    echo "Good Morning User, Have a nice day! This is `date +"%c"`"
elif [ $time -ge 12 -a $time -lt 2 ]	    #noon loop
then 
    echo "Good Noon User, Have a nice day! This is `date +"%c"`"
elif [ $time -ge 2 -a $time -lt 17 ]	    #afternoon loop
then
    echo "Good Afternoon User, Have a nice day! This is `date +"%c"`"
elif [ $time -ge 17 -a $time -lt 21 ]	    #Evening loop
then
    echo "Good Evening User, Have a nice day! This is `date +"%c"`"
else
    echo "Good Night User, Have a nice day! This is `date +"%c"`"
fi
