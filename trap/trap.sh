
# sigint
trap 'rm temp.txt; echo "temporary file deleted";exit' 2
count=0 
ls -la > temp.txt
while (( count < 10 ))    
do 
    echo "press ctrl+c to stop the loop"
    sleep 1
    ((count++))
done
