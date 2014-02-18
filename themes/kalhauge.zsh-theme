# 
# Kalhauge's special theme.
# By Christian Gram Kalhauge


# DEFINING COLORS

BLACK="%{$fg[black]%}"
WHITE="%{$fg[white]%}"
RED="%{$fg[red]%}"
YELLOW="%{$fg[yellow]%}"
GREEN="%{$fg[green]%}"
CYAN="%{$fg[cyan]%}"
BROWN="%{$fg[green]%}"
MAGENTA="%{$fg[magenta]%}"

BG_ORANGE="%{$bg[yellow]%}"
BG_RED="%{$bg[red]%}"
BG_GREEN="%{$bg[green]%}"


RESET="%{$reset_color%}"

DANGER=$RED
FINE=$GREEN

# LOAD UTILS

. ~/.themes/git.zsh $WHITE $BLUE $MAGENTA $WHITE

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
        echo -n "$BG_RED$WHITE $(current_branch) $(git_time_since_commit) $RESET"
    else; 
        echo -n "$BG_GREEN$BLACK $(current_branch) $RESET"
    fi
    echo -n 
}

function info_line() {
  echo -n '$GREEN%n$RESET@$RED%M$RESET $(git_info) $BROWN${$(pwd)/$HOME/~}'
}

function command_line() {
  echo -n '$(arrow) %{$reset_color%}'
}

PROMPT=$(print "$(info_line)\n$(command_line)")



