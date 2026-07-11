#!/usr/bin/env bash
# finds the specified file
# sorts for the least amount of / indicating the shortest distance
# then takes the last few with tail 


#find . ~ -name "*.json" | awk '{print gsub("/","/"), $0}' | sort -rn | cut -d' ' -f2- | tail -10 | grep /

tailSize=10

if [ -z "$1" ]; then
	echo "Supply first parameter"
	exit
fi

if [ -z "$2" ]; then
	tailSize=$2
    # for some reason the this works
    # (the tailsize=$2)
fi

find . ~ -name "$1" | awk '{print gsub("/","/"), $0}' | sort -rn | cut -d' ' -f2- | tail -$2 
