# Author: Ryan H.
# Filename: .zshrc
# Holds a bunch of imports that hold the important stuff to help keep things modular/easy to update.

#################
# Set variables #
#################

# Add $DOTFILES variable for absolute path to ~/.dotfiles.
export DOTFILES="$HOME/.dotfiles"

# Syntax highlighting for man pages via 'bat'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Changes <<< to use bat instead of cat (default).
export NULLCMD='bat'

######################
# Change ZSH options #
######################
setopt autoCd # Allows you to type in a directory to cd into it.
setopt globDots # Shows hidden files/directories without typing a .

# Add "zstyles" for Completions
# :completion:function:completer:command:argument:tag
zstyle ':completion:*:*:*:*:*' menu select

# Matches lower to upper case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Load any completion scripts that are needed before running compinit.
fpath+="$HOME/.zfunc"

# Load "new" completion system for ZSH
autoload -Uz compinit && compinit

##################
# Sourcing Files #
##################

# Load symfony-cli completions.
eval "$(symfony self:completion zsh)"

####################
# Customize prompt #
####################

eval "$(starship init zsh)"
