#!/bin/bash
echo "Enter a number";
read num

for ((i=1; i<=10; i++))
do
echo "$i X $num :"$(($i*$num))
done
