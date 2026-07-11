#!/bin/sh
xrandr \
	--output DP-1-1-1 --mode 2560x1440 --pos 0x0 --rotate left \
	--output DP-1-1-8 --primary --mode 2560x1440 --pos 1440x608 --rotate normal \
	--output eDP-1 --mode 1920x1080 --pos 4000x608 --rotate normal \
	--output HDMI-1 --off \
	--output DP-1 --off \
	--output DP-2 --off \
	--output DP-1-1 --off
