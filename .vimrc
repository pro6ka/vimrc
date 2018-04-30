set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set number
set nocompatible
set autoindent
set tags+=~/sites/devilbox/data/www/bx-key/htdocs/tags
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
