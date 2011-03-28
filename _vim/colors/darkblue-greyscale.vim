" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkblue-greyscale"

hi Normal				ctermfg=gray			ctermbg=black
hi ErrorMsg			ctermfg=white			ctermbg=lightblue
hi Visual				ctermfg=lightblue	ctermbg=fg				cterm=reverse
hi VisualNOS		ctermfg=lightblue	ctermbg=fg				cterm=reverse,underline
hi Todo					ctermfg=red				ctermbg=darkblue
hi Search				ctermfg=white			ctermbg=darkblue	cterm=underline
hi IncSearch		ctermfg=darkblue	ctermbg=gray

hi SpecialKey		ctermfg=darkcyan
hi Directory		ctermfg=cyan
hi Title				ctermfg=magenta		cterm=bold
hi WarningMsg		ctermfg=red
hi WildMenu			ctermfg=yellow		ctermbg=black			cterm=none
hi ModeMsg			ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			ctermfg=green			cterm=none
hi NonText			ctermfg=darkblue

hi StatusLine		ctermfg=blue			ctermbg=gray cterm=none
hi StatusLineNC	ctermfg=black			ctermbg=gray cterm=none
hi VertSplit		ctermfg=black			ctermbg=gray cterm=none

hi Folded				ctermfg=darkgrey	ctermbg=black cterm=bold
hi FoldColumn		ctermfg=darkgrey	ctermbg=black cterm=bold
hi LineNr				ctermfg=green			cterm=none

hi DiffAdd			ctermbg=darkblue	cterm=none
hi DiffChange		ctermbg=magenta		cterm=none
hi DiffDelete		ctermfg=blue			ctermbg=cyan
hi DiffText			cterm=bold				ctermbg=red

hi Cursor				ctermfg=black			ctermbg=yellow
hi lCursor			ctermfg=black			ctermbg=white


hi Comment			ctermfg=darkred
hi Constant			ctermfg=magenta		cterm=none
hi Special			ctermfg=brown			cterm=none
hi Identifier		ctermfg=cyan			cterm=none
hi Statement		ctermfg=yellow		cterm=none
hi PreProc			ctermfg=magenta		cterm=none
hi type					ctermfg=green			cterm=none
hi Underlined		cterm=underline
hi Ignore				ctermfg=bg
