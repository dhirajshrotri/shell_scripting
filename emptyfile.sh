#!/bin/bash
#set rental to unkown
if [[ -z $1 ]]; then
	rental="*** Unkown vehicle ***"
elif [[ -n $1 ]]; then
	rental=$1
fi

#use case statement to make decision for rental

case $rental in
	"car" ) echo "For $rental rental is Rs. 20 per km";;
	"van" ) echo "For $rental rental is Rs. 10 per km";;
	"jeep" ) echo "For $rental rental is Rs. 5 per km";;
	"bicycle" ) echo "For $rental rental is 3 paisa per km";;
	"enfield" ) echo "For $rental rental is Rs. 5 per km";;
	*) echo "Sorry I don't have a rental for you";;
esac

