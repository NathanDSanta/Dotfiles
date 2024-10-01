#!/bin/sh
 
case "$1" in
    DP) xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.00 --output HDMI-1 --off --output DP-1-1 --off;;
    HDMI) xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 180.00 --output eDP-1 --off --output DP-1-1 --off;;
    DUAL) xrandr --output eDP-1 --mode 1920x1080 --rate 60.00 --output HDMI-1 --primary --mode 1920x1080 --rate 180.00 --left-of eDP-1 --output DP-1-1 --off;;
    TRIPLE) xrandr --output eDP-1 --mode 1920x1080 --rate 60.00 --output HDMI-1 --primary --mode 1920x1080 --rate 165.00 --left-of eDP-1 --output DP-1-1 --mode 1920x1080 --rate 120.00 --left-of HMDI-1 ;;
    *) printf '%s\n' "You must provide an argument: DP, HDMI, DUAL, TRIPLE..." ;;
esac