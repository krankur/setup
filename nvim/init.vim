" ======================================================================
" MSYS2 specific settings
" ======================================================================
if $SHELL == "C:\\msys64\\usr\\bin\\bash.exe" ||
            \ $SHELL == "C:\\msys64\\usr\\bin\\zsh.exe"
    let &shell="C:/msys64/usr/bin/zsh.exe"
    let &shellcmdflag='-c'
    set shellxquote=(
    set shellslash
    set makeprg="C:\\msys64\\ucrt64\\bin\\mingw32-make.exe"
endif

" ======================================================================
" NeoVim specific settings and mappings
" ======================================================================
if has("nvim")
    " Neovim-only Plugin Settings.
    lua require("pack")

    " Add cscope support for newer versions of nvim.
    lua require("cscope_maps").setup({ disable_maps = true })

    " Find all references to the token under cursor.
    nnoremap <leader>cs :Cscope find s <C-R>=expand("<cword>")<CR><CR>
    " Find global definition(s) of the token under cursor.
    nnoremap <leader>cg :Cscope find g <C-R>=expand("<cword>")<CR><CR>
    " Find all calls to the function name under cursor.
    nnoremap <leader>cc :Cscope find c <C-R>=expand("<cword>")<CR><CR>
    " Find all instances of the text under cursor.
    nnoremap <leader>ct :Cscope find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>ce :Cscope find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>cf :Cscope find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <leader>ci :Cscope find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <leader>cd :Cscope find d <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>ca :Cscope find a <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>cb :Cscope build<CR>
    nnoremap <leader>c] :Cstag <C-R>=expand("<cword>")<CR><CR>
endif

" ======================================================================
" Settings
" ======================================================================

" Detect filetype.
filetype plugin indent on
" Enable syntax highlighting.
syntax on
set termguicolors

" Don't show cursorline in netrw.
let g:netrw_cursor=0
let b:vcm_tab_complete="tags"

" This is a built-in plugin.
" Add ability to hit `%` on `if` to jump to `else`.
packadd! matchit

" Indentation.
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Make backspace work across lines in insert mode.
set backspace=indent,eol,start

set nowrap

" Look in header files as well during code completion.
set complete+=d
" Don't autoselect any option when auto-completion is triggered.
" set completeopt+=longest

" Keep buffers loaded unless explicitly closed.
set hidden

" Search as you type.
set incsearch

set ignorecase
set smartcase

" Show line numbers.
set number

" Show completion options in command mode.
set wildmenu
set wildoptions+=fuzzy

set laststatus=2

set tags=./tags;,tags;

if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

colorscheme mine

if g:colors_name == "mine"
    augroup bracket_hl
        au!
        au Syntax * syn match Braces display "[{}()]" containedin=ALL
    augroup END
    hi Braces guifg=#719611 ctermfg=64
endif

" ======================================================================
" Mappings
" ======================================================================

" Available g Commands

" >> ga: print ascii value of char under cursor
" gb: na
" gc: na
" gd: go to definition locally
" > gh: start Select mode
" > gi: jump to the last edit pos in curr buf
" > gj: differs from 'j' when lines wrap
" > gk: differs from 'k' when lines wrap
" gl: na 
" > go: cursor to nth byte in buffer
" g[: na
" > gr: virtaul replace n chars
" > gs: go to sleep for n seconds

" [w: na
" [r: na
" > [g: na
" [v: na
" [h: na
" [j: na

" Important Actions

" > jump between windows
" > navigate through the MRU files list
" > jump to a definition and back
" > jump to a reference
" > jump back and forth in the jumplist

" > find a file
" search for the word under the cursor in all files
" search for a term in all files
" search and replace a term in all files

" > generate tags
" > build
" run
" test
" lint
" format
" debug

inoremap jk <Esc>
tnoremap jk <C-\><C-n>
nnoremap <BS> <C-^>

" Jump between windows.
nnoremap gh <C-w><C-h>
nnoremap gj <C-w><C-j>
nnoremap gk <C-w><C-k>
nnoremap gl <C-w><C-l>

" Jump to tag definition and back.
nnoremap gi <C-]>
nnoremap go <C-t>

nnoremap ga :MRU<CR>j
nnoremap gs :grep! <cword><CR><bar>:copen<CR>

nnoremap [g :!gentags<CR>

" Jump back and forth within the jump list.
nnoremap <Tab>j <C-i>
nnoremap <Tab>k <C-o>

nnoremap <Tab>h ^
nnoremap <Tab>l $

nnoremap <Tab>o <C-w><C-o>

nnoremap <Tab>d :DeleteHiddenBuffers<CR>
nnoremap <Tab>t :vsplit<bar>:terminal<CR>
" Alt. mappings for the overridden ones.
nnoremap <Tab>a ga
nnoremap <Tab>i gi
" nnoremap <Tab>j gj
" nnoremap <Tab>k gk
nnoremap <Tab>b :make<bar>:copen<CR>
nnoremap <Tab>v :source $MYVIMRC<CR>

" NEED TO VERIFY
nnoremap <Tab>r :cfdo %s//ge <bar> update

autocmd Filetype c setlocal makeprg=./build.sh

autocmd Filetype netrw nnoremap <buffer> gh <C-w><C-h>
autocmd Filetype netrw nnoremap <buffer> gj <C-w><C-j>
autocmd Filetype netrw nnoremap <buffer> gk <C-w><C-k>
autocmd Filetype netrw nnoremap <buffer> gl <C-w><C-l>

