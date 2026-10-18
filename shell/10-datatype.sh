#!/bin/bash
var1=10
var2=20
var3=30
echo "$var1+$var2"
echo "$(($var1+var2))"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=10;
COUNT=COUNT+1
echo "$COUNT"

Fruits=("Apple" "Banana" "papaya")
echo "all fruits: ${Fruits[@]}"
echo "First Fruits: ${Fruits[0]}"
echo "Second Fruits: ${Fruits[1]}"
echo "Third Fruits: ${Fruits[2]}"


