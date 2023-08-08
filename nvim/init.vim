" Detect filetype.
filetype plugin indent on
" Enable syntax highlighting.
syntax on
set termguicolors

" Don't show cursorline in netrw.
let g:netrw_cursor=0

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

" Keep buffers loaded unless explicitly closed.
set hidden

" Search as you type.
set incsearch

" Show line numbers.
set number

" Show completion options in command mode.
set wildmenu

set laststatus=2

set tags=./tags;,tags;

if executable('rg')
    set grepprg=rg\ -nH
endif

colorscheme mine

if g:colors_name == "mine"
    augroup bracket_hl
        au!
        au Syntax * syn match Braces display "[{}()\[\]]" containedin=ALL
    augroup END
    hi Braces guifg=#719611 ctermfg=64
endif

lua << EOF
-- Add cscope support for newer versions of nvim.
require("cscope_maps").setup({
    disable_maps = true
})
EOF

" Keymaps.
inoremap jk <Esc>
noremap <BS> <C-^>

noremap gh <C-w><C-h>
noremap gj <C-w><C-j>
noremap gk <C-w><C-k>
noremap gl <C-w><C-l>

tnoremap jk <C-\><C-n>

nmap <leader>cs :Cscope find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cg :Cscope find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :Cscope find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ct :Cscope find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ce :Cscope find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :Cscope find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>ci :Cscope find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>cd :Cscope find d <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ca :Cscope find a <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cb :Cscope build<CR>
nmap <leader>c] :Cstag <C-R>=expand("<cword>")<CR><CR>

