<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to that takes any directorie in CLA and then lists the contents of each of these directories.

Requirements: -
1. This script will work like a ls command.
2. Don’t use ls command.
3. Pass any number of directories through command-line.
4. If no arguments passed, list current directory

Sample execution: -
Let assume your pwd is /home/user/ECEP/Linux_Systems/
1. ./28_output_ls.sh
Assignments Classwork

2. ./28_ouput_ls.sh ~ ~/ECEP
/home/user:
Downloads Documents Desktop Music Pictures Public Videos
ECEP
/home/user/ECEP:
Linux_Systems Advnc_C Linux_Internals Data_Structures MC

3. ./28_ouput_ls.sh Test
28_output_ls.sh: Cannot access ‘Test’ : No such a file or
directory.

Input: Enter the directories
Output: perform ls task
comments

#!/bin/bash

if [ $# -eq 0 ]		#Check entered user input
then
    echo *		#Print home Dir
else
    for i in $@		#user input dir
    do
	echo $i
	cd $i		
	echo *		#print dir
    done
fi

