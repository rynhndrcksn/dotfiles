# Author: Ryan Hendrickson
# Filename: .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Import aliases.
source "$HOME/.aliases"

# Import local credentials.
source "$HOME/.creds"

# change prompt (https://bash-prompt-generator.org/):
# more info: https://misc.flogisoft.com/bash/tip_colors_and_formatting
PS1='\n\[\e[38;5;51;3m\]\w\n\[\e[38;5;2m\]->\[\e[0m\] '

#
# set BASH shopts
#

# can omit 'cd' to change directories
shopt -s autocd 

# fixes minor spelling errors when using 'cd'
shopt -s cdspell 

# enabled by default, updates values of LINES and COLUMNS after commands
shopt -s checkwinsize 

# enabled by default, enables command history
shopt -s cmdhist 

# attempts spelling correction on directory names during word completion
shopt -s dirspell 

# filenames beginning with a '.' show in results of filename expansion
shopt -s dotglob 

# enables extended pattern matching features
shopt -s extglob 

# enables use of ** for filename/directory expansion
shopt -s globstar 

# enabled by default, appends to history file instead of overwriting it
shopt -s histappend 

# matches filenames in a case-insensitive fashion
shopt -s nocaseglob 

#
# set history settings
#

# record each line as it gets issued
PROMPT_COMMAND='history -a'

# huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

#
# Exports
#

# don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:lla:ll:bg:fg:history:clear"

# Add $N_PREFIX for 'n' (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"

#
# Path manipulation
#

paths=(
    "/usr/local/go/bin"
    "$N_PREFIX/bin"
    "$HOME/go/bin"
    "$HOME/bin"
    "$HOME/.symfony5/bin"
    "$HOME/.local/bin"
)

for path in "${paths[@]}"; do
    if ! [[ ":$PATH:" =~ :$path: ]]; then
        PATH="$path:$PATH"
    fi
done

