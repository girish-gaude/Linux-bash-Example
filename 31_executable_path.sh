<<comments
Author: Girish Gaude
Date: 6/Nov/2019
Desciption: For each directory in the PATH, display the number of executable files in that directory.

Requirements: -
1. Fetch each directories from PATH variable.
2. Use -x option if if condition to check executable permission.
3. Print directory and number of executable files one-by-one.
4. Print the total number of executable files at last.
5. Count only files have executable permission.
6. Verify path is present every-time.

Sample execution: -
1. ./32_executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbincurrent count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445

Input: read from PATH
Output: Print given execuitable file
comments

#!/bin/bash

arr=(`echo $PATH | tr : ' '`)		    #read path and store in array
total=0
for i in ${arr[@]}			    #start loop
do
    count=0				    #variable count to zero
    for j in `ls $i`			    #chech each file 
    do
	if [ -x $i/$j ]			    #check file is executable
	then
	    count=$count+1		    #increament count
	fi
	total=$(($total+$count))	    #add count to total 
    done
done
echo $total				    #print total
