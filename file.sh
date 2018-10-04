#!/bin/bash

a=joe
if [[ $a == $"joe" ]];then
	echo hello;
elif [[ $a == "doe" ]]; then
	echo goodbye;
else
	echo "ni hao";
fi
