set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set number
set nocompatible
set autoindent
set tags+=./.vim/tags
set hlsearch
set incsearch

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

"---Sprlit Management---"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

"---Mappings---"

"Add simple highlight removal
nmap ,<space> :nohlsearch<cr>

