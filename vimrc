" vim-bootstrap 

"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
    if !executable('curl')
        echoerr 'You have to install curl or first install vim-plug yourself!'
        execute 'q!'
    endif
    echo 'Installing Vim-Plug...'
    echo ''
    silent exec '!\curl -fLo ' . vimplug_exists . 
        / ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    let g:not_finish_vimplug = 'yes'

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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'takac/vim-hardtime'
call plug#end()

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
set nocompatible " Don't pretend to be vi
syntax enable " Enable syntax highlighting
filetype plugin on " Detect filetype and use filetype specific plugins
runtime macros/matchit.vim " Enable matchit plugin
set wildmenu " Activate command line completion
colorscheme gruvbox " Set theme
set colorcolumn=120 " Line length limit indicator
set number relativenumber " Show hybrid line numbers
set cursorline " Highlight current line
set lazyredraw " Lazy screen redraw
set clipboard=unnamed " Enable pasting from clipboard
let g:hardtime_default_on = 1 " set hardtime on by default for all buffers

" Indentation
set tabstop=4 " Set tab width to 4 spaces
set shiftwidth=4 " Set indent width using '>' to 4 spaces
set expandtab " Set tab to be spaces

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"*****************************************************************************
"" Coc config
"*****************************************************************************
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-emmet',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-rust-analyzer',
    \ 'coc-tsserver'
    \ ]

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Text search setup using ripgrep
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case '
    \       .shellescape(<q-args>),
    \   1,
    \   fzf#vim#with_preview(
    \       { 'options': '--delimiter : --nth 4..' },
    \       'right:50%'
    \   ),
    \   <bang>0) 

"*****************************************************************************
"" Key Mappings
"*****************************************************************************
" Fzf file search using ctrl+P
nnoremap <C-p> :Files<Cr>

"" GoTo code navigation.
" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to type definition
nmap <silent> gy <Plug>(coc-type-definition)
" Go to implementation
nmap <silent> gi <Plug>(coc-implementation)
" Go to references
nmap <silent> gr <Plug>(coc-references)

"" CtrlSF (search across files)
" Open project search
nmap <C-F>f <Plug>CtrlSFPrompt
" Open project search with highlighted text as search query
vmap <C-F>f <Plug>CtrlSFVwordPath
" Open project search with highlighted text as search query and execute immediately
vmap <C-F>F <Plug>CtrlSFVwordExec
" Open project search with the word under cursor as search query
nmap <C-F>n <Plug>CtrlSFCwordPath
" Open project search with the word under cursor as search query with word boundary
nmap <C-F>B <Plug>CtrlSFCCwordPath
" Open project search with the word under cursor as the last search pattern for vim
nmap <C-F>p <Plug>CtrlSFPwordPath
" Open search result window 
nnoremap <C-F>o :CtrlSFOpen<CR>
" Toggle search result window 
nnoremap <C-F>t :CtrlSFToggle<CR>
" Toggle search result window from insert mode
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
" Open project search to search word with boundary
nnoremap <C-F>b :CtrlSF -R '\b\b'<Left><Left><Left>
" Open project search to perform a case sensitive search with word boundary
nnoremap <C-F>s :CtrlSF -S -R '\b\b'<Left><Left><Left>
" Open project search to perform a case sensitive search with word boundary
" with word under the cursor as search query
nnoremap <C-F>S :CtrlSF -S -R '\b<c-r>=expand("<cword>")<cr>\b'<Left><Left><Left>
