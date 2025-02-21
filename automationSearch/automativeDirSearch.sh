#!/bin/bash
echo "Enter the directory name"
read dir

echo "Enter the target text"
read text

if [ -z "$dir" ]; then  
    dir="/"
fi

if [ -z "$text" ]; then
    text="text"
fi

grep -r "$text" $dir
