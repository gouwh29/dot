#!/bin/bash

rootpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd

ln -s $rootpath/.my.bashrc .
[[ ! -f .bash_profile ]] && ln -s $rootpath/.bash_profile .

# These files are safe to force link
ln -sf $rootpath/.Rprofile .
ln -sf $rootpath/.Xresources .
ln -sf $rootpath/.terminfo .
ln -sf $rootpath/.tmux.conf .

chmod 600 .ssh/config

cd -

