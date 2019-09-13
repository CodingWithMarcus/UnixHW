#!/bin/bash

mkdir first
mkdir second

echo enter the amount of files you would like to use
read limit

let split=$limit/2


for((n=1; n <= $limit; n++));	do
filename=file$n.txt
touch $filename

if [[ $n -le $split ]];	then
	mv file$n.txt ~/Desktop/hw1/first

else
	mv file$n.txt ~/Desktop/hw1/second
fi
done




