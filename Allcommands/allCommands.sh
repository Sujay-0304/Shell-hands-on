
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
# echo $(grep -oi wordS sample.txt | wc -w) # -o prints only the matching words 'wordsabc' or 'words' et...k
# printf "%s\n" $(grep -E "[a-zA-Z0-9]+.[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-zA-Z]"  emails.txt) 
# grep -Eo "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" emails.txt
echo $(grep -Ew "words$" sample.txt)

# echo $(grep -oi words sample.txt | wc -w)
# printf "%s\n" $(grep -ro --include="*.log" "error" /var/log/)
# echo $(awk '{print $1 $2}' sample.txt)
echo $(sed 's/sujay/sujay1/' sample.txt)
# echo $(cut -d " " -f 1 sample.txt)
# echo $(find ~/tutorial-bash/ -name "sample.txt") # find file in directory and outputs the path

