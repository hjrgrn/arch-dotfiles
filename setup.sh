#!/usr/bin/env sh


dir=$HOME/.config/hypr

if [ -d $dir ]; then
    rm -r $dir
fi

cp -r hypr/ $dir

dir=$HOME/.config/waybar

if [ -d $dir ]; then
    rm -r $dir
fi

cp -r waybar $dir

echo "Hyprland has been configured."
