#!/bin/bash
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal 
sleep 2
xrandr --output eDP-1 --off

HOST=$(hostname)
SCRIPT_DIR=$(dirname -- ${BASH_SOURCE[0]})
bash "${SCRIPT_DIR}/active"

sleep 2
bash "${SCRIPT_DIR}/../init-setting.sh" background

