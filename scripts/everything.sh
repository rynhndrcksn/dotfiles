#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: everything.sh
# Runs all the options from install.sh

sh setup_symlinks.sh
sh install_packages.sh
sh setup_n.sh
curl -sS https://get.symfony.com/cli/installer | bash
