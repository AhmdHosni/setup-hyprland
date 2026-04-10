#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-hyprland.sh
# Created:       Sunday, 29 March 2026 - 01:48 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:   This script installs Hyperland with the required packages
#--------------------------------------------------------------------------------

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

#!/bin/bash

echo "Which Window Manager do you want to install ?"
echo "  1) hyprland"
echo "  2) sway"
# read the input and save it in choice variable
read -p "Enter choice [1-2]: " choice

case "$choice" in
1)
    show_title "Installing Hyprland"
    install_package "hyprland" "Hyprland: This is The main Window Manager"
    ;;
2)
    show_title "Installing Sway"
    install_package "sway" "Sway: This is The main Window Manager"

    ;;
*)
    echo
    "Invalid option"
    exit 1
    ;;
esac

show_title "Installing other required packages"

# install_package "hyprland" "Hyprland: This is The main Window Manager"

install_package "kitty" "Kitty Terminal: works best with Hyprland with lots of excellent options"

install_package "swaync" "SwayNC: An application that creates beutiful notification "

install_package "waybar" "Top Toolbar -  works well with hyprland"

install_package "rofi" "Rofi: A window switcher, application launcher, run dialog, ssh-launcher and dmenu replacement"

install_package "swww" "Swww: gives you beutiful animation when changing the background"

install_package "grim" "Grab images from a Wayland compositor. Works great with slurp  for Screen shots"

install_package "slurp" "Select a region in a Wayland compositor and print it to the standard output. Works well wit grim fhor screen shots"

install_package "hyprpolkitagent" "Authentication Agent: Recommendation: hyprpolkitagent is specifically made for Hyprland"

install_package "qt5-wayland" "QT5 is for theming"

install_package "qt6-wayland" "QT6 also for theming"

install_package "smartmontools" "Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives"

install_package "wget" "A free software package for retrieving files using HTTP, HTTPS, FTP and FTPS"

install_package "wireless_tools" "Tools allowing to manipulate the Wireless Extensions"

install_package "xdg-desktop-portal-hyprland" "This handles screen sharing (OBS, Discord), file pickers, and opening links between apps."

install_package "xdg-desktop-portal-gtk" "Recommended alongside xdg-desktop-portal-hyprland so that apps (like your browser) can open file selection windows."

install_package "xdg-utils" "Command line tools that assist applications with a variety of desktop integration tasks"

install_package "wl-clipboard" "Wayland version of xclip for copy and paste"

install_package "nwg-look" "Theme and Icon Manager"

install_package "adw-gtk-theme" "Dark theme for Applicaitons"

install_package "imagemagick" "imagemagic (for pywal and works well with kitty)"

install_package "firefox" "now installing the famous internet browser with lots of options"

install_package "base-devel" "Base Devel: important library"

install_package "brightnessctl" " brightnessctl is an important tool to control system brightness"

install_package "pacman-contrib" "pacman-contrib an arch library needed to follow up arch updates"

exit 0
