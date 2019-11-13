<<comments
Author: Girish Gaude
Date: 30/Oct/2019
Desciption: Program to perform recusion function

Requirements: -
1. We pass command-line arguments to script.
2. Script call function with same arguments.
3. Regardless of how many arguments are passed. You are allowed to echo
only the first positional argument (echo 1).

Sample execution: -
1. ./26_recursion.sh 5 2 4 1 n kj i
5
2
4
1
n
kj
i
2. ./26_recursion.sh
Error : Pass the arguments through command line.

Input: Read CLA 
Output: print values
comments

#!/bin/bash
					#Entered CLA in array
if [ $# -eq 0 ]				#Check if something entered or not
then
    echo ERROR: Enter something in CLA
else
function recusion()			#function
{
    echo $1				#Print first arrgument
    arr=($@)				#Load Argment in array    
    if [ ${#arr[@]} -eq 1 ]		#Check the element of array
    then
	exit				#end program
    else
	arr=(`echo ${arr[@]} | cut -d " " -f1 --complement`)	#Cut first elemnt of array
	recusion ${arr[@]}		#update array
    fi
}
recusion $@				#Start function
fi
