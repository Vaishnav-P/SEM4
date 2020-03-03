#!/bin/bash
echo "Enter a number";
read number;
temp=$number;
revv=0;
while [ $number != 0 ]
do
	dig=$(( $number % 10 ));
	revv=$(( $revv*10 + $dig ));
	number=$(( $number / 10));
done
if [ $temp == $revv ]
then
echo "PALINDROME";
else
echo "NoT PALINDROME";
fi
