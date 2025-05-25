#!/bin/bash

# Uninstall script for azhuzhu-zsh-theme

# Function to remove the theme files
uninstall_theme() {
    echo "Removing azhuzhu-zsh-theme..."
    rm -rf ~/.oh-my-zsh/custom/themes/azhuzhu.zsh-theme
    echo "Theme removed successfully."
}

# Function to remove the theme from .zshrc
remove_from_zshrc() {
    echo "Removing theme from .zshrc..."
    sed -i '/^ZSH_THEME="azhuzhu.zsh-theme"/d' ~/.zshrc
    echo "Theme entry removed from .zshrc."
}

# Main script execution
uninstall_theme
remove_from_zshrc

echo "Uninstallation complete. Please restart your terminal."