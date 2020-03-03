#!/bin/bash

echo "Enter the size of the array";

read size;

declare -a array;

i=0;

while [ $i -lt $size ] 
do

read array[$i];
i=$(($i+1));

done

index=0;
even=0;
odd=0;
while [ $index -lt $size ]
do
 num=${array[$index]};
 rem=$(( $num % 2 ));
 if [ $rem -eq 0 ]
 then
  even=$(( $even + $num ));
 else
 odd=$(( $odd + $num ));
fi
index=$(($index+1));
done
echo ${array[*]};

echo " Even sum :"$even;
echo " Odd sum :"$odd;