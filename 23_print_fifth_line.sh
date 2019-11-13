<<comments
Author: Girish Gaude
Date: 25/Oct/2019
Desciption: Program to print Fifth line

    Requirements: -
    1. Pass the filename through command line.
    2. Check file is already exist or not and check the contents are available or not.
    3. If the no.of lines is less than 5 then print the error.

    Sample execution:
    1. ./25_print_fifth_line file.txt
    Fifth line of file.txt is line 5
    2. ./25_print_fifth_line file1.txt
    Error : file1.txt having only 2 lines. So can’t print 5 th line.
    3. ./25_print_fifth_line file2.txt
    Error : No such a file.
    4. ./25_print_fifth_line
    Error : Please pass the file name in command line.

Input: Enter the line number
Output: Print nth line
comments

#!/bin/bash
line=`cat $1 | wc -l`					    #count line number of file
if [ $# -eq 0 ]						    #check file entered by user
then
    echo "Please pass the file name in command line."
else
if [ $line -gt 5 ]					    #Check entered file has 5 lines
then
    head -5 $1 | tail -1				    #Print 5th line 
else
    echo "Error: $1 has only $line. So can't print 5th line." #Show error 
fi
fi
