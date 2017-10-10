#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files="bashrc tmux.conf bash_profile git-prompt-colors.sh vim vimrc gitconfig"    # list of files/folders to symlink in homedir

###########################
# Pip install the powerline-gitstatus package to give git status in the powerline
# Check pip is installed before trying to install
if ! type "$pip" > /dev/null; then
    pip install powerline-gitstatus
fi

##########
# Make sure that the submodules are loaded before seting up the files.
echo "Initiating git submodules and updating them"
git submodule init
git submodule update

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving old .$file from ~ to $olddir"
    mv ~/.$file ~/.dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# Move the powerline_configuration into ~/.config
# Not the folder name has a spelling error its cofiguration

cp -r ~/dotfiles/powerline_cofiguration ~/.config/powerline

