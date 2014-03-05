#/bin/bash

# This is the install file for installing all the files in the 
# home folder. The existing files is then moved to 
# ~/.old-dotfiles so that nothing is lost. 

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
olddir=~/.old-dotfiles
files="vimrc gvimrc vim zshrc oh-my-zsh themes tmux.conf"

[ -d $olddir ] || mkdir $olddir

for file in $files; do
	echo "$HOME/.$file" `[ -e "$HOME/.$file" ]`
	mv ~/.$file $olddir/$file 2> /dev/null && echo "Found $file at ~ moved it safely to $olddir"; 
	ln -Fs $dir/$file ~/.$file;
done;



