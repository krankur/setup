" vim-bootstrap 

"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

" let g:vim_bootstrap_langs = "rust"
" let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
call plug#end()

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
set nocompatible " don't pretend to be vi
syntax enable " enable syntax highlighting
filetype plugin on " detect filetype and use filetype specific plugins
set wildmenu
colorscheme gruvbox " set theme

" Indentation
set tabstop=4 " set tab width to 4 spaces
set shiftwidth=4 " set indent width using '>' to 4 spaces
set expandtab " set tab to be spaces

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set number relativenumber" show hybrid line numbers
set cursorline " highlight current line

set lazyredraw

set clipboard=unnamed

"*****************************************************************************
"" Coc config
"*****************************************************************************
let g:coc_global_extensions = [
\ 'coc-rls'
\ ]

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Text search setup using ripgrep
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
    \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%'), <bang>0) 



"*****************************************************************************
"" Key Mappings
"*****************************************************************************
inoremap jj <Esc> " use jj to switch to normal mode
nnoremap <C-p> :Files<Cr> " fzf file search using ctrl+P

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" CtrlSF (search across files)
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nnoremap <C-F>b :CtrlSF -R '\b\b'<Left><Left><Left>
nnoremap <C-F>B :CtrlSF -R '\b<c-r>=expand("<cword>")<cr>\b'<Left><Left><Left>
nnoremap <C-F>s :CtrlSF -S -R '\b\b'<Left><Left><Left>
nnoremap <C-F>S :CtrlSF -S -R '\b<c-r>=expand("<cword>")<cr>\b'<Left><Left><Left>
