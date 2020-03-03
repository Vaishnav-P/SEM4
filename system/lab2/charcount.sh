echo "Enter Filename"
read filename
if [ -a $filename ]
then
lc=0
flag=0
while read line; do
echo $line
lc=$(( $lc+1 ))
done < $filename
echo "Number of lines = $lc"
str=$(cat "$filename")
strlen=${#str}
wordcount=0
if [ $strlen > 0 ]
then
wordcount=1
fi
space=" "
specialchar=0
dcount=0
char=0
newline=$'\n'
for ((i=0;i<=strlen;i++))
do
    if [[ ${str:i:1} == $space ]]
    then
        if [[ ${str:i+1:1} != $space ]]
        then
        wordcount=$(($wordcount+1))
        fi
    elif [[ ${str:i:1} == $newline ]]
    then
        if [[ ${str:i+1:1} != $newline ]]
        then
        wordcount=$(($wordcount+1))
        fi
    fi
    ret=`echo ${str:i:1} | grep [@#$%*]`
    if [[ ${#ret} != 0 ]]
    then
    specialchar=$(($specialchar+1))
    fi
     if [[ ${str:i:1} = ['0'-'9'] ]]
    then
    dcount=$(($dcount+1))
    fi
    alpha=`echo ${str:i:1} | grep [a-Z]`
     if [[ ${#alpha} != 0 ]]
    then
    char=$(($char+1))
    fi

done
echo "Special character:$specialchar"
echo "Word Count:$wordcount"
echo "Alphabet Count:$char"
echo "Digits:$dcount"
fi