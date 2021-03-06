set nocompatible
set backspace=2
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set colorcolumn=80
set number
" set foldmethod=indent


" let mapleader=','
" inoremap <leader>w <Esc>:w<cr>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>h
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'yggdroot/indentline'

Plug 'easymotion/vim-easymotion'

" colorscheme
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

Plug 'davidhalter/jedi-vim'

call plug#end()


" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" easymotion/vim-easymotion
nmap ss <Plug>(easymotion-s2)

function AddTitleInfo()
    call append(0, "\# -*- coding: utf-8 -*-")
    call append(1, "")
    call append(2, "\# Author       : o7si")
    call append(3, "\# Email        :")
    call append(4, "\# Created time : ".strftime("%Y-%m-%d %H:%M"))
    call append(5, "\# Filename     : ".expand("%"))
    call append(6, "\# Description  :")
    call append(7, "")
endf

autocmd BufNewFile *.py exec ":call AddTitleInfo()"
