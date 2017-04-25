#!/bin/bash

# Start tmux if installed, screen term not in use,
# tmux not already running, and interactive shell.
if command -v tmux > /dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && [[ $- == *i* ]] && exec tmux
fi

# Source additional environment config, if present.
# shellcheck source=src/dev/null
if [ -f $HOME/.local_bash_profile ]; then
  source $HOME/.local_bash_profile
fi

# Put the current working directory in the prompt.
export PS1="\u@\h\w$ "

# Setup for macOS.
if [[ $(uname) == "Darwin" ]]; then
  # Disable Homebrew analytics.
  export HOMEBREW_NO_ANALYTICS=1

  # Enable Homebrew Bash completion.
  # shellcheck source=src/dev/null
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion"
  fi

  # NVM (https://github.com/creationix/nvm#installation).
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

  # Initialize virtualenv.
  export WORKON_HOME=~/.envs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# Link to personal scripts.
export PATH="$PATH:$HOME/Scripts/"
