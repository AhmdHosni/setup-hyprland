#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          07-restore-gnome-settings.sh (REFINED)
# Created:       Wednesday, 04 February 2026 - 10:24 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Description:   Restores custom GNOME settings on a fresh install
#--------------------------------------------------------------------------------

THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

##############
# Directories
##############

## Folder icon repo
ICONS_URL="https://github.com/ahmdhosni/breeze-icons"
ICONS_DEST="$HOME/.local/share/icons"
mkdir -p "$ICONS_DEST"
#########################
# INSTALL ICON THEME
#########################

show_title "Installing Icon Theme"
#copy_folder "$ICONS_SOURCE_DIR" "$ICONS_DEST" "Copying custom icons"
git_clone "$ICONS_URL" "$ICONS_DEST" "Breeze Icons Dark: my favorite icon set on Gnome Dark themes"

# Fine-tune the extracted icon theme
if [ -d "$ICONS_DEST/breeze-extra-dark" ]; then
    #Remove apps folder (not needed)
    remove_folder "$ICONS_DEST/.git" "Removing .git folder from icon destination folder"
fi

# Copying custom folder and app icons.
copy_folder "$FOLDER_ICONS_SOURCE_DIR" "$ICONS_DEST" "Copying custom icons"

echo -e ""
echo -e "${GREEN}${BOLD}Done !!! ${NC}"
echo -e "${GREEN}${BOLD}Summary:${NC}"
echo -e "${GREEN}  ✓ Icon theme is installed${NC}"
echo ""

# Exit the script
exit 0
