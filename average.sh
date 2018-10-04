if [ $# -ne 3 ]
then
	echo "Not enough arguments are provided!! ";
else
		sum=$(($1+$2+$3));
		echo "$(($sum/4))";
fi
