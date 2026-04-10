#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          copy_configs.sh
# Created:       Sunday, 29 March 2026 - 02:27 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_CONFIG_DIR="/media/ahmdhosni/Storage/Settings/gitRepos"
TARGET_CONFIG_DIR="$HOME/.config"

source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

############################
### Copying Config folders :
############################

# copy_folder "$THIS_DIR/configVersion2/waybar" "$TARGET_CONFIG_DIR"
# copy_folder "$THIS_DIR/configVersion2/rofi" "$TARGET_CONFIG_DIR"
# copy_folder "$THIS_DIR/configVersion2/hypr" "$TARGET_CONFIG_DIR"
# copy_folder "$THIS_DIR/configVersion2/kitty" "$TARGET_CONFIG_DIR"

copy_folder "$LOCAL_CONFIG_DIR/mozilla" "$TARGET_CONFIG_DIR"
copy_folder "$LOCAL_CONFIG_DIR/git" "$TARGET_CONFIG_DIR"

#################################
### make the scripts executable :
#################################

# ind $TARGET_CONFIG_DIR/waybar -type f -name "*.sh" -exec chmod +x {} +
# find $TARGET_CONFIG_DIR/hypr -type f -name "*.sh" -exec chmod +x {} +
# find $TARGET_CONFIG_DIR/rofi -type f -name "*.sh" -exec chmod +x {} +

###############################
### run cycle-wallpaper once  :
###############################
# awww-daemon &
# wal -i /usr/share/hypr/wall2.png

exit 0
