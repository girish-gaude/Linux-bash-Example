<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to convert string to upper and lower case

    Requirements: -
    1. Provide a filename through command-line.
    2. Ask user for conversion Lower to Upper / Upper to Lower.

    Sample execution: -
    1. ./23_upper_lower.sh file.txt
    1 – Lower to upper
    2 – Upper to lower
    Please select option : 2
    WHAT IS OS?
    WHAT ARE THE DIFFERENT OS?
    WHEN IS OS USED?
    WHAT IS PARTITION AND ITS USE?
    HOW MANY PARTITIONS CAN BE DONE?

    2. ./23_upper_lower.sh file.txt
    1 – Lower to upper
    2 – Upper to lower
    Please select option : 1
    what is os?
    what are the different os?
    when is os used?
    what is partition and its use?
    how many partitions can be done?

    3. ./23_upper_lower.sh fle.txt
    Error : file is not
    
    4. ./23_upper_lower.sh file1.txt
    Error : No contents

    5. ./23_upper_lower.sh
    Error : Please pass the name through command line.

Input: Enter the directory in CL
Output: Delete all .swp file
comments

#!/bin/bash

if [ $# -eq 0 ]					    #Check file entered
then
    echo "Please pass the filename in CL"	    #error
else
    if [ -f $1 ]	
    then
	line=`cat $1 | wc -l`			    #count total line
	if [ $line -eq 0 ]			    #check file empty or not
	then
	    echo "ERROR: No content inside file"
        else
	    echo "Please select option: "
	    read opt				    #ask option to translate file
	    case $opt in
		1)
		   cat $1 | tr [a-z] [A-Z]	    #Uppercase
		   ;;
	       2)
		   cat $1 | tr [A-Z] [a-z]	    #Lowercase
		   ;;
	       *)
		   echo invaild input		    #Error
		   ;;
		esac
	fi
    else
	echo "$1 dosenot exist."		    #File doesnot exist
    fi
fi

