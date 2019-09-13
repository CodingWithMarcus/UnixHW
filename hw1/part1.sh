#!/bin/bash

echo enter the amount of files you would like to use: 
read limit

for((n=1; n <= $limit; n++));do
echo working on files...
touch file$n.txt
done
