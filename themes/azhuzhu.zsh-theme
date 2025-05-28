# Contents of /azhuzhu-zsh-theme/azhuzhu-zsh-theme/src/azhuzhu.zsh-theme

# azhuzhu.zsh-theme

# Theme Configuration
# This is the main source file for the azhuzhu Zsh theme.
# Function to show username conditionally
SHOW_USERNAME=false

show_username() {
    if [[ ${SHOW_USERNAME:-true} == "true" ]]; then
        echo "%(!.%F{red}%n.%F{blue}%n) "
    fi
}

# Set the prompt
PROMPT='%B'
PROMPT+='%F{magenta}$(conda_prompt_info)%F{blue}$(virtualenv_prompt_info)'
PROMPT+='%(?:%F{green}➜ :%F{red}➜ )$(show_username)%F{cyan}%c%f%b'
PROMPT+=' $(git_prompt_info)'
# Set the right prompt
# RPROMPT='%B%F{magenta}[%D{%H:%M:%S}]%f'

# Customize the appearance
ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{blue}git:(%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{blue}) %F{yellow}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{blue})%f"

# Load additional configurations if needed
# source $HOME/.zsh_custom_config

# End of theme configuration
