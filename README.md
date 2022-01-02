# dotfiles

Want to make your own git bare repository?  First, make a directory for your new git bare repository (I created one called "dotfiles" but you can name it whatever).

Then I entered the following in the terminal:

git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)
bash
config config --local status.showUntrackedFiles no

Basic usage example:

config add /path/to/file

config commit -m "A short message"

config push
