<<comments
Author: Girish Gaude
Date: 4/Nov/2019
Desciption: Program to delete empty lines from a file
	    
	    Requirements: -
	    • Pass a filename through command-line.
	    • Delete all the empty lines from that file and save it back.
	    • Use sed command to do this

	    Sample execution: -
	    1. ./08_delete_empty_lines.sh file.txt
	    Empty lines are deleted.
	    
	    2. ./08_delete_empty_lines.sh
	    Error: Please pass the file name through command line.

	    After this all empty lines must be deleted from given file.

Input: Read file in CLA
Output: Delete Space from file
comments

#!/bin/bash
if [ $# -eq 0 ]					    #Check CLA empty or not
then 
    echo "ERROR: Please enter filename in CLA"	    #Print ERROR msg
else
    cat $1 | tr -d [:blank:] | sed '/^$/d' > file1.txt  #Read file, Delete space in empty line, delete empty line
    cat file1.txt				    #Read file
    
fi
