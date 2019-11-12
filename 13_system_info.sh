<<comments
Author: Girish Gaude
Date: 30/Oct/2019
Desciption: Program to print system information

	Requirements: -
	1. Provide a menu for user about what information he wants to check
	2. Using switch case display output for selected option.

Input: Ask the information
Output: Print the information
comments

#!/bin/bash

echo -n "Enter the choise: "		    #Ask for user input  
read choise				    #read input

echo Select the option:			    #Display various options to select from
echo 1. Currently logged users
echo 2. Your shell directory
echo 3. Home directory
echo 4. OS name and version
echo 5. Current working directory
echo 6. Number of users logged in
echo 7. Show all available shells in your system
echo 8. Hard disk information
echo 9. CPU information.
echo 10. Memory information.
echo 11. File system information.
echo 12. Currently running process

case $choise in				    #Check the input and display information
    1)
	echo "Currently logged users: "
	whoami				    #logged user
	;;
    2)
	echo "Your Shell directory: "
	echo $SHELL			    #Detail of shell
	;;
    3)
	echo "Home directory: "
	echo $HOME			    #Display home directory
	;;
    4)
	echo "OS name and version: "
	uname -a			    #Display Os details
	;;
    5)
	echo "Current working Directory: "
	pwd				    #Display current working Dir
	;;
    6)
	echo "Number of user logged in: "
	who -q				    #Display number of user logged in
	;;
    7)
	echo "Show all available shells in your systems: "
	cat /etc/shells			    #Display all shells on sys
	;;
    8)
	echo "Hard Disk Information: "
	free -h				    #Display Drive space
	;;
    9)
	echo "CPU information"
	cat /proc/cpuinfo		    #Display CPU info
	;;
    10)
	echo "Memory information"
	cat /proc/meminfo		    #Display memory info
	;;
    11)
	echo "File System information"
	df				    #Display system files
	;;
    12)
	echo "current running program"
	ps				    #Display running progms
	;;
    *)
	echo "Invaild input"		    #Error
	;;


esac

