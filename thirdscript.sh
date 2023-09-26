#!/bin/bash

if [ -z $1 ]; then
        read -p "Enter your IP: " ipenter
        ip=$ipenter
else
        ip=$1
fi
IFS='/' read -r -a array <<< "$ip"
subnet=$"${array[1]}"
if [ -z $subnet ]; then
	fping "$ip"
else
	fping -g -r 1 "$ip"
fi
