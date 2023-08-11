syn match mdTag ":[a-zA-Z0-9-]\+:"
" syn match mdInlineCode "[^`]\+" contained
" syn region mdInlineCodeRegion start="`" end="`" contains=mdInlineCode
" syn region mdInlineCode start="`" end="`"
" syn match mdInlineCodeSlash "[\\]" containedin=mdInlineCode

