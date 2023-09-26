#!/bin/bash

if [ $1 -z ]; then

	read -p "Enter  name of your file:" file
	filename=$file

else
	filename=$1
fi

fileext=${filename##*.}
echo "$fileext"

case $fileext in
	gz)gunzip $filename;;
	bz2)bunzip2 $filename;;
	xz)unxz $filename;;
	tar)tar xf $filename;;
	*) echo "Error";;
esac
