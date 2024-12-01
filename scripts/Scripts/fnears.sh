#!/usr/bin/env bash

# runs fnear with added filesize support
# TODO Merge them into one script

if [ -z "$1" ]; then
	echo "Supply first parameter"
	exit
fi


ls -lrhS  $(~/Scripts/fnear.sh $1 $2) | awk '{print $5, $9}' | column -tc2

