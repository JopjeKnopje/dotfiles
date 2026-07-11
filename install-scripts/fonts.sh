#!/bin/bash
set -e

FONTS=(
	"https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip"
	"https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip"
)

DIR=$(mktemp -d)
JOINT_PATH=${DIR}/font.zip

echo ${DIR}
echo ${JOINT_PATH}

for f in "${FONTS[@]}";
do
	echo ${f}
	curl -L ${f} -o ${JOINT_PATH}
	unzip -o ${JOINT_PATH} -d ${DIR}
done;
ls ${DIR}

FONT_DIR=~/.local/share/fonts

mkdir -p ${FONT_DIR}

cp ${DIR}/* ${FONT_DIR} -v

fc-cache -fv


