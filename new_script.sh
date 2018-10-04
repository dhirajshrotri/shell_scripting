#!/bin/bash
a=" "
echo "Give the name of the file to be executed: "
read var
echo "Give the name of the vehicle you want to rent: "
read vehicle

if [[ $var == $"emptyfile.sh" ]]; then
	chmod u+x $var;
	./$var$a$vehicle;
else
	echo "insert a correct file name";
fi