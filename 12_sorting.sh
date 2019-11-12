<<comments
Author: Girish Gaude
Date: 23/Oct/2019
Desciption: Program to sort a given number in ascending or descending order.
    
	Requirements: -
	1. Pass numbers through command-line arguments.
	2. Provide a menu for user to choose ascending or descending.
	3. Show sorted array according to user choice.

	Sample execution: -
	1. ./13_sorting.sh -a 5 4 6 2 3 8 9 7 1
	Ascending order of array is 1 2 3 4 5 6 7 8 9
	
	2. ./13_sorting.sh -d 5 4 6 2 3 8 9 7 1
	descending order of array is 9 8 6 5 4 3 2 1
	
	3. ./13_sorting.sh 5 4 6 2 3 8 9 7 1
	Error : Please pass the choice.
	Usage : ./13_sorting -a/-d 4 23 5 6 3

	4. 13_sorting.sh
	Error : Please pass the argument through command line.
	Usage : ./13_sorting -a/-d 4 23 5 6 3

Input: Enter the numbers
Output: order
comments

#!/bin/bash

arr=($@)					    #Store CLA in arr variable
if [ $# -eq 0 ]					    #Check CLA empty or not
then 
    echo "Please pass the arguments in CL"
else
    case $1 in					    #check first letter 
	'-a')					    #If input is -a then perform ascending sorting
	    for i in `seq 1 $((${#arr[@]}-1))`	    #Start loop till last index value
	    do
		for j in `seq 1 $i`
		do
		    if [ ${arr[$i]} -lt ${arr[$j]} ] #Check elements of array
		    then
			temp=${arr[$i]}		     #If ith element is less then put value in temp variable	
			arr[$i]=${arr[$j]}	     #put j in arr ith index	
			arr[$j]=$temp		     #value of temp in j	
		    fi
		done
	    done
	for i in `seq 1 $((${#arr[@]}-1))`	 
	do
	    echo ${arr[$i]}			    #print value in acsend
	done
	;;
    '-d')
	for i in `seq 1 $((${#arr[@]}-1))`
	do
		for j in `seq 1 $i`
		do
		    if [ ${arr[$i]} -gt ${arr[$j]} ] #Check number are in decending order
		    then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		    fi
		done
	    done
	for i in `seq 1 $((${#arr[@]}-1))`
	do
	    echo ${arr[$i]}			    #print value in decending order
	done
	;;
    *)
	echo "ERROR: invalid"			    #Print error messge

esac
fi
