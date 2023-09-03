#!/bin/bash

if [ $# -ne 2 ]
then
	echo
	echo "Usage: $0 <full path to file> <search string>"
	echo
	exit 1
fi

writefile=$1
writestr=$2

if [ ! -d $(dirname $writefile) ]
then
	mkdir -p $(dirname $writefile)
fi
touch $writefile
echo $writefile
echo $?

if [ $? -gt 0 ]
then
	echo
	echo "Could not access or create $writefile"
	echo
	exit 1
fi

echo $writestr >> $writefile
