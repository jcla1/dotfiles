export PS1="\u@\h:\w \n => "
export EDITOR=vim

# Get timestamps added to bash history
export HISTTIMEFORMAT="%y-%m-%d %T "
HISTSIZE= HISTFILESIZE= # Infinite history.

export GOPATH="$HOME/data/gocode"
export PATH="$GOPATH/bin:$PATH"

# export PATH="/usr/local/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/data/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Disable ctrl-s and ctrl-q.
stty -ixon
# Disable ctrl-o so that neomutt is usable.
stty discard undef

# Enable Vi keybindings instead of the default emacs ones.
# set -o vi

# Colourise the ls output, need to use different
# parameters depending on platform (macOS doesn't
# use --color=auto)
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # macOS `ls`
	colorflag="-G"
fi

# The space after the command allows for alias expansion of commands that follow
# and thus enabling defined aliases to be sudo-ed.
alias sudo="sudo "

# Always use color output for `ls`
alias ls="command ls -hF ${colorflag}"
alias la="ls -la"
alias ll="ls -la"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias m="neomutt"

alias join-pdfs='"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py"'

# Print each PATH entry on a separate line
alias path="echo -e ${PATH//:/\\n}"

# Reload this file.
alias r="source ~/.bashrc"

