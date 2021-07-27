######################
## ZSH Configurations
##
#

SHELL_SESSION_HISTORY=0

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme (random will rotate randomly)
ZSH_THEME="robbyrussell"

# ZSH Plugins
source $ZSH/oh-my-zsh.sh

# Silly space-deleting bug fix
ZLE_REMOVE_SUFFIX_CHARS=""

######################
## My Configurations
##
# Preferred editor for local and remote sessions
export EDITOR='nvim'
alias vim='nvim'
alias cdd="cd $HOME/Desktop"

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Iterm said so
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Fuzzy Finder Key Bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
