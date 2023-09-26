#!/bin/bash

if [ -z $1 ]; then
	read -p 	"Enter your path: " path
	pathname=$path
else
	pathname=$1
fi
echo -n "Directories: "
find $pathname -maxdepth 1 -type d | wc -l
echo -n "Files: "
find $pathname -maxdepth 1 -type f | wc -l
