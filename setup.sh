#!/usr/bin/env sh

sudo pacman -S hyprland alacritty noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-mononoki-nerd mako vlc pipewire wireplumber pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack pavucontrol xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland nemo imv mpv

readonly config="$HOME/.config"
dir="${config}/hypr"

if [ -d "$dir" ]; then
    rm -r "$dir"
fi

cp -r hypr "$config"

dir="${config}/waybar"

if [ -d "$dir" ]; then
    rm -r "$dir"
fi

cp -r waybar "$config"

echo "Hyprland has been configured."
