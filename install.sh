#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: install.sh
# Displays options for the installer to execute.

while true; do
    printf '\nThese are the available options:\n'
    printf '\t0) Execute every command\n'
    printf '\t1) Setup symlinks\n'
    printf '\t2) Install packages\n'
    printf '\t3) Setup n, a node version manager\n'
    printf '\t4) Setup Symfony CLI with curl\n'
    printf '\tQ) Exit the installer\n'
    printf '\nPlease enter your selection: '
    read -r opt
    case $opt in
        [0]* ) sh scripts/everything.sh; continue;;
        [1]* ) sh scripts/setup_symlinks.sh; continue;;
        [2]* ) sh scripts/install_packages.sh; continue;;
        [3]* ) sh scripts/setup_n.sh; continue;;
        [4]* ) curl -sS https://get.symfony.com/cli/installer | bash; continue;;
        [Qq]* ) printf '\nA terminal restart may be necessary for changes to take affect\n'; exit;;
        * ) printf '\n\nPlease enter a valid option\n';;
    esac
done
