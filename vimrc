set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

set number 
set relativenumber 
set tabstop=2 
set shiftwidth=2 
set autoindent
set smartindent
set clipboard=unnamedplus
let g:airline#extensions#tabline#left_set = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

