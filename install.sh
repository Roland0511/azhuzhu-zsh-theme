#!/bin/bash

echo "Starting installation of theme..."

# Define the theme source path
THEME_SOURCE="https://raw.githubusercontent.com/Roland0511/azhuzhu-zsh-theme/main/themes/azhuzhu.zsh-theme"
# Get the theme file name from the source URL
THEME_NAME="$(basename "$THEME_SOURCE")"
# Define the destination path for the theme
DESTINATION="$HOME/.oh-my-zsh/custom/themes/"

# Check if the destination directory exists
if [ ! -d "$DESTINATION" ]; then
    echo "Creating destination directory..."
    mkdir -p "$DESTINATION"
fi

# Download the theme files to the destination
echo "Downloading theme files..."
curl -sSL "$THEME_SOURCE" -o "$DESTINATION/$THEME_NAME"
if [ $? -ne 0 ]; then
    echo "Error downloading the theme. Please check your internet connection or the URL."
    exit 1
fi

# Update .zshrc to set the theme
echo "Setting the theme in .zshrc..."
if grep -q 'ZSH_THEME=' "$HOME/.zshrc"; then
    sed -i 's/^ZSH_THEME=.*/ZSH_THEME="azhuzhu"/' "$HOME/.zshrc"
else
    echo 'ZSH_THEME="azhuzhu"' >> "$HOME/.zshrc"
fi


echo "Installation completed! Please restart your terminal or run 'source ~/.zshrc' to apply the changes."
