#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: setup_symlinks.sh
# Setup symbolic links for various files/directories.

CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="$HOME/.dotfiles"
GNUPG_DIR="$HOME/.gnupg"
USER_DIR="$HOME/.local/user"

if [ ! -d "$CONFIG_DIR" ]; then
  mkdir -p "$CONFIG_DIR"
fi

if [ ! -d "$GNUPG_DIR" ]; then
  mkdir -p "$GNUPG_DIR"
fi

if [ ! -d "$USER_DIR" ]; then
  mkdir -p "$USER_DIR"
fi

####################
# config directory #
####################

# bat
if [ -d "$CONFIG_DIR/bat" ]; then
    rm -rf "$CONFIG_DIR/bat"
fi
ln -s "$DOTFILES_DIR/config/bat" "$CONFIG_DIR/bat"

# btop
if [ -d "$CONFIG_DIR/btop" ]; then
    rm -rf "$CONFIG_DIR/btop"
fi
ln -s "$DOTFILES_DIR/config/btop" "$CONFIG_DIR/btop"

# ghostty
if [ -d "$CONFIG_DIR/ghostty" ]; then
    rm -rf "$CONFIG_DIR/ghostty"
fi
ln -s "$DOTFILES_DIR/config/ghostty" "$CONFIG_DIR/ghostty"

# helix
if [ -d "$CONFIG_DIR/helix" ]; then
    rm -rf "$CONFIG_DIR/helix"
fi
ln -s "$DOTFILES_DIR/config/helix" "$CONFIG_DIR/helix"

# nvim
if [ -d "$CONFIG_DIR/nvim" ]; then
    rm -rf "$CONFIG_DIR/nvim"
fi
ln -s "$DOTFILES_DIR/config/nvim" "$CONFIG_DIR/nvim"

# starship
if [ -f "$CONFIG_DIR/starship.toml" ]; then
    rm -rf "$CONFIG_DIR/starhip.toml"
fi
ln -s "$DOTFILES_DIR/config/starship.toml" "$CONFIG_DIR/starship.toml"

#################
# git directory #
#################

# gitconfig
if [ -f "$HOME/.gitconfig" ]; then
    rm "$HOME/.gitconfig"
fi
ln -s "$DOTFILES_DIR/git/gitconfig_global" "$HOME/.gitconfig"

# gittemplate
if [ -f "$USER_DIR/gittemplate" ]; then
    rm "$USER_DIR/gittemplate"
fi
ln -s "$DOTFILES_DIR/git/gittemplate" "$USER_DIR/gittemplate"

###################
# gunpg directory #
###################

# gpg-agent.conf
if [ -f "$GNUPG_DIR/gpg-agent.conf" ]; then
    rm "$GNUPG_DIR/gpg-agent.conf"
fi
ln -s "$DOTFILES_DIR/config/gnupg/gpg-agent.conf" "$GNUPG_DIR/gpg-agent.conf"

###################
# shell directory #
###################

# .aliases
if [ -f "$HOME/.aliases" ]; then
    rm "$HOME/.aliases"
fi
ln -s "$DOTFILES_DIR/shell/.aliases" "$HOME/.aliases"

# Bash

# .bash_profile
if [ -f "$HOME/.bash_profile" ]; then
    rm -rf "$HOME/.bash_profile"
fi
ln -s "$DOTFILES_DIR/shell/.bash_profile" "$HOME/.bash_profile"

# .bashrc
if [ -f "$HOME/.bashrc" ]; then
    rm -rf "$HOME/.bashrc"
fi
ln -s "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"

# .inputrc
if [ -f "$HOME/.inputrc" ]; then
    rm -rf "$HOME/.inputrc"
fi
ln -s "$DOTFILES_DIR/shell/.inputrc" "$HOME/.inputrc"

# Zsh

if [ -f "$HOME/.zshenv" ]; then
    rm -rf "$HOME/.zshenv"
fi
ln -s "$DOTFILES_DIR/shell/.zshenv" "$HOME/.zshenv"

if [ -f "$HOME/.zshrc" ]; then
    rm -rf "$HOME/.zshrc"
fi
ln -s "$DOTFILES_DIR/shell/.zshrc" "$HOME/.zshrc"

########
# done #
########

printf "\n<~ Done setting up symbolic links for \$DOTFILES ~>\n"
