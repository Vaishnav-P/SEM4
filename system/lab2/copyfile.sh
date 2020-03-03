#!/bin/bash
file1=$1
file2=$2
str1=$(cat "$file1")
str2=$(cat "$file2")
if [[ $str1 == $str2 ]]
then
str3=`echo $str1 | rev` 
echo $str3 > $file2
else
str1=${str1^^}
echo $str1 > $file1
fi
