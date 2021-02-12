# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# zsh theme loaded from ~/.oh-my-zsh/themes
#ZSH_THEME="agnoster"
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=15

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
plugins=(git gitignore)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

if [[ -f ~/.zsh_functions ]]; then
    . ~/.zsh_functions
fi

# File containing variable that should not be exposed publicly
if [[ -f ~/.zsh_private ]]; then
    . ~/.zsh_private
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export PATH="$PATH:/home/$USER/.local/bin"
export TERM=xterm-256color
