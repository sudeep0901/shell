# read input
# read -p "please Enter your input:" input

read -p "please Enter your input:" note

# topic=$1

topic="$1"

# filename=${topic}notes.txt
# filename="${topic}"notes.txt

filename="${topic}notes.txt"

echo $filename
# echo $(date), $note >> notes.txt
# echo $(date), $input >> ${topic}notes.txt
# echo $(date), $note >> $filename
# echo $(date), $note >> "$filename"
echo "$date, $note" >> "$filename"

cat ${topic}notes.txt
echo Note '$note' saved to $filename
echo Note \'$note\' saved to $filename
echo "Note '$note' saved to $filename"

# ./userinput.sh  "shopping list"