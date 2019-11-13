<<comments
Author: Girish Gaude
Date: 5/Nov/2019
Desciption: Program to rename current working directory
	Requirements: -
	• After execting this script your current directory will be renamed		to given name
	• Pass new name through command-line.
Sample execution: -
Before executing the script let assume your current working directory is
$ pwd
/home/user/ECEP/Linux_Systems/Test_16

$ ./rename_cur_dir.sh Assign2
current directory will be renamed to Assign2

$ pwd
/home/user/ECEP/Linux_Systems/Test_16

$ ./rename_cur_dir.sh
Error : Please pass the new directory name

Input: Enter the new name in command line
Output: New DIR name
comments

#!/bin/bash
if [ $# -eq 0 ]				#Check CLA for input
then 
    echo "Please pass the new directory name"
else
    mv $PWD ../$1			#rename current working directory
fi
