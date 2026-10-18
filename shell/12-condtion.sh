#!/bin/bash

#Algorithm
#What is the marks
#If marks less than 35 then fail
#if marks less than or equals to 50 then third class
#if marks less than or equals to 60 then second class
#if marks less than  75 then first class
#if marks greater than or euals to 75 and less than or equal to 100 then distinction.
#if more than 100 its invalid marks

echo "Enter the marks"
read marks

if [$marks -lt 35];then 
echo "fail"
elif[$marks -le 50];then 
echo "Third class"
elif[$marks -le 60];then 
echo "second class"
elif[$marks -lt 75 ];then
echo "First Class"
elif[$marks -ge 75];then
echo "distinction"
else
echo "Invalid Marks"
fi