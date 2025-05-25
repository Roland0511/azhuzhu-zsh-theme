#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# azhuzhu-zsh-theme installation script

echo "Starting installation of azhuzhu-zsh-theme..."

# Define the theme source path
THEME_SOURCE="$DIR/themes/azhuzhu.zsh-theme"

# Define the destination path for the theme
DESTINATION="$HOME/.oh-my-zsh/custom/themes/"

# Check if the destination directory exists
if [ ! -d "$DESTINATION" ]; then
    echo "Creating destination directory..."
    mkdir -p "$DESTINATION"
fi

# Copy the theme files to the destination
echo "Copying theme files..."
cp "$THEME_SOURCE" "$DESTINATION"

# Update .zshrc to set the theme
if grep -q "ZSH_THEME=\"azhuzhu\"" "$HOME/.zshrc"; then
    echo "Theme is already set in .zshrc."
else
    echo "Setting the theme in .zshrc..."
    echo 'ZSH_THEME="azhuzhu"' >> "$HOME/.zshrc"
fi

echo "Installation completed! Please restart your terminal or run 'source ~/.zshrc' to apply the changes."