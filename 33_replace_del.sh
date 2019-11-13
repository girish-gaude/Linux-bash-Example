<<comments
Author: Girish Gaude
Date: 6/Nov/2019
Desciption: Write a script to replace 20% lines in a C file randomly and replace it with the pattern DELETE.

Requirements: -
1. Provede a .c file to this script through command-line.
2. Check the given file is exist or not and check it is having some contents
or not.
3. Randomly delete 20% lines from the file.
4. Where ever you deleted replace a string
<-----------Deleted------------>

Sample execution: -
1. ./33_replace<DEL>.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
printf(“Hello world\n”);
}
After replaced
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}

2. ./33_replace<DEL>.sh main1.c
Error : No such a file.

3. ./33_replace<DEL>.sh main2.c
Error : main2.c is empty file. So can’t replace the string.

4. ./33_replace<DEL>.sh
Error : Please pass the file name through command line.

Input: Read C file
Output: delete 20% line from file and replace it with delete
comments

#!/bin/bash
if [ $# -eq 0 ]				    #Check file entered in CLA
then
    echo Please enter the filename in CL
elif [ -f $1 ]				    #Check that file is present or not
then
    var=`cat $1 | wc -l`		    #count line in file
    
    if [ $var -eq 0 ]			    #Check file empty or not
    then
	echo file empty
    fi
    p=$(((20 * $var) / 100))		    #Take percentage of line
    

    for i in `seq 1 $p`			    #start a loop
    do
	shuffle=`shuf -i 1-$var -n 1`	    #choose random number from file
	echo random number is $shuffle	    

	sed -i "${shuffle} s/.*/<-------deleted------>/ " $1    #replace selected line and go in insert mode and replace line
	done

else
	echo No file exists		    #Error if no file

fi
