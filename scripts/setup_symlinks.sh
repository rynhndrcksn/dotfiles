#!/usr/bin/sh
# Author: Ryan Hendrickson
# Filename: setup_symlinks.sh
# Setup symbolic links for various files/directories.

CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="$HOME/.dotfiles"
GNUPG_DIR="$HOME/.gnupg"
USER_DIR="$HOME/.local/user"

if [ ! -d "$USER_DIR" ]; then
  mkdir -p "$USER_DIR"
fi

####################
# config directory #
####################

# bat
rm -rf "$CONFIG_DIR/bat"
ln -s "$DOTFILES_DIR/config/bat" "$CONFIG_DIR/bat"

# btop
rm -rf "$CONFIG_DIR/btop"
ln -s "$DOTFILES_DIR/config/btop" "$CONFIG_DIR/btop"

# ideavim
rm -rf "$HOME/.ideavimrc"
ln -s "$DOTFILES_DIR/config/ideavim/.ideavimrc" "$HOME/.ideavimrc"

# nvim
rm -rf "$CONFIG_DIR/nvim"
ln -s "$DOTFILES_DIR/config/nvim" "$CONFIG_DIR/nvim"

# wezterm
rm -rf "$CONFIG_DIR/wezterm"
ln -s "$DOTFILES_DIR/config/wezterm" "$CONFIG_DIR/wezterm"

#################
# git directory #
#################

# gitconfig
rm "$HOME/.gitconfig"
ln -s "$DOTFILES_DIR/git/gitconfig_global" "$HOME/.gitconfig"

# gittemplate
rm "$USER_DIR/gittemplate"
ln -s "$DOTFILES_DIR/git/gittemplate" "$USER_DIR/gittemplate"

###################
# gunpg directory #
###################

# gpg-agent.conf
rm "$GNUPG_DIR/gpg-agent.conf"
ln -s "$DOTFILES_DIR/config/gnupg/gpg-agent.conf" "$GNUPG_DIR/gpg-agent.conf"

###################
# shell directory #
###################

# .alias
rm "$HOME/.alias"
ln -s "$DOTFILES_DIR/shell/.alias" "$HOME/.alias"

# .bashrc
rm -rf "$HOME/.bashrc"
ln -s "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"

# .inputrc
rm -rf "$HOME/.inputrc"
ln -s "$DOTFILES_DIR/shell/.inputrc" "$HOME/.inputrc"

# .profile
rm -rf "$HOME/.profile"
ln -s "$DOTFILES_DIR/shell/.profile" "$HOME/.profile"

# git_prompt.sh
rm "$USER_DIR/git_prompt.sh"
ln -s "$DOTFILES_DIR/shell/git_prompt.sh" "$USER_DIR/git_prompt.sh"

printf "\n<~ Done setting up symbolic links for \$DOTFILES ~>\n"
