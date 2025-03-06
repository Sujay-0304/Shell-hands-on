
# set -x
[ -f execute.sh ]
if [ $? -eq 0 ]; then
    ./execute.sh
else
    echo "File does not exist"
    ./notExecute.sh
fi


