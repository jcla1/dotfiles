[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
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

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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

# Print each PATH entry on a separate line
alias path="echo -e ${PATH//:/\\n}"

# Reload this file.
alias r="source ~/.bashrc"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
