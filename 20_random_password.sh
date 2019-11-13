<<comments
Author: Girish Gaude
Date: 30/Oct/2019
Desciption: Program for generating random 8-character passwords including alphanumeric characters

    Requirements: -
    1. Every time a new password must created.
    2. Password must contains a alpha-numeric and special characters.

    Sample execution: -
    1. ./21_random_password.sh
    nH@Rh0Pv
    O8ug&HfD
    ro0IUJ4f
    wx!Kox3U
    i3?BkomA
    S89R%OA3
    #e3v8PzS
    d?F8TEo6
    Lrb-qvl9
    T!ilf1C5

Input: Read dev/urandom directory
Output: Print 8-Character Passwards
comments

#!/bin/bash
for i in `seq 1 10`					#start loop for 8-character passwd
do
    cat /dev/urandom | tr -dc [:print:] | head -c 8	#Print only the 8 character of file 
    echo
done

