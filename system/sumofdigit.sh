#!/bin/bash
echo "Enter a number";
read number;
summ=0;
dig=0;
while [ $number != 0 ]
do
	dig=$(( $number % 10 ));
	summ=$(( $summ + $dig ));
	number=$(( $number / 10));
done
echo "sum: $summ";
