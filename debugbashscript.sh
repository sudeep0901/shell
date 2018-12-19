#!/bin/bash -x

# user -x sing to debug script

read -p "please Enter your input:" note

topic="$1"
filename="${topic}notes.txt"
echo $filename
# set debugging
set -x
echo "$date, $note" >> "$filename"
cat "$filename"
echo "Note '$note' saved to $filename"

# stop debugging 
set +x
# ./userinput.sh  "shopping list"