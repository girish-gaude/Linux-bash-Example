<<comments
Author: Girish Gaude
Date: 23/Oct/2019
Desciption: Program to calculate the BMI
Input: Enter the weight and height
Output: BMI =      weight(Kg)
	     --------------------
	      height(m)*height(m)	
Then display the following information.
Underweight : less than 18.5
Normal : between 18.5 and 24.9
Overweight : between 25 and 29.9
Obese : 30 or greater
comments

#!/bin/bash
echo -n "Enter the Weight(Kg): "					#Enter weight
read weight
echo -n "Enter the Height(m): "						#enter height
read height

h=`expr "scale=2; $height * $height" | bc`				#calculate demo
bmi=`echo "scale=2; $weight / $h" | bc`					#calulation bmi
echo  "BMI: $bmi"
if [ `echo "$bmi < 18.5" | bc` -eq 1 ]					#Compre with conditon    
then 
    echo "Underweight"							#underweight
elif [ `echo "$bmi >= 18.5" | bc` -eq 1 -a `echo "$bmi < 24.9" | bc` -eq 1 ]
then
    echo "Normal"							#Normal
elif [ `echo "$bmi >= 25" | bc` -eq 1 -a `echo "$bmi < 29.9" | bc` -eq 1 ]
then
    echo "Overweight"							#overweight
elif [ `echo "$bmi >= 30" | bc` -eq 1 ]
    
then 
    echo "Obese"							#obese
fi


