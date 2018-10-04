#!/bin/bash

fname="Sachin"
lname="Tendulkar"
POINTER_TEXT="100s/50s"
curl "https://en.wikipedia.org/wiki/$fname_$lname" -o centuries.txt #| sed -n '/<table*/,/<\/table>/p' centuries.txt>stats.txt 
sed -e 's/<[^>]*>//g' centuries.txt>stats1.txt
echo "$fname $lname"
cat stats1.txt | grep -A 1 "$POINTER_TEXT" | grep -v "$POINTER_TEXT"