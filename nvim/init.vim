" lua require("pack")

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

" Show line numbers.
set number

" Show completion options in command mode.
set wildmenu
set wildoptions+=fuzzy

set laststatus=2

set tags=./tags;,tags;

if executable('rg')
    set grepprg=rg\ -nH
endif

colorscheme mine

if g:colors_name == "mine"
    augroup bracket_hl
        au!
        au Syntax * syn match Braces display "[{}()]" containedin=ALL
    augroup END
    hi Braces guifg=#719611 ctermfg=64
endif

" Keymaps.
inoremap jk <Esc>
noremap <BS> <C-^>

noremap gh <C-w><C-h>
noremap gj <C-w><C-j>
noremap gk <C-w><C-k>
noremap gl <C-w><C-l>

tnoremap jk <C-\><C-n>

cnoremap <S-]> <C-R>=split(expand('<cword>'), '\ze[A-Z]')[0]<CR>

" NOTE: Uncomment the following to use cscope. *cscope_maps.nvim* will
" have to be added to the plugin list if using lua config.

" Find all references to the token under cursor.
noremap <leader>cs :Cscope find s <C-R>=expand("<cword>")<CR><CR>
" Find global definition(s) of the token under cursor.
noremap <leader>cg :Cscope find g <C-R>=expand("<cword>")<CR><CR>
" Find all calls to the function name under cursor.
noremap <leader>cc :Cscope find c <C-R>=expand("<cword>")<CR><CR>
" Find all instances of the text under cursor.
noremap <leader>ct :Cscope find t <C-R>=expand("<cword>")<CR><CR>
noremap <leader>ce :Cscope find e <C-R>=expand("<cword>")<CR><CR>
noremap <leader>cf :Cscope find f <C-R>=expand("<cfile>")<CR><CR>
noremap <leader>ci :Cscope find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap <leader>cd :Cscope find d <C-R>=expand("<cword>")<CR><CR>
noremap <leader>ca :Cscope find a <C-R>=expand("<cword>")<CR><CR>
noremap <leader>cb :Cscope build<CR>
noremap <leader>c] :Cstag <C-R>=expand("<cword>")<CR><CR>

" lua << EOF
" -- Add cscope support for newer versions of nvim.
" require("cscope_maps").setup({
"     disable_maps = true
" })
" EOF

" MSYS2 specific settings.
if $SHELL == "C:\\msys64\\usr\\bin\\bash.exe" ||
            \ $SHELL == "C:\\msys64\\usr\\bin\\zsh.exe"
    let &shellcmdflag = '-c'
    set shellxquote=(
    set shellslash
    set makeprg="C:\\msys64\\ucrt64\\bin\\mingw32-make.exe"
endif

