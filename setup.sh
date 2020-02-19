echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get > /dev/null; then
        sudo apt-get install -y  gcc vim git ctags vim-scripts vim-doc astyle
elif which yum >/dev/null;then
        sudo yum install -y  gcc vim git ctags vim-scripts vim-doc astyle
elif which brew > /dev/null ;then
        echo "you are using HomeBrew tool"
        brew install  vim git ctags vim-scripts vim-doc astyle
fi
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

mv -f ~/vim  ~/vim_old
cd ~/ && git clone https://github.com/wmh11112345/config_vim.git
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/config_vim/.vimrc ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "正在安装bundle程序" > config_vim_log
echo "安装完毕将自动退出" >> config_vim_log
echo "请耐心等待" >> config_vim_log

vim config_vim_log -c "PlugInstall" -c "q" -c "q"
rm -f  config_vim_log
echo "安装完成"    

