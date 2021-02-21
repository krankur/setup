" vim-bootstrap 

"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let $RTP=split(&runtimepath, ',')[0]
let vimplug_exists=expand($RTP . '/autoload/plug.vim')

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

Plug 'liuchengxu/space-vim-dark'
Plug 'sheerun/vim-polyglot'
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
" let g:sonokai_style = 'atlantis'
set nocompatible " Don't pretend to be vi
syntax enable " Enable syntax highlighting
filetype plugin on " Detect filetype and use filetype specific plugins
runtime macros/matchit.vim " Enable matchit plugin
set wildmenu " Activate command line completion
set noswapfile

colorscheme space-vim-dark " Set theme

" colorscheme sonokai " Set theme
set colorcolumn=80 " Line length limit indicator
set number relativenumber " Show hybrid line numbers
set cursorline " Highlight current line
set lazyredraw " Lazy screen redraw
set clipboard=unnamed " Enable pasting from clipboard
let g:hardtime_default_on = 1 " set hardtime on by default for all buffers

set termguicolors " Enable true colors
set guioptions -=m " hide menubar
set guioptions -=T " hide toolbar
set guifont=Cascadia\ Code:h10 " set font
set laststatus=2 " without this lightline won't show

" Indentation
set tabstop=4 " Set tab width to 4 spaces
set shiftwidth=4 " Set indent width using '>' to 4 spaces
set expandtab " Set tab to be spaces

set backspace=indent,eol,start
set hidden
let &fcs='eob: '
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
    \ 'coc-rls',
    \ 'coc-tsserver'
    \ ]

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Text search setup using ripgrep
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

"*****************************************************************************
"" Key Mappings
"*****************************************************************************
let mapleader= ' ' " set <Leader> to SPC
imap jk <Esc>

nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" jump to previous buffer
nnoremap <Leader><TAB> <C-^>

" use TAB to navigate the auto-complete dropdown
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" Fzf file search using SPC P (will use Ripgrep)
nnoremap <Leader>p :Files<Cr>
nnoremap <Leader>b :Buffers<Cr>

"*****************************************************************************
"" GoTo Code Navigation
"*****************************************************************************
" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to type definition
nmap <silent> gy <Plug>(coc-type-definition)
" Go to implementation
nmap <silent> gi <Plug>(coc-implementation)
" Go to references
nmap <silent> gr <Plug>(coc-references)

"*****************************************************************************
"" CtrlSF (search across files)
"*****************************************************************************
let g:ctrlsf_ackprg = 'rg'

" Open project search
nmap <Leader>f <Plug>CtrlSFPrompt
" Open project search with highlighted text as search query
vmap <C-F>f <Plug>CtrlSFVwordPath
" Open project search with highlighted text as search query and execute immediately
vmap <C-F>F <Plug>CtrlSFVwordExec
" Open project search with the word under cursor as search query
nmap <Leader>n <Plug>CtrlSFCwordPath
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
