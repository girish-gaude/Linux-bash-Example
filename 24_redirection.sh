<<comments
Author: Girish Gaude
Date: 30/Oct/2019
Desciption: Program to print infinite feedback loop

Requirements: -
1. The final output becomes the input again to the command line.
2. Be alert, remember to stop this command before it fills your hard disk.
3. Look at the documentation for the tail command

Sample execution: -
1. ./redirection.sh
Before loop file contents
Hai hello
After loop file contents
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
.
.
.

Input: Read file 
Output: print loop infinite times
comments

#!/bin/bash
    tail -f data.txt >> data.txt | tail -f data.txt	#Read File and overwrite file

