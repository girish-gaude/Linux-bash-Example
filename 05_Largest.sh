<<comments
Author: Girish Gaude
Date: 22/Oct/2019
Desciption: Write a script to compare larger integer values from a 'n' number of arguments using command line arguments
	    
	    Requirements: -
	    1. Using command-line pass n arguments.
	    2. Compare all these arguments and print the largest value
	    3. Print error in-case no arguments.
	    4. Number of arguments can vary every time.

	    Sample execution: -
	    1. ./06_largest.sh 5 6 8 4 2 1
	    Largest value is 8

	    2. ./06_largest 9
	    Largest value is 9

	    3. ./06_largest
	    Error: No arguments passed

Input: Enter the number
Output: Largest number
comments

#!/bin/bash
if [ $# -eq 0 ]				#check whether argument passed or not
then 
    echo "Error: No argument passed."   #Print ERROR
else
    max=$1			        #Set largest number to argument 1
    for i in $@				#Run the loop to compare all elements
    do
	if [ $i -ge $max ]		#Loop check if value of i is greater or equal to last greater value
	then
	    max=$i			#if Yes den update new value to max
	fi
    done
					#Print largest number
echo "Largest number in the series is: $max"
fi
    
