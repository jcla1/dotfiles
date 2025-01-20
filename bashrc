export PS1="\u@\h:\w \n => "
export EDITOR=vim

# Get timestamps added to bash history
export HISTTIMEFORMAT="%y-%m-%d %T "
# Infinite history.
HISTSIZE='' HISTFILESIZE=''

#export PATH="$HOME/.local/texlive/bin/x86_64-linux:$PATH"
#export PATH="$(go env GOPATH)/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config/"

export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_NO_ENV_HINTS=1
# Initialise the linuxbrew command
eval "$($HOME/homebrew/bin/brew shellenv)"

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  # shellcheck source=/dev/null
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
else
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    # shellcheck source=/dev/null
    [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
  done
fi

# Colourise the ls output, need to use different
# parameters depending on platform (macOS doesn't
# use --color=auto)
if ls --color >/dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # macOS `ls`
  colorflag="-G"
fi

# Always use color output for `ls`
alias ls='command ls -hF ${colorflag}'
alias la='ls -la'
alias ll='ls -la'

# The space after the command allows for alias expansion of commands that follow
# and thus enabling defined aliases to be sudo-ed.
alias sudo='sudo '

alias ..='cd ..'
alias ...='cd ../..'

# Print each PATH entry on a separate line
alias path='echo $PATH | tr ":" "\n"'

# Reload this file.
alias r='source ~/.bashrc'

if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then
  source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi

# Using fzf without properly setting up the local results in annyoing error
# messages. This is a workaround to avoid that.
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Setup GNU screen to use custom configuration stored in the ~/.config
# directory, which it unfortunately doesn't do by default.
export SCREENRC="$HOME/.config/screenrc"
