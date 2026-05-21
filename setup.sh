#!/usr/bin/env sh

sudo pacman -S hyprland alacritty noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-mononoki-nerd vlc pipewire wireplumber pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack pavucontrol xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland dolphin imv mpv playerctl brightnessctl nwg-look gnome-themes-extra qt6ct waybar

# Optional dependencies, uncomment one of these

sudo pacman -S hyprlauncher dolphin mako

# sudo pacman -S rofi nemo dunst

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
