#!/bin/bash
echo "Enter a number";
read number;
revv=0;
while [ $number != 0 ]
do
	dig=$(( $number % 10 ));
	revv=$(( $revv*10 + $dig ));
	number=$(( $number / 10));
done
echo "Reverse: $revv";
