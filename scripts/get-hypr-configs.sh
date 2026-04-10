#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          get-hypr-configs.sh
# Created:       Friday, 10 April 2026 - 06:29 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:   A script to copy default hyprland and waybar configs
#                from their default locations to ~/.config
#--------------------------------------------------------------------------------

#####################
# PREPARE DIRCTORIES:
#####################

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

HYPR_SRC_DIR="/usr/share/hypr"
WAYBAR_SRC_DIR="/etc/xdg/waybar"
DEST_DIR="@HOME/.config"

copy_folder "$HYPR_SRC_DIR" "$DEST_DIR"
copy_folder "$WAYBAR_SRC_DIR" "$DEST_DIR"

exit 0
