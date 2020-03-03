#!/bin/bash
echo "Program 3"

echo "ENter two numbers"

read num1
  
if [ $(($num1 % 2)) == 0 ]
then
	echo "Number is Even"
else
	echo "Number is Odd "
fi
