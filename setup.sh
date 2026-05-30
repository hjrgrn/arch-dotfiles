#!/usr/bin/env sh

sudo pacman -S hyprland alacritty noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-mononoki-nerd vlc pipewire wireplumber pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack pavucontrol xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland dolphin imv mpv playerctl brightnessctl nwg-look gnome-themes-extra qt6ct waybar ttf-jetbrains-mono-nerd hypridle hyprlock

# Optional dependencies, uncomment one of these

sudo pacman -S hyprlauncher dolphin mako

# sudo pacman -S rofi nemo dunst

readonly config="$HOME/.config"
readonly share="$HOME/.local/share"
readonly hypr="${config}/hypr"

if [ -d "$hypr" ]; then
    rm -r "$hypr"
fi

cp -r hypr "$config"

dir="${config}/waybar"

if [ -d "$dir" ]; then
    rm -r "$dir"
fi

cp -r waybar "$config"

dir="${config}/qt6ct/colors"

if [ -d "$dir" ]; then
    cp -r qt/* "$dir"
fi

dir="${share}/waybar_scripts"

if [ -d "$dir" ]; then
    rm -r "$dir"
fi

dir="./assets"

if [ -d "$dir" ]; then
    cp "${dir}/user.png" "${hypr}"
fi


cp -r waybar_scripts "$share"

sudo usermod -a -G input $USER

echo "Hyprland has been configured."
