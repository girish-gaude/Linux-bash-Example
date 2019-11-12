<<comments
Author: Girish Gaude
Date: 22/Oct/2019
Desciption: Program to print the length of each and every string using arrays

	    Requirements: -
	    1. Pass some names or strings from command-line.
	    2. Print all the string lengths one-by-one.
	    3. Number of argument may vary.

	    Sample execution: -
	    1. ./11_string_length.sh hello hai how are you ?
	    Length of string (hello) – 5
	    Length of string (hai) – 3
	    Length of string (how) – 3
	    Length of string (are) – 3
	    Length of string (you) – 3
	    Length of string (?)   - 1

Input: Enter full string.
Output: length of each word
comments

#!/bin/bash
arr=($@)					       #Take CLA from user and store in variable

for i in `seq 0 $(($#-1))`			       #Insert each word in each index of array.Also ${!arr[@]} can be used in for loop
do

   echo "Lenght of String (${arr[$i]}) : ${#arr[$i]} " #Print each content of index with present word lenght
done

