<<comments
Author: Girish Gaude
Date: 6/Nov/2019
Desciption: Program to determine whether a given file system or mount point is mounted.

Requirements: -
1. Check that given file-system is mounted or not
2. If its mounted, print free-space available in it.
3. Other-wise print error message.

Sample execution: -
1. ./27_mounted_fs.sh /dev/sda2
File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
2. ./27_mounted_fs.sh /dev
/dev is not mounted.
3. ./27_mounted_fs.sh
Error : Please pass the name of the file-system through

Input: Input file system in CLA
Output: Print given file system or mount point is mounted or not. 
comments

#!/bin/bash
count=0
if [ $# -eq 0 ]								#Check for input
then 
    echo Please pass the file system in CLA
else
    name=( `df | tr -s " " | cut -d " " -f1 | sed '/Filesystem/d'` )	#cut and store filename in array
    mount=(`df | tr -s " " |cut -d " " -f6 | sed '/Mounted/d'`)		#store mount in array
    use=(`df | tr -s " " | cut -d " " -f3 | sed '/Used/d'`)		#store used space in array
    available=(`df | tr -s " " | cut -d " " -f4 | sed '/Available/d'`)  #store available space in array
    for i in `seq 0 $((${#name[@]}-1))`					#Start loop
    do
	if [ $1 = ${name[$i]} ]						#comapare input with array element
	then
	    echo ${name[$i]}						#print details
	    echo Filesystem ${name[$i]} is mounted on ${mount[$i]} and it having ${use[$i]} used space with ${available[$i]} free
	else
	    count=$(($count+1))						#increment till last
	    if [ $count -eq ${#name[@]} ]				#check till last element
	    then
		echo $1 not mounted					#dispay msg
	    fi
	fi
    done
fi
