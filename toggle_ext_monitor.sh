#!/bin/sh

# From
#   <https://wiki.archlinux.org/title/Xrandr>
#

intern=eDP-1
extern=HDMI-1 

if xrandr | grep "$extern disconnected"; then
#   xrandr --output "$extern" --off --output "$intern" --auto
    xrandr --output "$intern" --primary --auto --output "$extern" --same-as "$intern" --auto
else
    xrandr --output "$intern" --off --output "$extern" --auto
fi
