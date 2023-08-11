" Vim color file - mine
" Generated by http://bytefluent.com/vivify 2023-07-30
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "mine"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#ddd6c0 guibg=#2c2824 guisp=#2c2824 gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#000000 guibg=#ff8800 guisp=#ff8800 gui=NONE ctermfg=0 ctermbg=208 cterm=NONE
hi WildMenu guifg=#000000 guibg=#87ceeb guisp=#87ceeb gui=NONE ctermfg=0 ctermbg=113 cterm=NONE
hi SignColumn guifg=#192224 guibg=#363636 guisp=#363636 gui=NONE ctermfg=235 ctermbg=238 cterm=NONE
" hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
" hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#778888 guibg=#2c2824 guisp=#2c2824 gui=bold ctermfg=66 ctermbg=236 cterm=bold
hi Folded guifg=#888078 guibg=#3c3434 guisp=#3c3434 gui=italic ctermfg=101 ctermbg=237 cterm=NONE
" hi PreCondit guifg=#ddcca8 guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
" hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#2c2824 guibg=#dddc60 guisp=#dddc60 gui=bold ctermfg=235 ctermbg=144 cterm=bold
hi StatusLineNC guifg=#000000 guibg=#48403a guisp=#48403a gui=bold ctermfg=0 ctermbg=238 cterm=bold
hi NonText guifg=#666046 guibg=NONE guisp=NONE gui=italic ctermfg=241 ctermbg=NONE cterm=NONE
hi DiffText guifg=#00ffff guibg=#224455 guisp=#224455 gui=NONE ctermfg=14 ctermbg=24 cterm=NONE
hi ErrorMsg guifg=#ff6a6a guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
" hi PMenuSbar guifg=NONE guibg=#9d9080 guisp=#9d9080 gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE
hi Identifier guifg=#998877 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
" hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
" hi Conditional guifg=#909a9f guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
" hi StorageClass guifg=#ddd6c0 guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Todo guifg=#8f6f8f guibg=#202020 guisp=#202020 gui=NONE ctermfg=96 ctermbg=235 cterm=NONE
hi Special guifg=#719611 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi LineNr guifg=#807060 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#9d9080 guisp=#9d9080 gui=bold ctermfg=0 ctermbg=247 cterm=bold
" hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#000000 guibg=#ee9944 guisp=#ee9944 gui=NONE ctermfg=0 ctermbg=215 cterm=NONE
" hi Search guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
" hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#909a9f guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
hi SpellRare guifg=NONE guibg=NONE guisp=#ff00ff gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Comment guifg=#707070 guibg=NONE guisp=NONE gui=italic ctermfg=243 ctermbg=NONE cterm=NONE
" hi Character guifg=#cc8800 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
" hi Float guifg=#cc8800 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi Number guifg=#cc8800 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Boolean guifg=#cc8800 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
" hi Operator guifg=#998877 guibg=NONE guisp=NONE gui=bold ctermfg=138 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#000000 guisp=NONE gui=NONE ctermfg=NONE ctermbg=0 cterm=NONE
hi TabLineFill guifg=#9d9080 guibg=#ddd6c0 guisp=#ddd6c0 gui=bold ctermfg=247 ctermbg=187 cterm=bold
hi WarningMsg guifg=#ee9a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
" hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#554422 guisp=#554422 gui=NONE ctermfg=NONE ctermbg=94 cterm=NONE
hi ModeMsg guifg=#000000 guibg=#719611 guisp=#719611 gui=bold ctermfg=0 ctermbg=10 cterm=bold
hi CursorColumn guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=0 cterm=NONE
" hi Define guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#ddcca8 guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#68838b guibg=#4b4b4b guisp=#4b4b4b gui=italic ctermfg=66 ctermbg=239 cterm=NONE
hi PreProc guifg=#bbaa88 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Visual guifg=#000000 guibg=#768798 guisp=#768798 gui=NONE ctermfg=0 ctermbg=110 cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=NONE guisp=NONE gui=bold ctermfg=29 ctermbg=NONE cterm=bold
hi SpellCap guifg=NONE guibg=NONE guisp=#0000ff gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit guifg=#48403a guibg=#48403a guisp=#48403a gui=bold ctermfg=238 ctermbg=238 cterm=bold
" hi Exception guifg=#ddd6c0 guibg=NONE guisp=NONE gui=bold ctermfg=187 ctermbg=NONE cterm=bold
hi Keyword guifg=#909a9f guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
hi Type guifg=#996644 guibg=NONE guisp=NONE gui=bold ctermfg=137 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#224455 guisp=#224455 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Cursor guifg=NONE guibg=#626262 guisp=#626262 gui=NONE ctermfg=NONE ctermbg=241 cterm=NONE
hi SpellLocal guifg=NONE guibg=NONE guisp=#008b8b gui=underline ctermfg=0 ctermbg=0 cterm=underline
hi Error guifg=#ff6a6a guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#000000 guibg=#ccc0aa guisp=#ccc0aa gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi SpecialKey guifg=#cc6644 guibg=NONE guisp=NONE gui=italic ctermfg=167 ctermbg=NONE cterm=NONE
hi Constant guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
" hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#aaaa99 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
" hi PMenuThumb guifg=NONE guibg=#48403a guisp=#48403a gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi MatchParen guifg=#fff000 guibg=NONE guisp=NONE gui=bold ctermfg=226 ctermbg=NONE cterm=bold
" hi Repeat guifg=#909a9f guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
hi SpellBad guifg=NONE guibg=NONE guisp=#ee2c2c gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Directory guifg=#ddaa66 guibg=NONE guisp=NONE gui=bold ctermfg=179 ctermbg=NONE cterm=bold
" hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
" hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
" hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#445544 guisp=#445544 gui=NONE ctermfg=NONE ctermbg=65 cterm=NONE
hi TabLine guifg=#ddd6c0 guibg=#9d9080 guisp=#9d9080 gui=bold ctermfg=187 ctermbg=247 cterm=bold
" hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi Visual guifg=#000000 guibg=#768798 guisp=#768798 gui=NONE ctermfg=0 ctermbg=243 cterm=NONE

