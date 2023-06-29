#!/bin/bash

#Correct way to parse the file in while loop without starting the 2nd shell. Here we are directly passing the file and it will improve performace as compare to 2nd method.
count=0
while read LINE
do
    count=$((count+1))
done < networkcheck.sh
echo "total number of lines in this file is $count"

#In Below method 1 shell will be till cat $file and 2nd shell will be while loop. After done the echo will also be in 1st shell  therefore you will get 0 count.
#also this is not recommanded method to parse the file in while loop as this use extra steps compared to 1st method that is cat and pipe this will degrade the performance of script if file size is large
file="networkcheck.sh"
counter=0

cat $file | while read LINE
do
    counter=$((counter+1))
done

echo "File $file has $counter lines"

