" Vim color file - 256_gr3y
" Generated by http://bytefluent.com/vivify 2012-12-15
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "256_gr3y"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi Typedef guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi Title -- no settings --
hi Folded guifg=#5fafff guibg=#080808 guisp=#080808 gui=NONE ctermfg=75 ctermbg=232 cterm=NONE
hi PreCondit guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
hi Include guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Float guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#9e9e9e guibg=#080808 guisp=#080808 gui=NONE ctermfg=247 ctermbg=232 cterm=NONE
hi CTagsMember guifg=#909090 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=127 cterm=NONE
hi NonText guifg=#005fff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
hi CTagsGlobalConstant guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi DiffText guifg=#870000 guibg=#bcbcbc guisp=#bcbcbc gui=NONE ctermfg=88 ctermbg=250 cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi Ignore guifg=#ffdf00 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Debug guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#080808 guibg=#080808 guisp=#080808 gui=NONE ctermfg=232 ctermbg=232 cterm=NONE
hi Identifier guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi Conditional guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi Todo guifg=#080808 guibg=#87ff00 guisp=#87ff00 gui=NONE ctermfg=232 ctermbg=118 cterm=NONE
hi Special guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=BOLD
hi LineNr guifg=#9e9e9e guibg=#080808 guisp=#080808 gui=NONE ctermfg=247 ctermbg=232 cterm=NONE
hi StatusLine guifg=#9e9e9e guibg=#080808 guisp=#080808 gui=NONE ctermfg=247 ctermbg=232 cterm=NONE
hi Normal guifg=#808080 guibg=#121212 guisp=#121212 gui=NONE ctermfg=244 ctermbg=233 cterm=NONE
hi Label guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#ff8700 guibg=#080808 guisp=#080808 gui=NONE ctermfg=208 ctermbg=232 cterm=NONE
hi Search guifg=#ff0056 guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi Statement guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Character guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi Number guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Boolean guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi Operator guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
hi WarningMsg guifg=#ff005e guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
"hi VisualNOS -- no settings --
hi DiffDelete guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
hi Define guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
hi Function guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#5fafff guibg=#080808 guisp=#080808 gui=NONE ctermfg=75 ctermbg=232 cterm=NONE
hi PreProc guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#9e9e9e guibg=#080808 guisp=#080808 gui=NONE ctermfg=247 ctermbg=232 cterm=NONE
hi Exception guifg=#ff005e guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Keyword guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi Type guifg=#5fafff guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi DiffChange guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Cursor guifg=#121212 guibg=#ff8700 guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#d70000 guibg=#080808 guisp=#080808 gui=NONE ctermfg=160 ctermbg=232 cterm=NONE
hi PMenu guifg=#5fafff guibg=#080808 guisp=#080808 gui=NONE ctermfg=75 ctermbg=232 cterm=NONE
hi SpecialKey guifg=#005fff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
hi Constant guifg=#ff8800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
hi String guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#080808 guibg=#080808 guisp=#080808 gui=NONE ctermfg=232 ctermbg=232 cterm=NONE
hi MatchParen guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi LocalVariable guifg=#88cf42 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi Repeat guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
hi CTagsClass guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Directory guifg=#5fd700 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi Structure guifg=#5fafff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi Macro guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
hi DiffAdd guifg=#afff00 guibg=NONE guisp=NONE gui=NONE ctermfg=154 ctermbg=NONE cterm=NONE
"hi TabLine -- no settings --
hi underline guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#080808 guisp=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
