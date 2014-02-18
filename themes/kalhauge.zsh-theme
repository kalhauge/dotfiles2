# 
# Kalhauge's special theme.
# By Christian Gram Kalhauge


# DEFINING COLORS

RED="%{$fg[red]%}"
YELLOW="%{$fg[yellow]%}"
GREEN="%{$fg[green]%}"
CYAN="%{$fg[cyan]%}"
BROWN="%{$fg[green]%}"
BG_ORANGE="%{$bg[yellow]%}"
BG_RED="%{$bg[red]%}"
BG_GREEN="%{$bg[green]%}"


RESET="%{$reset_color%}"

DANGER=$RED
FINE=$GREEN

# LOAD UTILS

. ~/.themes/git.zsh $GREEN $YELLOW $GREEN $CYAN

# LOCAL

function clr() {
    echo -n "%{$*%}"
}

function arrow () {
  if [ $# = "#" ]; 
    then COLOR=$DANGER
  else; COLOR=$FINE
  fi;
  echo -n $COLOR
  printf '\U2192'
}

function git_info() {
    if [[ "$(parse_git_dirty)" == "*" ]]; then
        echo -n "$BG_RED"
    else; 
        echo -n "$BG_GREEN"
    fi
    echo -n "$(current_branch)$(git_time_since_commit)$RESET"
}

function info_line() {
  echo -n '$GREEN$USER$RESET@$RED$(hostname)$RESET $(git_info) $BROWN${$(pwd)/$HOME/~}'
}

function command_line() {
  echo -n '$(arrow) %{$reset_color%}'
}

PROMPT=$(print "$(info_line)\n$(command_line)")



