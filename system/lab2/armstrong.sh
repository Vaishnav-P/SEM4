nofdigits()
{

count=0;
number=$1;
while [ $number != 0 ]
do
 number=$(($number/10));
 count=$(($count + 1));
done
return $count;
}


armstrong()
{
    echo " Enter the number "
    read num
    `nofdigits $num`
    count=$?
    echo $count
    temp=$num
    sum=0
    while [ $num != 0 ]
    do
    rem=$(( $num % 10 ))
    sum=$( echo "$sum + $rem ^ $count" | bc )
    num=$(( $num / 10 ))
    done
    echo $sum
    if [ $sum -eq $temp ]
    then
    echo "Armstrong"
    else
    echo " Not Armstrong "
    fi

}

armstrong