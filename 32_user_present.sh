<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to search a user present in your system.

Requirements: -
1. Fetch user-names from the first field in /etc/passwd file.
2. Search given name in the list.

Sample execution: -
1. ./33_user_present.sh xyz
xyz not present
2. ./33_user_present.sh root
root is present
3. ./33_user_present.sh
Error : Please pass the argument through command line.

Input: Enter the username in CL
Output: Display user present or not
comments

#!/bin/bash

arr=(`cut -d : -f1 /etc/passwd`)	    #Store user name to arr from passwrd file
lenght=${#arr[@]}			    #find lenght od array
size=$(($lenght-1))			    #find index size
i=0					    #set variable	
count=0					    #set count variable
if [ $# -eq 0 ]				    #Check user entered input or not
then
    echo "Pass the CL"			    #Print ERROR	
else
    while [ $i -le $size ]		    #Start loop till index size
    do
	if [ "${arr[$i]}" = "$1" ]	    #compare with user entered name with arr element
	then
	    count=$(($count+1))		    #if present den close loop
	    break			    #break loop
	fi
	i=$(($i+1))			    #increment i
    done
    if [ $count -eq 1 ]			    #display username
    then
	echo "USer $1 is present"	    #Dispaly
    else
	echo "User $1 is not present"
    fi
fi


