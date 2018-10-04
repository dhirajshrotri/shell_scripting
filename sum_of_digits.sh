#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Usage: $0 number"
	echo "       I will find the sum of all digits"
    echo "       For eg. $0 123, I will print 6"
    exit 1
fi

n=$1
total=0
sd=0

while [ $n -gt 0 ]
do
    sd=`expr $n % 10`
    total=`expr $total + $sd`
    n=`expr $n / 10`
done
    echo  "Total sum of all digits is $total"