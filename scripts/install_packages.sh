#!/usr/bin/sh
# Author: Ryan Hendrickson
# Filename: install_packages.sh
# Install all the packages located in packages.list

printf '\n<~ Running `sudo zypper update` before installing packages ~>\n'
sudo zypper update
while true; do
    printf 'These are the packages that will be installed from scripts/packages.list:\n'
    cat packages.list
    printf '\nContinue with installation? (y/n) '
    read -r opt
    case $opt in
        [Yy]* ) cat packages.list | xargs sudo zypper --non-interactive install; break;;
        [Nn]* ) exit;;
        * ) printf "\nPlease answer yes or no.\n";;
    esac
done

printf '\n<~ Packages have been installed! ~>\n'

bat cache --build
