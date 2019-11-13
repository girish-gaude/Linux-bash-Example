<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to search largest and shortest usernames on system

    Requirements: -
    1. Fetch user-names from the first field in /etc/passwd file.
    2. Print longest and shortest name.

    Sample execution: -
    1. ./ 19_largest_username.sh
    The Longest Name is: speech-dispatcher
    The Shortest Name is: lp

Input: Enter the username in CL
Output: Display user smallest and largest name
comments

#!/bin/bash
arr=(`cut -d : -f1 /etc/passwd`)			#extract username from passwd file and store in array
size=${#arr[@]}						#store size of array
echo ${arr[@]}						#Display all element of array
for i in `seq 0 $(($size-1))`				#Run loop till last array index
do
    if [ ${#arr[$i]} -lt ${#arr[0]} ]			#Shortest name Size
    then
	temp=${arr[0]}					#load temp variable 
	arr[0]=${arr[$i]}				#compre old i with new i
	arr[$i]=$temp					#i=temp
    elif [ ${#arr[$i]} -gt ${#arr[$(($size-1))]} ]	#largest name Size
    then
	temp=${arr[$(($size-1))]}			#Largest name in last element
	arr[$(($size-1))]=${arr[$i]}			#sort
	arr[$i]=$temp
else 
   arr[0]=${arr[0]}					#smallest name
   arr[$(($size-1))]=${arr[$(($size-1))]}		#Largest name
fi
done
echo "Shortest user ${arr[0]}"				#print Shortest name 
echo "Largest user ${arr[$i]}"				#Print largest name

