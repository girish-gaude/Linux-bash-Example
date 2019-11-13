<<comments
Author: Girish Gaude
Date: 25/Oct/2019
Desciption: Program to print contents of file from given line number to next given number of lines.

    Requirements: -
    1. Pass three command-line arguments
    2. 1- starting line number
    3. 2-number of lines and filename
    4. Script will print n lines from given starting line

    Sample execution: -
    1. /18_print_lines.sh 5 3 myfile.txt
    line number 5
    line number 6
    line number 7

    2. ./18_print_lines.sh myfile.txt
    Error: arguments missing!
    Usage: ./file_filter.sh start_line uptoline filename
    For eg. ./20_file_filter.sh 5 5 <file>

Input: Enter the line number
Output: print lines
comments

#!/bin/bash
line=`cat $3 | wc -l`				#Count the total lines in file
n=$(($1 + $2))					#Total num of user enter line
len=$(($n-1))					
if [ $line -gt $n ]				#Check number of line present in file with user enter line
then
    head -$len $3 | tail -$2			#Print lines
else
    echo "Error: Check the number of lines."	#Error msg
fi
