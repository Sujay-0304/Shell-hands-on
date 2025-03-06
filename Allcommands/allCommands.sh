
# echo $(ls -la)
# echo $(cat sample.txt)
# echo $(pwd)
# echo $(less sample.txt)
# echo $(more sample.txt)
# echo $(head -2 sample.txt)
# echo $(tail -2  sample.txt)

#### grep command using regex 
# echo $(grep words sample.txt)
# echo $(grep -rin  error /var/log)   # -r is recursive,(alldirectories)  -i is case insensitive, -n is line number
# echo $(grep -rinw  error /var/log | wc -w)   # -r is recursive,(alldirectories)  -i is case insensitive, -n is line number -w is whole word
# echo $(grep -ori words /var/log| wc -w) # -o prints only the matching words 'wordsabc' or 'words' et...k
# printf "%s\n" $(grep -E "[a-zA-Z0-9]+/.[a-zA-Z0-9]+@[a-zA-Z0-9]+/.[a-zA-Z]+"  emails.txt) 
# grep -Eo "[a-zA-Z0-9._%+-]@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" emails.txt
# echo $(grep -Ew "words$" sample.txt)
# echo $(grep -oi words sample.txt | wc -w)
# printf "%s\n" $(grep -ro --include="*.log" "error" /var/log/)


#### awk command
# echo $(awk '{SUM+=$1} END {print SUM}' sample.txt)
# echo $(awk 'NR>=3 {print $1}' sample.txt)
awk -F "|" '{print $1}' emails.txt  #--> -F is used to specify the delimiter

#### sed command
# echo $(sed -i 's/1/2/' sample.txt)
# sed '4d' sample.txt
# echo $(sed -n '1,3p' sample.txt)
# sed '3i New Line' sample.txt
# sed -i 'i New Line' sample.txt
# sed  -i '/New Line/d' sample.txt
# echo "12-34-5698" | sed -E 's/(/d{2})-([0-9]{2})-([0-9]{4})/\3-\2-\1/' # () --> used for grouping the parts.





# echo $(cut -d " " -f 1 sample.txt)
# echo $(find ~/tutorial-bash/ -name "sample.txt") # find file in directory and outputs the path

