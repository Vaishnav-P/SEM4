echo "Enter the size of the array";

read size;

declare -a array;

i=0;

while [ $i -lt $size ] 
do

read array[$i];
i=$(($i+1));

done

echo "Enter the position to delete"

read pos;
i=$pos;

while [ $i -lt $size ] 
do
next=$(( $i + 1 ));

array[$i]=${array[$next]}
i=$(( $i + 1 ))
done

echo ${array[*]}