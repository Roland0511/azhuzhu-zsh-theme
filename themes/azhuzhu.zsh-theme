# Contents of /azhuzhu-zsh-theme/azhuzhu-zsh-theme/src/azhuzhu.zsh-theme

# azhuzhu.zsh-theme

# Theme Configuration
# This is the main source file for the azhuzhu Zsh theme.

# Set the prompt
PROMPT='%F{cyan}%n@%m %F{yellow}%~ %F{green}➜ %f'

# Set the command prompt
RPROMPT='%F{magenta}[%D{%L:%M:%S}]%f'

# Customize the appearance
ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}git:(%F{green}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{red})%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{green}✓%f"

# Load additional configurations if needed
# source $HOME/.zsh_custom_config

# End of theme configuration