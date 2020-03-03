#!/bin/bash
echo "Enter a number";
read number;
fact=1;
while [ $number != 0 ] 
do
fact=$(($fact*$number));
number=$(($number - 1));
done

echo "Factorial:$fact";



