echo "directory" $0 
echo "file" $1
echo "file" $2
echo "file" $3
echo "file" $* #All arguments as a single string ("$1 $2 $3 ...")
echo "file" $@ #All arguments as a list ("$1" "$2" "$3" ...)
echo "number of arguments" $# 
echo "last argument" $_
echo "exit status" $?
echo "process id" $$ 
