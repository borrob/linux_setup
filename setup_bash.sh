#! /bin/bash

# SETUP BASH
echo '' >> ~/.bashrc
echo "# ROB FAV SETTINGS" >> ~/.bashrc
echo alias dir=\'ls -lFGh\' >> ~/.bashrc
echo alias rm=\'rm -i\' >> ~/.bashrc
echo export PS1='"[\t][\u@\W]:"' >> ~/.bashrc

source ~/.bashrc

# SETUP PSQL
echo \set PROMPT1 \'[%`date +%H:%M:%S`][%/@%m]:#\' >> ~/.psqlrc
echo \pset null \'[null]\' >> ~/.psqlrc
echo \pset format wrapped >> ~/.psqlrc
echo \pset border 2 >> ~/.psqlrc

# SETUP VIM
rm -rf ~/.vim_old
mv ~/.vim ~/.vim_old
mkdir ~/.vim
# pathogen
rm -rf pathogen
git clone git://github.com/tpope/vim-pathogen.git pathogen
mv pathogen/autoload ~/.vim/autoload
rm -rf pathogen
cd ~/.vim
git init
git add .
git commit -m "Initial commit"
# Delimitmate
cd ~/.vim
git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate
git submodule init && git submodule update
git commit -am 'Install delimitmate'
# CloseTag
cd ~/.vim
git submodule add git://github.com/docunext/closetag.vim.git bundle/closetag
git submodule init && git submodule update
git commit -am 'Install Closetag'
#SuperTab
cd ~/.vim
git submodule add git://github.com/ervandew/supertab.git bundle/supertab
git submodule init && git submodule update
git commit -am 'Install Supertab'

# settings vimrc
echo set number >> ~/.vimrc
echo set autoindent >> ~/.vimrc
echo set smartindent >> ~/.vimrc
echo set tabstop=4 >> ~/.vimrc
echo set shiftwidth=4 >> ~/.vimrc
echo set scrolloff=100 >> ~/.vimrc
echo set wrap >> ~/.vimrc
echo set linebreak >> ~/.vimrc
echo let &showbreak = '>>> ' >> ~/.vimrc
echo au filetype python set expandtab >> ~/.vimrc
echo syntax enable >> ~/.vimrc
echo set foldmethod=indent >> ~/.vimrc
echo  >> ~/.vimrc
echo "call pathogen#infect()" >> ~/.vimrc
echo 'call pathogen#helptags()' >> ~/.vimrc
echo  >> ~/.vimrc
echo 'set list listchars=tab:\\|_,trail:·' >> ~/.vimrc
echo highlight OverLength ctermbg=red ctermfg=white guibg=#592929 >> ~/.vimrc
echo highlight FourSpaces ctermbg=lightgray ctermfg=white guibg=#592929 >> ~/.vimrc
echo match OverLength /\\%81v./ >> ~/.vimrc
echo 2match FourSpaces \"\ \ \ \ \" >> ~/.vimrc
echo set hlsearch >> ~/.vimrc
