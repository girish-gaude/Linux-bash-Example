<<comments
Author: Girish Gaude
Date: 23/Oct/2019
Desciption: Program to perform arithmetic operation on digits of a given number depending upon the operator.
	    
	    Requirements: -
	    1. Read a string from user, must end with a operator symbol.
	    2. Number can be any length but must end with an operator character
	    3. Always do left to right operations.
	    4. If 8312- passed do 8-3-1-2 = 2

	    Sample execution: -
	    1. ./09_operator_dependent.sh 1234+
	    Sum is 10

	    2. ./09_operator_dependent.sh 8312-
	    Sub is 2
    
	    3. ./09_operator_dependent.sh 5487
	    Error: Operator missing
    
	    4. ./09_operator_dependent.sh 1111\*
	    Mul is 1

	    5. ./09_operator_dependent.sh
	    Error : Please pass the argument.
	    Usage : ./09_operator_dependent.sh 2345+

Input: Enter the digit
Output: Output of arithmatic operation
comments

#!/bin/bash

num=$@					#Store arguments in variable
ans=0					#Set variable ans to zero
if [ $# -eq 0 ]				#check whether argument pass or not
then
    echo "Please pass the arguments."	#Print
else

    operator=${num: -1}			#Read last digit of number, which is operator
    case $operator in			#compare with care
	+)
	    for i in `seq 0 $((${#num}-2))` #loop to read each number and perform addition
	    do
		digit=${num: $i: 1}	    #take each entered digit 
		ans=$(($ans+$digit))	    #update and store answer
	    done
	    echo "The Sum of Digits: $ans"
	    ;;
	-)
	    ans=${num:0:1}
	    for i in `seq 1 $((${#num}-2))` #To perfom subtraction
	    do
		digit=${num: $i: 1}
		ans=$(($ans-$digit))
	    done
	    echo "Subtraction of digits: $ans"
	    ;;
	/)
	    ans=${num:0:1}
	    for i in `seq 1 $((${#num}-2))` #To perform Division
	    do 
		digit=${num: $i: 1}
		ans=$(($ans/$digit))
	    done
	    echo "Division of number: $ans"
	    ;;
	x)
	    ans=1
	    for i in `seq 0 $((${#num}-2))` #To perform Multiplication
	    do
		digit=${num: $i: 1}
		ans=$(($ans * $digit))
	    done
	    echo "Multiplitn of each digit is: $ans"
	    ;;
	*)
	    echo "Operator not found"	    #Print when no operator present
    esac
fi




