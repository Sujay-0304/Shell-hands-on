
# //using test method 
name="sujay" 
if test $name = 9 
then
    echo "Name is sujay"
else
    echo "Name is not sujay"
fi

# // using [] method 

if [ $name = "9" ];then
    echo "Name is sujay"
else
    echo "Name is not sujay"
fi
# // using [[]] method  this allows to play with patterns 
if [[ $name == *"jay" ]];then
    echo "Name is sujay"
else
    echo "Name is not sujay"
fi

count=0

while [ $count -lt 10 ]
do
    echo "Count is $count"
    ((count++))
done