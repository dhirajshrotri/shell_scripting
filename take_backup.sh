#!/bin/bash

echo "Name of the directory to take the backup: "
read name
ls | grep $name 
if [[ $? ]]; then
	echo "You have entered a valid name";
	mkdir ../backup;
	if [[ $? ]]; then
		echo "Backup folder created successfully...";
		cp -r ../test_scripts/ ../backup;
		echo "Files copied successfully.."
		cd ..;
		tar -zcvf backup.tar.gz backup;
		rm -rf backup;
	fi
else
	echo "The name entered is not correct. Enter a valid name.";  
fi
