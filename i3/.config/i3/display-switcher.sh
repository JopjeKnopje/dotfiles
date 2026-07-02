#!/bin/bash
# Run with
# rofi will call this script without any args, then it will rerun the script with the selected option as arg
# rofi -show ws -modes "ws:/home/jopjeknopje/dotfiles/i3/.config/i3/display-switcher.sh"

SCRIPT_DIR=$(dirname -- ${BASH_SOURCE[0]})
DISPLAY_DIR="${SCRIPT_DIR}/display"

# if we pass args
if [ $# -gt 0 ]
  then
	bash "${DISPLAY_DIR}/$1.sh"
	exit $?
fi

for f in "${DISPLAY_DIR}"/*
do
	s=${f##*/}
	echo "${s%.*}"
done
