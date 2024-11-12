#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Missing arguments. Usage: writer.sh <file-path> <text-string>"
    exit 1
fi

writefile="$1"
writestr="$2"

dirpath=$(dirname "$writefile")

mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
    echo "Error: Could not create directory path '$dirpath'."
    exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to '$writefile'."
    exit 1
fi

echo "Successfully wrote to $writefile"
