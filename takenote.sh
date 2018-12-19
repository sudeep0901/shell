#!/bin/bash

# echo $1 >> ./notes.txt
# saves whole line from input
echo $(date): $* >> ./notes.txt
echo Notes saved: $*

filename="test.txt"

touch $filename
echo testing file >> $filename
cat $filename
rm $filename

# creating multiple file

files="file1 file2"
touch $files
ls -l $files
# cat $files
rm $files

greeting="Hello, "
echo $greeting  $USER

grt="$greeting $USER"
echo $grt