<<comments
Author: Girish Gaude
Date: 23/Oct/2019
Desciption: Program to print chess board.

	Requirements: -
	1. To print a black box
	2. To print a white box
	3. Call the commands in a loop.
	4. After 8 columns make to normal color.
	5. To make it normal

	Sample execution: -
	1. ./12_chess_board.sh

Input: Enter the 8X8 loop
Output: Output of operation
comments

#!/bin/bash
num=8				    # 8x8 chess board

for i in `seq 1 $num`		    #Run the Loop 
do
    for j in `seq 1 $num`
    do
	temp=$((($i+$j)%2))	    #Check sum of each position even or odd
	if [ $temp -eq 0 ]
	then
	    echo -e -n "\e[47m" " " #print white space -e used to activate "\e"
	else
	    echo -e -n "\e[40m" " " #print black space
	fi
    done
    echo -e -n "\e[0m" " "	    #return to normal
    echo
done


    

