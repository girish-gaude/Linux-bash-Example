<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to locks down file permissions for a particular directory.

Requirements: -
1. Remove all permissions for groups and others.
2. Provide directory name through command-line.
3. After running script all files in the given directory, Only should have all the permissions.
4. But remember dont add any permission to user only change to others
and groups.

Sample execution: -
1. ./29_lock_permissions.sh Dir/

Before locking
total 0
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file1
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file2
-rw-rw-r-- 1 biju biju 0 Jun 8 12:37 D2file3

After locking
total 0
-rw------- 1 biju biju 0 Jun 8 12:37 D2file1
-rw------- 1 biju biju 0 Jun 8 12:37 D2file2
-rw------- 1 biju biju 0 Jun 8 12:37 D2file3

2. ./29_lock_permissions.sh
Error : Please pass the directory in command line

Input: Enter the directories in CL
Output: Lock the permission of group and others
comments

#!/bin/bash
dir=$1					#Insert dir in CLA		    
if [ $# -ne 0 ]				#Check the Inserted DIR
then
    echo "Befor: "			#Previous file
    ls -l $1

    echo "Aftre: "  
    chmod -R go-rwx $dir		#Change group and others permision
    ls -l $1
else
    echo "ERROR: Pass the DIR in CL"	#error
fi

