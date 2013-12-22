# 
# Kalhauge's special theme.
# By Christian Gram Kalhauge

# DEFINING COLORS

DANGER="%{$fg[red]%}"

FINE="%{$fg[green]%}"

GIT_FINE="%{$bg[green]$fg[black]%}"
GIT_WARNING="%{$bg[yellow]$fg[black]%}"

IPCOLOR="%{$fg_no_bold[white]%}"
HOSTCOLOR="%{$fg[blue]%}"
USERCOLOR="%{$fg[magenta]%}"
DIRCOLOR="%{$fg[yellow]%}"

N="%{$fg[white]%}"


arrow () {
  if [ $# = "#" ]; 
    then COLOR=$DANGER
  else; COLOR=$FINE
  fi;
  echo -n $COLOR
  printf '\U2192'
}

function git_color () {
  local COLOR=$GIT_FINE
  [[ $(git status -s 2> /dev/null ) != "" ]] && COLOR=$GIT_WARNING
  echo -n $COLOR 
}

git_info () {
  local ref
  ref=$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3 ) 
  if [ "$ref" !=  "" ]; then;
    echo "$(git_color) $ref %{$reset_color%} "
  fi
}

info_line() {
  echo '%{$bg[black]%}$HOSTCOLOR%m[${IPCOLOR}$(update_local_ip)${HOSTCOLOR}] ${N}: $USERCOLOR%n $(git_info)\n$DIRCOLOR%~ $reset_color'
}

command_line() {
  echo '$(arrow) %{$reset_color%}'
}

PROMPT=$(print "$(info_line)\n$(command_line)")

#RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

