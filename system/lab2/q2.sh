echo "Enter the size of the array";

read size;

declare -a array;

i=0;

while [ $i -lt $size ] 
do

read array[$i];
i=$(($i+1));

done

echo "Enter the new position and element to enter"

read pos;

read num;

i=0;

newsize=$(( $size + 1 ));

while [ $newsize -gt $pos ] 
do
prev=$(( $newsize - 1 ));

array[$newsize]=${array[$prev]}
newsize=$(( $newsize - 1 ))
done

array[$pos]=$num;

echo ${array[*]}