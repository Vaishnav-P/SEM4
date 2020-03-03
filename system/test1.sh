#!/bin/bash
echo "Program 2"

echo "ENter two numbers"

read num1

read num2
  
if [ $num1 != $num2 ]
then
	echo "Numbers are not the same"
else
	echo "Numbers are the same "
fi