" hi htmlBold guifg=#909a9f guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
" hi htmlBold guifg=#cd7c54 guibg=NONE guisp=NONE gui=bold ctermfg=247 ctermbg=NONE cterm=bold
" hi htmlBold guifg=#bbaa88 guibg=#423a31 guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi htmlBold guifg=#719611 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
" hi htmlItalic guifg=#bbaa88 guibg=NONE guisp=NONE gui=italic ctermfg=144 ctermbg=NONE cterm=NONE
hi htmlItalic guifg=#bbaa88 guibg=NONE guisp=NONE gui=italic ctermfg=144 ctermbg=NONE cterm=NONE
" Red
hi markdownCode guifg=#cd7c54 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" Yellow
" hi mdInlineCode guifg=#bd9700 guibg=NONE guisp=NONE gui=italic ctermfg=167 ctermbg=NONE cterm=NONE
" Light Green
hi markdownLinkText guifg=#A9B665 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" Purple
" hi markdownCodeBlock guifg=#D3869B guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi markdownCodeBlock guifg=#A9B665 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi mdCodeBlock guifg=#D3869B guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi mdInlineCode guifg=#9ba858 guibg=NONE guisp=NONE gui=italic ctermfg=167 ctermbg=NONE cterm=NONE
" hi mdInlineCode guifg=#a4a858 guibg=NONE guisp=NONE gui=italic ctermfg=167 ctermbg=NONE cterm=NONE
" hi mdInlineCode guifg=#bbaa88 guibg=#423a31 guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" hi markdownCodeBlock guifg=#bbaa88 guibg=#423a31 guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE

hi default link mdTag Comment
hi default link mdInlineCodeRegion Special
" hi default link mdInlineCodeSlash Type
" hi default link markdownCode Type
" hi default link markdownCodeBlock Type
" hi default link markdownCodeDelimiter Type
hi default link markdownCodeBlock markdownCode
hi default link markdownCodeDelimiter Type
hi default link markdownUrl markdownLinkText
hi default link markdownLinkDelimiter markdownLinkText
hi default link markdownLinkTextDelimiter markdownLinkText

