# Author: Ryan Hendrickson
# Filename: .bash_profile

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

