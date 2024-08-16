# Author: Ryan Hendrickson
# Filename: .bash_profile
# 
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc

# Source /etc/profile if login shell
test -z "$PROFILEREAD" && . /etc/profile || true

# Get the aliases and functions
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

###############
# Set Exports #
###############

# Add $DOTFILES variable for absolute path to ~/.dotfiles.
export DOTFILES="$HOME/.dotfiles"

# Changes <<< to use bat instead of cat (default).
export NULLCMD='bat'

# Go
export PATH=$PATH:/usr/local/go/bin

# Symfony CLI
export PATH="$HOME/.symfony5/bin:$PATH"
