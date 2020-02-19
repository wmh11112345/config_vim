echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get > /dev/null; then
        sudo apt-get install -y  gcc vim git ctags vim-scripts vim-doc astyle
elif which yum >/dev/null;then
        sudo yum install -y  gcc vim git ctags vim-scripts vim-doc astyle
elif which brew > /dev/null ;then
        echo "you are using HomeBrew tool"
        brew install  vim git ctags vim-scripts vim-doc astyle

sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

mv -f ~/vim  ~/vim_old
cd ~/ && git clone https:   
