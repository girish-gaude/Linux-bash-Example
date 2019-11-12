<<comments
Author: Girish Gaude
Date: 22/Oct/2019
Desciption: Program to read 'n' and generate Fibonacci numbers <= n

	    Requirements: -
	    1. Remember n is not number of elements to print
	    2. Its the boundary of elements to print.

	    Sample execution: -
	    1. ./fibonacci.sh
	    Enter limit for fib series: 10
	    0, 1, 1, 2, 3, 5, 8

	    2. ./fibonacci.sh
	    Enter limit for fib series: 33
	    0, 1, 1, 2, 3, 5, 8, 13, 21, 33

	    3. ./fibonacci.sh
	    Enter limit for fib series: -10
	    Error : Please enter only positive numbers.

Input: Enter n number
Output: Fibonacci series till n
comments

#!/bin/bash
num=$@				#Read number
fb1=0				#set variabe fb1=fb3=0 and fb2=1
fb2=1
fb3=0
if [ $num -gt 0 ]		#check if number is positive or negative
then
    echo $fb1
    echo $fb2
    while [ $fb3 -lt $num ]	#This loop execuite till enter number
    do
	fb3=$(($fb1+$fb2))	#Update new number in series
	fb1=$fb2		#update fb1
	fb2=$fb3		#update fb2
	if [ $fb3 -le $num ]	#Print till user inserted number
	then
	    echo -n "$fb3 "
	    echo
	fi
	
    done
else				#If number is negetive print ERROR msg
    echo "ERROR::Enter positive number only!!"
fi
