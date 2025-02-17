
set -e

echo "someting" 
count=0
while [ $count -lt 3 ]
do
    eco "Count is $count"
    ((count++))
done

set +e

echo "someting noting"