if s:is_windows
    set runtimepath+=~/.vim
endif
" ============================================================
" Options / Settings
" ============================================================
set nocompatible
set backspace = indent,eol,start

" Indentation
set tabstop=4 " Set tab width to 4 spaces
set shiftwidth=4 " Set indent width using '>' to 4 spaces
set expandtab " Set tab to be spaces

" Backup, swap & undo files

"set backupdir=vim_home/backup//
"set directory=vim_home/swap//
"set undodir=vim_home/undo//
"set viminfo+=n$VIM/viminfo

set conceallevel=2
syntax enable
filetype plugin on

" ============================================================
" Key Mappings
" ============================================================

let mapleader=" " " Use <Space> as leader

inoremap jk <Esc>

nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>
