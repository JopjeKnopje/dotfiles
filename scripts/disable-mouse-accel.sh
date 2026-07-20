#!/bin/bash

export XAUTHORITY=/run/user/1000/gdm/Xauthority
export DISPLAY=$(ls /tmp/.X11-unix | tr 'X' ':')

# wait for device to become registered, otherwise xinput will fail
sleep 2

for id in $(xinput list | grep -i "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop "$id" 'libinput Accel Profile Enabled' 0, 1, 0 || true; done
