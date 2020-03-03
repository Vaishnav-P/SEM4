repeat='y'
while [ $repeat == y ]
do

    echo "Enter two numbers"
    read num1
    read num2
    echo " Enter the arithmetic operation (+-/*) "
    read operation
    case $operation in
    +) echo $(($num1+$num2));;
    -) echo $(($num1-$num2));;
    /) echo $(($num1/$num2));;
    *) echo $(($num1*$num2));;
    esac
    echo "Do you wish to continue(y/n) ?"
    read repeat
done