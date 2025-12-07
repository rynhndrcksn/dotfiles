# Author: Ryan H.
# Filename: .zshrc
# Holds a bunch of imports that hold the important stuff to help keep things modular/easy to update.

source "$HOME/.aliases"

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
# $path settings #
##################

# This forces $path to only hold unique values.
typeset -U path

# Add our special stuff to $path then add everything already in $path.
path=(
    "$N_PREFIX/bin"
    "$HOME/go/bin"
    "$HOME/.cargo/env"
    "$HOME/.symfony5/bin"
    $path
)

. "$HOME/.cargo/env"

##################
# Sourcing Files #
##################

# Load symfony-cli completions.
eval "$(symfony self:completion zsh)"

####################
# Customize prompt #
####################

eval "$(starship init zsh)"

