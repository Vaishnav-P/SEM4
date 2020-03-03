echo "Enter the limit for prime number generation "

read limit

if [ $limit -ge 2 ]
then
echo "2"
fi

for (( i=3; i<=limit; i++ ))
do
    num=$(( $i/2 ))
    flag=0
    for (( j=2; j<=num; j++ ))
    do
        if [ $(( $i % $j )) == 0 ]
        then
          flag=1;
          break;
        fi  
    done
    if [ $flag -ne 1 ]
    then
     echo $i
    fi

done