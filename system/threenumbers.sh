#!/bin/bash
echo "Enter  three numbers";
read number1;
read number2;
read number3;

if [ $number1 -ge $number2 ] && [ $number1 -ge $number3 ]
then
echo "Greatest: $number1";
elif [ $number2 -ge $number1 ] && [ $number2 -ge $number3 ]
then
echo "Greatest: $number2";
else
echo "Greatest: $number3";
fi
