#! /bin/sh

# install brew
/bin/bash $(pwd)/install_brew.sh || exit 1


brew_install () {
    echo "brew install $@"
    if brew install $@
    then
        echo "installation completed!"
    else
        echo "installation failed!"
        exit 1
    fi
}

brew_cask_install () {
    echo "brew install --cask $@"
    if brew install --cask $@
    then
        echo "installation completed!"
    else
        echo "installation failed!"
        exit 1
    fi
}

if [ $# -gt 0 ]
then
    brew_cask_install $@
    exit 0
else
    printf "Setting up work environment. Continue? (y/n) "
    read setup
    if [ $setup != 'y' -a $setup != 'Y' ]
    then
        exit 0
    fi
fi

if brew update
then
    echo "brew updated"
else
    echo "brew update failed!"
    exit 1
fi

brew_cask_install iterm2 cheatsheet docker doubletwist flux

brew_install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew_install tree ag gnupg jq

brew_install git
echo "git installed; config git..."
git config --global user.name "Huang Dong"
git config --global user.email "huangdongxy@gmail.com"
git config --global credential.helper osxkeychain
git config --global alias.st status
git config --global alias.co commit
git config --global alias.logg "log --graph --decorate --oneline --abbrev-commit --all"

brew_install vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

# generate ssh key
if [ -f ~/.ssh/id_rsa ]
then
    echo "ssh key already exists; skipping ssh keygen"
else
    printf "ssh key not found. Generating a new ssh? (y/n): "
    read gensshkey
    if [ $gensshkey == 'y' ]
    then
        ssh-keygen -t rsa -b 4096 -C "huangdongxy@gmail.com"
    else
        printf "ssh key missing. exit"
        exit 1
    fi
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_rsa
    # run `pbcopy < ~/.ssh/id_rsa.pub` and paste SSH key to your github website
fi

brew_cask_install visual-studio-code

brew_cask_install intellij-idea-ce adoptopenjdk/openjdk/adoptopenjdk8

brew_install postgres openjdk

brew_install nvm
nvm install node

brew_install go

brew_install mvnvm # maven version manager


brew_cask_install whatsapp telegram
brew_cask_install monitorcontrol rectangle cheasheet numi

brew_cask_install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize qlprettypatch quicklook-csv betterzip  suspicious-package apparency qlvideo

brew_install pandoc
if brew_cask_install basictex
then
    eval "$(/usr/libexec/path_helper)"
    sudo tlmgr update --self
    sudo tlmgr install framed
fi

brew_cask_install imageoptim

brew_cask_install iina iina-plus

brew_cask_install hiddenbar

brew_cask_install pdf-squeezer # pdf-toolbox

brew_cask_install rectangle shottr

brew_install rustup
rustup-init # to verify: rustc --version
