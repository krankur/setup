" =============================================================================
" Filename: colors/minered.vim
" Author: Domino881
" Last Change: 21.06.2020 18:16:36 CEST
" =============================================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "minered"

function! s:HL(group, term, fg, bg)	
	let histr = 'hi ' . a:group 

	if a:term != '' 
		let histr .= ' cterm=' . a:term . ' gui=' . a:term
	endif
	if a:fg != []
		let histr .= ' ctermfg=' . a:fg[0] . ' guifg=' . a:fg[1]
	endif
	if a:bg != []
		let histr .= ' ctermbg=' . a:bg[0] . ' guibg=' . a:bg[1]
	endif

	"echo histr
	execute histr
endfunction


let s:Kdarkdenim = ['060','#5F5F87']
let s:Kaqua      = ['037','#00AFAF']
let s:Kyellow    = ['222','#FFD787']
let s:Klorange   = ['216','#FFAF87']
let s:Korange    = ['209','#FF875F']
let s:Kdyellow   = ['180','#FFAF5F']
let s:Klgreenish = ['109','#87AFAF']
let s:Kmaroon    = ['167','#FF875F']

"__________GROUP________CTERM/GUI______FOREGROUND___________BACKGROUND________
call s:HL('Normal',      'NONE',     ['223','#FFD7AF'],     ['235','#262626'])
call s:HL('Comment',     'italic',   ['242','#6C6C6C'],     [])
call s:HL('LineNr',      '',         ['242','#6C6C6C'],     [])
call s:HL('CursorLineNr','NONE',     s:Kdyellow,            [])
call s:HL('SpecialKey',  '',         ['237','#3A3A3A'],     [])
call s:HL('SignColumn',  'NONE',     [],                    ['NONE','NONE'])
call s:HL('Conceal',     '',         [],                    ['NONE','NONE'])
call s:HL('VertSplit',   'NONE',     ['236','#303030'],     ['NONE','NONE'])
call s:HL('ColorColumn', '',         [],                    ['236','#303030'])
call s:HL('Visual',      'bold',     [],                    ['238','#444444'])
call s:HL('IncSearch',   'reverse',  ['NONE','NONE'],       ['NONE','NONE'])
call s:HL('TablineFill', 'NONE',     [],                    ['234','#1C1C1C'])
call s:HL('TablineSel',  'bold',     ['250','#BCBCBC'],     ['NONE','NONE'])
call s:HL('Tabline',     'NONE',     ['243','#767676'],     ['236','#303030'])
call s:HL('pmenu',       '',         ['243','#767676'],     ['237','#3A3A3A'])

call s:HL('Constant',    '',         s:Kaqua,               [])
call s:HL('String',      'NONE',     s:Klorange,            [])
call s:HL('Character',   '',         s:Klorange,            [])
call s:HL('Identifier',  'NONE',     s:Kyellow,             [])
call s:HL('Statement',   '',         s:Korange,             [])
call s:HL('Preproc',     '',         s:Kyellow,          [])
call s:HL('Type',        'bold',     s:Kmaroon,             [])
call s:HL('Special',     'NONE',     s:Klgreenish,          [])
call s:HL('Folded',      '',         s:Korange,             ['NONE','NONE'])
call s:HL('Search',      'underline',s:Klorange,            ['NONE','NONE'])
call s:HL('MatchParen',  'bold',     s:Kaqua,               ['239','#4e4e4e'])
call s:HL('Underlined',  'underline',s:Kaqua,               [])
call s:HL('Title',       'bold',     s:Korange,             [])
call s:HL('cFormat',     'bold',     s:Korange,             [])
call s:HL('cCustomClass','',         s:Kdyellow,           [])

