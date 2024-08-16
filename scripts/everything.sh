#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: everything.sh
# Runs all the options from install.sh

sh "$HOME/.dotfiles/scripts/setup_symlinks.sh"
sh "$HOME/.dotfiles/scripts/install_packages.sh"
sh "$HOME/.dotfiles/scripts/setup_n.sh"
curl -sS https://get.symfony.com/cli/installer | bash
