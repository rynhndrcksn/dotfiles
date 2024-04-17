# Author: Ryan Hendrickson
# Filename: .bashrc
#
# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in OpenSUSE's setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.

# aliases
source ~/.alias

# needed for git branch info in prompt
source ~/.local/user/git_prompt.sh

# change prompt (https://bash-prompt-generator.org/):
# more info: https://misc.flogisoft.com/bash/tip_colors_and_formatting
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "[%s]")'; PS1='\n\[\e[38;5;51;3m\]\w\[\e[0m\] \[\e[38;5;213m\]${PS1_CMD1}\n\[\e[38;5;2m\]->\[\e[0m\] '

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

# filenames beginning with a '.' show in resutls of filename expansion
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

# don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:lla:ll:bg:fg:history:clear"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
