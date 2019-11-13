<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to Count the number of users with user IDs between 500 and 10000 on the system

Requirements: -
1. Fetch user-ids from the in /etc/passwd file.
2. Display only usernames between the range.
3. User can change the range using command-line arguments.
4. Default is 500 - 100000

Sample execution: -
1. ./users.sh
Total count of user ID between 500 to 10000 is: 2

2. ./users.sh 0 100
Total count of user ID between 0 to 100 is : 3

Input: Enter the range of user ids in CL
Output: Display all user ids
comments

#!/bin/bash 
count=0						    #Variable to store count
if [ $# -eq 0 ]					    #If CLA empty
then
    for i in $(cut -d : -f3 /etc/passwd)	    #Cut IDs from  passwd file
    do
	if [ $i -ge 500 -a $i -le 100000 ]	    #Take ids from 500 to 100000
	then
	    count=$(($count+1))			    #increment count
	fi
    done

echo "Total IDs between 500 to 100000: $count"	    #display count
else
    for i in $(cut -d : -f3 /etc/passwd)	    #Cut IDS from passwd file
    do
	if [ $i -ge $1 -a $i -le $2 ]		    #Print range from user input
	then
	    count=$(($count+1))			    #increment count
	fi
    done

echo "Total IDs between $1 to $2: $count"	    #display count
fi
