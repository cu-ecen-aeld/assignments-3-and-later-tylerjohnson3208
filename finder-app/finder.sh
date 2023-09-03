#!/bin/bash

if [ $# -ne 2 ]
then
	echo
	echo "Usage: $0 <full path to file> <search string>"
	echo
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
	echo
	echo "$filesdir is not a directory"
	echo
	exit 1
fi

files=$(grep -r $searchstr $filesdir/* | cut -d':' -f 1 | uniq | wc -l)
count=$(grep -r $searchstr $filesdir/* | wc -l)

### First iteration; doesn't do all files. Change to one liners above.
#for i in $(ls $filesdir/*); do
#	if [ -f $i ]
#	then
#		nmatch=$(grep -n $searchstr $i | wc -l)
#		files=$((files+1))
#		if [ $nmatch -gt 0 ]
#		then 
#			count=$((count+$nmatch))
#		fi
#	fi
#done

echo "The number of files are $files and the number of matching lines are $count"
