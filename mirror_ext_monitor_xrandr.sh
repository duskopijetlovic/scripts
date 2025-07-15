#!/bin/sh

# Based on 
#   <https://wiki.archlinux.org/title/Xrandr>
#
# Date: Jul 15, 2025

intern=eDP-1
extern=HDMI-1 

xrandr --output "$intern" --primary --auto --output "$extern" --same-as "$intern" --auto
