#!/bin/bash
bash ~/.dotfiles/scripts/hw/cpu-info.sh &
bash ~/.dotfiles/scripts/hw/gpu-info.sh &
waybar --config ~/.dotfiles/waybar/config.jsonc --style ~/.dotfiles/waybar/style.css &
hyprpaper --config ~/.dotfiles/hypr/hyprpaper.conf &
openrgb &
sleep 1 && hyprctl dispatch focusmonitor HDMI-A-2