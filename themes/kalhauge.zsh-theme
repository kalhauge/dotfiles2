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

. ~/.themes/git.zsh $GREEN $YELLOW $RED $WHITE

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
    if [[ -n $(current_branch) ]]; then
        if [[ "$(parse_git_dirty)" == "*" ]]; then
            echo -n " at $RED$(current_branch)$RESET $(git_time_since_commit)$RESET"
        else; 
            echo -n " at $GREEN$(current_branch)$RESET"
        fi
    fi
}

function user() {
    echo -n "$RED%n$RESET"
}

function host() {
    echo -n "$YELLOW%M$RESET"
}

function directory() {
    echo -n "$GREEN${$(pwd)/$HOME/~}$RESET"
}

function info_line() {
  echo -n '$(user) at $(host) in $(directory)$(git_info):'
}

function command_line() {
  echo -n '$(arrow) %{$reset_color%}'
}

PROMPT=$(print "$(info_line)\n$(command_line)")



