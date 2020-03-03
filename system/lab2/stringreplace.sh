echo "Enter The string to replace "
read str1
echo " Enter the string to replace with "
read str2
echo "Enter filename"
read file
replace()
{
    f=$1
    c=$2
    d=$3
    result=$( sed "s/$f/${c^^}/g" "$d" )
    echo "$result" > $d        

}
replace $str1 $str2 $file