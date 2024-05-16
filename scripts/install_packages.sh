#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: install_packages.sh
# Install all the packages located in packages.list

printf '\n<~ Running "sudo zypper refresh && sudo zypper dist-upgrade" before installing packages ~>\n'
sudo zypper refresh
sudo zypper dist-upgrade

#printf '\n<~ Running `sudo zypper update` before installing packages ~>\n'
#sudo zypper update

while true; do
    printf '\n<~ These are the packages that will be installed from scripts/packages.list: ~>\n'
    cat "$HOME/.dotfiles/scripts/packages.list"
    printf '\nContinue with installation? (y/n) '
    read -r opt
    case $opt in
        [Yy]* ) xargs sudo zypper --non-interactive install < "$HOME/.dotfiles/scripts/packages.list"; break;;
        [Nn]* ) exit;;
        * ) printf "\nPlease answer yes or no.\n";;
    esac
done

printf '\n<~ Packages have been installed! ~>\n\n'

bat cache --build
