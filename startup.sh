#!/bin/sh

# Picom for terminal transparency
picom --config ~/.config/picom/picom.conf -b --experimental-backends --vsync

# Setting the external display to primary
xrandr --output HDMI-1 --mode 1920x1080 --rate 144.00 --left-of eDP-1 --primary --mode auto

# Wallpaper
nitrogen --restore

# Systray applets
nm-applet &
blueman-applet &

# Open terminal
kitty &
