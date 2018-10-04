#!/bin/bash
#script to read a text file in bash

FILENAME=$1

count=0

while read LINE
do
	let count++
	grep "which contains exercises"
		if [[ $? ]]; then
			echo "$count $LINE"
		fi
done < $FILENAME

echo -e "\n Total $count lines read."