export PS1="\u@\h:\w \n => "
export EDITOR=vim

# Get timestamps added to bash history
export HISTTIMEFORMAT="%y-%m-%d %T "
HISTSIZE='' HISTFILESIZE='' # Infinite history.

export PATH="$HOME/.local/kitty.app/bin:$PATH"

export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_NO_ENV_HINTS=1
if [[ "$(uname)" == "Linux" ]]; then
  export HOMEBREW_PREFIX="/home/reh/adams/.linuxbrew"
else
  export HOMEBREW_PREFIX="/usr/local"
fi

export PATH="${HOMEBREW_PREFIX}/bin:${HOMEBREW_PREFIX}/sbin:$PATH"
export MANPATH="${HOMEBREW_PREFIX}/share/man:$MANPATH"
export INFOPATH="${HOMEBREW_PREFIX}/share/info:$INFOPATH"

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  # shellcheck source=/dev/null
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
else
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    # shellcheck source=/dev/null
    [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
  done
fi

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

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

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
