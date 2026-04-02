#!/usr/bin/bash

# How to use
# 1. Set the IP address of your scope.
# 2. Tweak the `FILE_NAME` if you'd like.
# 3. Letsgoo!

IP=192.168.1.200

DATE=$(date +"%d-%m-%Y-%T")
FILE_NAME="scope-${DATE}.png"


DIR=$(mktemp -d)
FILE_PATH="${DIR}/${FILE_NAME}"

# Remove my xclip alias to type out the entire xclip command.
unalias xclip 2>/dev/null

FRAMES=5

if [ "$1" = "gif" ]; then
	if [ ! -z $2 ]; then
		FRAMES=$2
	fi
	echo -e "recording gif, frames: ${FRAMES}\n"

	for i in $(seq 1 $FRAMES)
	do
		echo ":DISPLAY:DATA? ON,OFF,PNG" | nc -w1 ${IP} 5555 | dd bs=1 skip=11 of="${DIR}/$i.png"
		sleep 1
	done
	
	FILE_PATH="${DIR}/scope-anim.gif"
	ffmpeg -r 1.5 -i "${DIR}/%01d.png" "$FILE_PATH"
	echo -e "\n"
	xclip -selection clipboard -t image/png -i ${FILE_PATH}


else
	echo ":DISPLAY:DATA? ON,OFF,PNG" | nc -w1 ${IP} 5555 | dd bs=1 skip=11 of="${FILE_PATH}"
	if [ "$1" = "feh" ]; then
		feh ${FILE_PATH}
		exit
	else
		xclip -selection clipboard -t image/png -i ${FILE_PATH}
	fi

fi

echo "Save the screenshot/GIF in $PWD? Y/n"

read ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
	mv $FILE_PATH . -v
fi
