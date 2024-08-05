#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: everything.sh
# Runs all the options from install.sh

sh "$PWD/scripts/setup_symlinks.sh"
sh "$PWD/scripts/install_packages.sh"
sh "$PWD/scripts/setup_n.sh"
curl -sS https://get.symfony.com/cli/installer | bash
