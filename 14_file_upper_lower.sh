<<comments
Author: Girish Gaude
Date: 6/Nov/2019
Desciption: Program to rename a file/directory replaced by lower/upper case letters.

WARNING: Dont try this in your home/ directory.
Please create a seperate directory to test this script.
	
	Requirements: -
	1. Rename all files from current directory to lowercase letters.
	2. Rename all directories from current directories to uppercase.
	3. Digits and other symbols should remain same.

	Sample execution: -
	Before running the script
	$ ls
	File.txt MyScript.SH MyFile007.txt dir/ Datafile/ newfolder/
	$ ./15_file_upper_lower
	Files are rename in lowercase and directories are renamed in upper case
	$ ls
	file.txt myfile007.txt myscript.sh DIR/ Datafile/ NEWFOLDER/

Input: Store program in perticular directory
Output: Make directory name Uppercase and file Lowercase
comments

#!/bin/bash
list=(`ls -l | tr -s " " | cut -d " " -f9`)	    #put file name in array
arr=(`ls -l | cut -c1 | sed '/t/d'`)		    #cut first letter of file to check dir or file
echo ${list[@]}
#echo ${arr[@]}
#for i in `ls` 
#do
for i in `seq 0 $((${#arr[@]}-1))`		    #Start loop
do
    if [ "${arr[$i]}" = "d" ]			    #Check if first character is "d"
    then
	echo ${list[$i]} | tr [a-z] [A-Z]	    #Convrt to large
	
    else
	echo ${list[$i]} | tr [A-Z] [a-z]	    #convert to Small

    fi
done
echo succesfully converted



