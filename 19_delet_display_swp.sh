<<comments
Author: Girish Gaude
Date: 31/Oct/2019
Desciption: Program to delete all .swp file in directory

    Requirements: -
    1. Find and delete all .swp files (Temperory vi files).
    2. If command-line directories are passed delete only from that directories
    3. If no arguments passed delete from entire ~/ directory
    4. If no file present show a message.

    Sample execution: -
    1. ./20_delete_display_swp.sh
    swp file found :
    /home/user/ConventionalMethod/.pic16F887.as.swp
    /home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
    /home/user/Development/LDD/.expt_drv.c.swp
    /home/user/Development/LDD/.ddk_block.c.swp
    2. ./20_delete_display_swp.sh
    swp files not found.
    3. ./20_delete_display_swp.sh test_swp
    No swp files found in test_swp.

Input: Enter the directory in CL
Output: Delete all .swp file
comments

#!/bin/bash
dir=$1
echo $dir				    #enter directory

if [ $# -eq 0 ]				    #check user enter input or not
then
    var=`find ~ -name *.swp`  	    #Find all files with .swp extension
   echo $var	    				    #display files
else
    echo $var
   var=(`find $dir -name *.swp`)		    #Find files with .swp
    if [ ${#var[@]} -eq 0 ]
    then
	echo  No swp files
    else
	var=`find $dir -name *.swp`		    #Find files with .swp
	echo "Before"
        var1=`find $dir -name *.swp -delete`     #Delet .swp file
        echo "After:  $var1"
    fi
fi

