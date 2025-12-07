# Author: Ryan H.
# Filename: .zshenv
# Imports things needed for any and all shells.

# Have 'n' install to ~/.n instead of /usr/local
export N_PREFIX="$HOME/.n"

# Set 'bat's config location
export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
. "$HOME/.cargo/env"
