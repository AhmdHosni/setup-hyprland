#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          make-it-accessable.sh
# Created:       Thursday, 19 February 2026 - 01:40 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:   A script to make gimp accessable from commandline
#--------------------------------------------------------------------------------

GIMP_DIR="/media/ahmdhosni/Storage/Apps/Gimp"
VSCODIUM_DIR="/media/ahmdhosni/Storage/Apps/vsCodium"
NVIM_DIR="/media/ahmdhosni/Storage/Apps/Neovim/nvim"
YAZI_DIR="/media/ahmdhosni/Storage/Apps/Yazi"

GLOBAL_BIN_FOLDER="/usr/local/bin/"

sudo ln -s $GIMP_DIR/GIMP.AppImage $GLOBAL_BIN_FOLDER/gimp
sudo ln -s $VSCODIUM_DIR/VSCodium.AppImage $GLOBAL_BIN_FOLDER/vsCodium
sudo ln -s $NVIM_DIR/nvim-linux.appimage $GLOBAL_BIN_FOLDER/nvim
sudo ln -s $YAZI_DIR/yazi $GLOBAL_BIN_FOLDER/yazi

exit 0
