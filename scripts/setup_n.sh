#!/usr/bin/env sh
# Author: Ryan Hendrickson
# Filename: setup_n.sh
# Installs 'n' and Node LTS.
#   https://github.com/tj/n

printf '\n<~ Starting Node setup ~>\n'

if [ -f "N_PREFIX/bin/node" ]; then
  printf '\n<<< Node %n & NPM %p already installed with n' "$("$N_PREFIX/bin/node --version")" "$("$N_PREFIX/bin/npm --version")"
else
  printf '\n<~ Installing n and Node LTS ~>\n'
  curl -L https://bit.ly/n-install | bash
fi

printf '\n<~ Finished Node setup ~>\n'
