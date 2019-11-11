<<comments
Author: Girish Gaude
Date: 21/Oct/2019
Desciption: To print the given pattern
Input: Enter the number
Output: 1
	1 2
	1 2 3
	1 2 3 4
comments

#!/bin/bash

echo -n "Enter the number of line: " #Ask user to enter the number
read num #Read value entered by user

if [ $num -gt 0 ]
then
    for i in `seq 1 $num` #In this loop i value will increament from 1 to number enter by user
    do
	for j in `seq 1 $i` #This loop j value is increment till the value of i
       	do
	    echo -n "$j "  #Print the value of j in each location
        done
    echo
done
else
    #Display Error text
    echo "Error: Enter Positive number only"
fi

