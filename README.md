# env_setup

## environment setup
    1. Vundle
    2. zsh (and Oh My Zsh)

 ## Vundle
### Installation: 
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### .vimrc

## ZSH shell (and Oh My Zsh)
https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e
### Zsh:
    - Debian: `$ sudo apt-get install zsh`
    - Red Hat: `$ sudo yum install zsh`
    - Mac: brew install zsh

To set zsh as your default shell, execute the following: 

`sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh`

### Oh My Zsh:
    `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

##### Enabling Plugins
    `$ vi ~/.zshrc`
    To load plugins you want to use:
    `
    plugins=(
      git
      bundler
      dotenv
      osx
      rake
      rbenv
      ruby
    )
    `

