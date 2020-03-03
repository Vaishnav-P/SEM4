echo "Enter filename"
read filename

if [ -e $filename ]
then
echo "Exists"
else
echo "Does not Exist"
fi
if [ -r $filename ]
then
echo "readable "
fi
if [ -w $filename ]
then
echo "writable"
fi
