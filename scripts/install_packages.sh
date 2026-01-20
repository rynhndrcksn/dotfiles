#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: install_packages.sh
# Install all the packages located in packages.list

printf '\n<~ Running "sudo dnf upgrade" before installing packages ~>\n'
sudo dnf upgrade

while true; do
    printf '\n<~ These are the packages that will be installed from scripts/packages.list: ~>\n'
    cat "$HOME/.dotfiles/scripts/packages.list"
    printf '\nContinue with installation? (y/n) '
    read -r opt
    case $opt in
        [Yy]* ) xargs sudo dnf in -y < "$HOME/.dotfiles/scripts/packages.list"; break;;
        [Nn]* ) exit;;
        * ) printf "\nPlease answer yes or no.\n";;
    esac
done

printf '\n<~ Packages have been installed! ~>\n\n'

bat cache --build
