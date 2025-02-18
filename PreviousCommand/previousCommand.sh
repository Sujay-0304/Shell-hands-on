
# set -x
ls fileName.sh
if [ $? -eq 0 ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
