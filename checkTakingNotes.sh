#!/bin/bash -x

# user -x sing to debug script

read -p "please Enter your input:" note

if [[ $note ]]; then
    topic="$1"
    filename="${topic}notes.txt"
    echo $filename
    echo "$date, $note" >> "$filename"
    cat "$filename"
    echo "Note '$note' saved to $filename"
else
    echo "No Input: note wasn't saved."
    # ./userinput.sh  "shopping list"
fi