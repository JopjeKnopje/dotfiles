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


echo ":DISPLAY:DATA? ON,OFF,PNG" | nc -w1 ${IP} 5555 | dd bs=1 skip=11 of=${FILE_PATH}
xclip -selection clipboard -t image/png ${FILE_PATH}
echo "Save the screenshot in $PWD? Y/n"

read ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
	mv $FILE_PATH . -v
fi
