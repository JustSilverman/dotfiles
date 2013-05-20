#==========================================================================
# define colors
#==========================================================================

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[35m\]"
DARK_GRAY="\[\033[1;30m\]"
DEFAULT="\[\e[0m\]"

#==========================================================================
# aliases
#==========================================================================

alias ls="ls -A"
alias ll="ls -lh"
alias startgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stopgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias be="bundle exec"

#==========================================================================
# basic settings
#==========================================================================

export PATH=$PATH:~/bin
export PATH=$HOME/bin:$PATH

# set default editor
subl='/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'
test -x "$subl" && export EDITOR="'$subl' --wait"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

#==========================================================================
# Homebrew
#==========================================================================

# rearrange path for homebrew
export PATH=/usr/local/bin:$PATH

#==========================================================================
# Git
#==========================================================================

export PATH=/usr/local/git/bin:$PATH
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$DEFAULT\$ "

#==========================================================================
# RVM
#==========================================================================

# Add rvm to bash session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#==========================================================================
# setup path for npm and node
#==========================================================================

export PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules

#==========================================================================
# setup path for Python and Virtualenv
#==========================================================================

export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

#==========================================================================
# setup Heroku
#==========================================================================

### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

#==========================================================================
# setup JsTestDRiver 
#==========================================================================

export JSTESTDRIVER_HOME=~/bin

