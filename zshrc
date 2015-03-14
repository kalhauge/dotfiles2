# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_CUSTOM=$HOME/.themes
ZSH_THEME="kalhauge"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx macports)
print "Starting OMZ"
source $ZSH/oh-my-zsh.sh
print "Done" 
## MY CHANGES

[ -f ~/.profile ] && source ~/.profile

bindkey -v

# Enable fasd
eval "$(fasd --init auto)"
# Vim setup



# Python setup.
alias py3=python3.3
alias go="git pull && git push"
alias pystall="./setup.py install --user > /dev/null"

texit() {
   pdflatex -draftmode $1.tex &&
   bibtex $1 &&
   pdflatex -draftmode $1.tex &&
   pdflatex $1.tex && open report.pdf
}

alias -s sh=/bin/bash

# Global helpers
alias -g myip=`echo $LOCAL_IP`

# Functions

unset GREP_OPTIONS

autoload -Uz promptinit
promptinit -i
if [[ $1 == eval ]]
then
   "$@"
   set --
fi


bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1


