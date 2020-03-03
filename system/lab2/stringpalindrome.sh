#!/bin/bashe
echo "Enter a string"
read string
strlen=${#string}
flag=0
for ((i=0,j=$strlen-1;i<=$strlen/2;i++,j--))
do
if [ ${string:i:1} != ${string:j:1} ]
then
flag=1
break;
fi
done

if [ $flag -eq 0 ]
then
echo "Palindrome"
else
echo " Not Palindrome"
fi