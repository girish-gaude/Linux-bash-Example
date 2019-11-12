<<comments
Author: Girish Gaude
Date: 21/Oct/2019
Desciption: Program to print the given pattern
Input: Enter the number
Output: 1
	2 3
	4 5 6
	7 8 9 10
comments

#!/bin/bash

echo -n "Enter the number: " #Ask user to enter the number
read num #Take entered value from user and stored in num

a=1 #set variable a
if [ $num -gt 0 ] #check entered number is positive or not
then
    for i in `seq 1 $num` #increament i from 1 to number
    do
	for j in `seq $i` #increament j value
	do
	    echo -n "$a " #print value of a in i and j location
	    a=$(($a+1)) #increment value of a and store it
	done
	echo
    done
else
    #Display Error Msg
    echo "Error: Please enter positive number only"
fi
