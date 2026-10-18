#!/bin/bash

#Algorithm
#Identify number is even or odd
#What is Number
# Number divisible by 2 , if remainder =0 then Even 
# If rmainder is NOT 0 then its ODD

#Psudo Code
#Start the program
#Get/Enter the Number
#Devide by 2 and get the number
#if [remainder is 0] 
#{   print even }
#else {     print odd }

echo "Enter the Number"
read number

if [(number%2) -eq 0];then
echo "even"
else
echo "odd"
fi