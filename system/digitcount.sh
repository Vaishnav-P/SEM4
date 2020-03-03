#!/bin/bash
echo "Enter a number";
read number;
count=0;
while [ $number != 0 ]
do
 number=$(($number/10));
 count=$(($count + 1));
done
echo "No 0f digit : $count";

