#! /bin/bash
cd 

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install zsh
apt-get install zsh
# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#git clone git@github.com:huang1000/env_setup.git 
git clone https://github.com/huang1000/env_setup.git

sudo curl -o /usr/local/bin/imgcat -O https://iterm2.com/utilities/imgcat && sudo chmod +x /usr/local/bin/imgcat
