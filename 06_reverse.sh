<<comments
Author: Girish Gaude
Date: 22/Oct/2019
Desciption: Program to print a given number in reverse order.
	    
	    Requirements: -
	    1. Read an multi-digit number from user and reverse the number.
	    2. Its not just printing in reverse order
	    3. You have to extract each digit and convert to reverse.
	    4. When ‘0’ comes as last digit, discard while reversing.

	    Sample execution: -
	    1. ./07_reverse.sh 12345
	    Reversed number – 54321
	    
	    2. ./07_reverse.sh 1540
	    Reversed number – 451

	    3. ./07_reverse.sh 5
	    Error: pass a multi-digit number

	    4. ./07_reverse.sh
	    Error: No argument passed 

Input: Enter the number
Output: Reverse the number
comments

#!/bin/bash
tem=0					#Temp variable to store value
rev=0					#Assign variable to store reverse number
num=$@				        #Variable stores the inserted number
if [ $@ -eq 0 ]			    	#Check number equal to 0 or not
then
    echo "No Argument passed"		#print error
else
    c=$(($num/10))		        #This to checks number of digits more the two or not
    if [ $c -eq 0 ]		        #if not then pass the error msg
    then
	echo "Insert more Digits"
    else

    while [ $num -gt 0 -o $num -lt 0 ]  #loop execuited to reverse the number
    do
	tem=$(($num%10))		#store modular output
	rev=$(($rev*10+$tem))		#Hold reverse output
	num=$(($num/10))		#minus one number
	

    done
    echo "Reverse number is: $rev"	#display reverse number
    fi
fi
