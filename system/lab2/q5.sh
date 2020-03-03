echo "Enter two numbers"
read num1
read num2

echo " Number1  before swap :"$num1
echo " Number2 before swap :"$num2

swap()
{
    temp=$(($1));
    temp1=$(($2));
   
}
swap $num1 $num2

echo " Number1  After swap :"$num1
echo " Number2 After swap :"$num2
