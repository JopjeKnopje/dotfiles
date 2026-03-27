IP=192.168.1.200

DATE=$(date +"%d-%m-%Y-%T")
FILE_NAME="scope-${DATE}.png"

# Remove my xclip alias to type out the entire xclip command.
unalias xclip 2>/dev/null

echo ":DISPLAY:DATA? ON,OFF,PNG" | nc -w1 ${IP} 5555 | dd bs=1 skip=11 of=${FILE_NAME}
xclip -selection clipboard -t image/png ${FILE_NAME}
