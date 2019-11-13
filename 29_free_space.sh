<<comments
Author: Girish Gaude
Date: 6/Nov/2019
Desciption: Display the names of any file-system which have less than 10% free space available.

Requirements: -
1. When you run the script show all file-system present in system.
2. Then print file-systems that have only 10% memory remaining.

Sample execution: -
1. . /29_free_space.sh
Filesystem /dev/sda5 have less than 10% freespace

Input: Input file name
Output: Print given file space less or not
comments

#!/bin/bash
name=(`df | tr -s " " | cut -d " " -f1  | sed '/Filesystem/d'`)		    #store username and used space in array
use=(`df | tr -s " " | cut -d " " -f5 | sed '/Use%/d' | tr -d [:punct:]`)
for i in `seq 0 $((${#use[@]}-1))`					    #start loop
do
    if [ $((${use[$i]})) -gt 90 ]					    #check each file space more the 90 or not
    then
        echo Filesystem ${name[$i]} have less than 10% space free	    #if yes print file
    fi
done
	echo No Filesystem have less than 10% space free		    #print when no file present
