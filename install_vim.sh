cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=~/anaconda2/lib/python2.7/config \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-cscope \

sudo make install
