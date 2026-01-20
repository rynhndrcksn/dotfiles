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

# Set bat's config location
export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"

######################
# Change ZSH options #
######################
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY # Add timestamps to history entries.
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

# Source zsh-syntax-highlighting
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && \
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

####################
# Customize prompt #
####################

eval "$(starship init zsh)"

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

# Load aliases.
source "$HOME/.aliases"

# Load symfony-cli completions.
eval "$(symfony self:completion zsh)"

# Enable searching ZSH history with fzf using ctrl + r
source <(fzf --zsh)
