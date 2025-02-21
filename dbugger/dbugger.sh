
set -e

echo "someting" 
count=0
while [ $count -lt 3 ]
do
    ech "Count is $count"
    ((count++)) || true 
done

set +e

echo "someting noting"