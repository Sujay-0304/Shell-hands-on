
# set -x
ls fileName.sh
if [ $? -eq 0 ]; then
    echo "File exists"
else
    echo "File does not exist"
fi


cd testdir
case $? in
    0) echo "Directory created successfully." ;;
    *) echo "Failed to create directory." ;;
esac