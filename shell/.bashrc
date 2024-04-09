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
