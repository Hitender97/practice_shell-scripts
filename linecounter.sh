#!/bin/bash
count=0
echo "Enter the absolute file path to calculate the number of lines present: "
read -r my_file
while in_line= read -r LINE
do
  count=$((count+1))
done < "$my_file"
echo "This file contains $count lines"



counter=0
echo "Enter the absolute file path to calculate the number of lines present: "
read -r my_file

while IFS= read -r LINE
do
  ((counter++))
done < "$my_file"

echo "This file contains $counter lines"


echo "Enter the absolute file path to calculate the number of lines present: "
read -r my_file

count=$(wc -l < "$my_file")

echo "This file contains $count lines"


echo "Enter the absolute file path to count the number of lines: "
read -r file_path

if [ -f "$file_path" ]; then
    line_count=$(wc -l < "$file_path")
    echo "The file contains $line_count lines."
else
    echo "File not found."
fi