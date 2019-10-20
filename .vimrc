" setup vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" run
" source ~/.vimrc
" :PluginInstall

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
set backupcopy=yes

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
Plugin 'tobyS/pdv'
Plugin 'napcs/vim-nativescript'
Plugin 'irrationalistic/vim-tasks'
Plugin 'vimwiki/vimwiki'

call vundle#end()
filetype plugin indent on

"---Sprlit Management---"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

"---Mappings---"

"Add simple highlight removal
nmap ,<space> :nohlsearch<CR>

"CtrlP
set wildignore+=/bitrix/*,*.swp,*.zip,*.jpg,*.png,*.swg
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|idea|sublime)$'

"NERDTree
let NERDTreeHijackNetrw = 0
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-d> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-d> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-d> :call PhpDocRange()<CR>
