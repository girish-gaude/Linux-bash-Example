<<comments
Author: Girish Gaude
Date: 21/Oct/2019
Desciption: Script for arithmetic calculator using command line arguments
	    
	    Requirements: -
	    • User must provide two numbers and operator through command-line
	    • Based on input do the operation and show the output.
	    • Use case to handle multiple operations
	    • Use expr or bc commands

Sample execution: -
    1. ./05_arithmatic_calc.sh 25 + 41
	67
    2. ./05_arithmatic_calc 10 x 5
	50
    3. ./05_arithmatic_calc.sh 25 / 5
	5
    4. ./05_arithmatic_calc.sh 10.2 – 5.6
	4.6
    5. ./05_arithmatic_calc.sh
	Please pass the arguments throght command line.
    6. ./05_arithmatic_calc.sh 3.4
	Error:Please pass 3 arguments.
    Usage:./05_arithmatic_calc 2.3 + 6.7

Input: Enter the two number with operator
Output: All Arithmatic output 
comments

#!/bin/bash
if [ $# -eq 3 ]					#Checking total arrguments equal to three
then
    case $2 in				        #use cases to perform arithmatic operation
	#for Addition				#Addition of two number 
	+)
	    sum=`expr "$1 + $3" | bc`		#sum of two numbers
	    echo "Sum is $sum"
	   ;;
	#for Subtraction
	-)
	    sub=`expr "$1 - $3" | bc`		#Subtraction of two number
	    echo "Subtraction is $sub"
	    ;;
	#for Division
	/)
	    div=`echo "scale=2; $1 / $3" | bc`	
	    echo "Division is $div"
	    ;;
	#for Multiplication
	x)
	    mul=`expr "$1 * $3" | bc`
	    echo "Multiplication is $mul"
	    ;;
	#If no proper Input
	*)
	    echo " Error: Opertor is missing"
	    echo " Usage: For example:: ./filename.sh num1 operator num2"
	    echo " Please pass the arguments in command line"
    esac
else
    #if arrgument is not equal 
    echo " Usage: For example::   ./filename.sh number1 operator number2 ::Operator can be +,-,x,/ and %"
    echo " Please pass three arguments in commaind line"

fi

