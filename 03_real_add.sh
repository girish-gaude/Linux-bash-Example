<<comments
Author: Girish Gaude
Date: 21/Oct/2019
Desciption: Write a script for addition of two numbers for real numbers also
		Requirements: -
		1. Ask user to enter two numbers
		2. User can enter real numbers also
		3. Use bc command and piping to do

	    Sample execution: -
		1. ./03_real_add.sh
		Enter the numbers to addition
		10
		20
		Answer is 30

		2. ./03_real_add.sh
		Enter the numbers to addition
		10.32
		20.45
		Answer is 30.77
Input: Enter the two number
Output: Sum of two real number
comments

#!/bin/bash
							#Enter two number
echo -n "Enter the two number: "
read num1 num2						#Read two number

echo "Sum of two number is = `expr $num1+$num2 | bc`"	#Perform Addition of real number


