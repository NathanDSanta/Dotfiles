#!/bin/bash

setxkbmap es &

xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.00

nitrogen --restore &

picom --daemon --experimental-backends &

pulseaudio --start &

nm-applet &

pamixer -m &