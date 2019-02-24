#!/bin/bash
WALLPAPER=~/.i3/wallpaper
if [ -z $1 ]; then
    echo "Using previous wallpaper..."
else
    echo "Using new wallpaper $1 ..."
    cp $1 $WALLPAPER
fi
echo "Setting background image..."
feh --bg-fill $WALLPAPER

echo "Setting lockscreen image..."
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libasan.so.4 betterlockscreen -u ~/.i3/wallpaper 2&> /dev/null
