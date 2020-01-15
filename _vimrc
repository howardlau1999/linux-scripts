set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd vimenter * NERDTree

:set expandtab
:set autochdir
:set sw=4
:set ts=4
:set bs=2
:set autoindent
:set guifont=Inconsolata:h16
:colorscheme slate
:set hlsearch
:set guioptions-=e
:set nolist
:set number
:syntax on
:set smartindent
:set foldmethod=indent
:set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
:set encoding=utf-8
:set langmenu=en_US
:let $LANG='en_US.UTF-8'
:set guioptions-=T
:set guioptions-=m
:set guioptions-=L
:set guioptions-=r
:set guioptions-=b

