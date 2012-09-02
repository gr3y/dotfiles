"
"   @@@@@@@@  @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@    @@@@@@@   @@@@@@   @@@       @@@@@@@@
"  @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@       @@@@@@@@
"  !@@        @@!  @@@  @@!       @@! !@@  !@@       !@@       @@!  @@@  @@!       @@!
"  !@!        !@!  @!@  !@!       !@! @!!  !@!       !@!       !@!  @!@  !@!       !@!
"  !@! @!@!@  @!@!!@!   @!!!:!     !@!@!   !!@@!!    !@!       @!@!@!@!  @!!       @!!!:!
"  !!! !!@!!  !!@!@!    !!!!!:      @!!!    !!@!!!   !!!       !!!@!!!!  !!!       !!!!!:
"  :!!   !!:  !!: :!!   !!:         !!:         !:!  :!!       !!:  !!!  !!:       !!:
"  :!:   !::  :!:  !:!  :!:         :!:        !:!   :!:       :!:  !:!   :!:      :!:
"   ::: ::::  ::   :::   :: ::::     ::    :::: ::    ::: :::  ::   :::   :: ::::   :: ::::
"   :: :: :    :   : :  : :: ::      :     :: : :     :: :: :   :   : :  : :: : :  : :: ::
"
"    .: FILE:          256-gr3y.vim
"    .: CREATED:       2011-03-28 17:11
"    .: AUTHOR:        Andreas Persson (greyscale, grey)
"    .: MAIL:          <andreas(at)greyscale(dot)se>
"    .: VERSION:       1.0
"    .: DESCRIPTION:   Some minor changes of Piotr Husiatyński (phusiatynski(at)gmail(dot)com)
"                      256-grayvim vim theme.
"
"                      Orignal theme is found at:
"                      http://www.vim.org/scripts/script.php?script_id=3062
"
"                      Also added support for using it in GUI
"
" __________________________________________________________________________________________
"  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
"  minded that it comes with absolutely no warranty. But then again you got it for free..
" __________________________________________________________________________________________
"

set background=dark
set t_Co=256
let g:colors_name="256-gr3y"

let python_highlight_all = 1
let c_gnu = 1


if has('gui_running')
  hi Normal          guifg=#dadada        guibg=#121212
  hi Cursor          guifg=#d70000
  hi SpecialKey      guifg=#005fff                              gui=Bold
  hi Directory       guifg=#5fd700
  hi ErrorMsg        guifg=#af0000
  hi PreProc         guifg=#9e9e9e                              gui=Bold
  hi Search          guifg=#ff0056                              gui=Bold
  "hi Search          guifg=#afff00                              gui=Bold
  hi Type            guifg=#5fafff                              gui=Bold
  hi Function        guifg=#afff00
  "hi Function        guifg=#00dfff
  hi Statement       guifg=#5fafff
  hi Comment         guifg=#808080
  hi Identifier      guifg=#87afff                              gui=Bold
  hi DiffText        guifg=#870000        guibg=#bcbcbc
  hi Constant        guifg=#ff8700
  hi Todo            guifg=#080808        guibg=#87ff00         gui=Bold
  hi Error           guifg=#d70000        guibg=#080808         gui=Bold
  hi Special         guifg=#afff00                   
  hi Ignore          guifg=#ffdf00                              gui=Bold
  hi Underline       guifg=#808080

  hi MatchParen      guifg=#d70000                              gui=Bold
  hi FoldColumn      guifg=#5fafff        guibg=#080808         gui=Bold
  hi Folded          guifg=#5fafff        guibg=#080808         gui=Bold
  hi StatusLineNC    guifg=#9e9e9e        guibg=#080808        
  hi StatusLine      guifg=#9e9e9e        guibg=#080808         gui=Bold
  hi VertSplit       guifg=#9e9e9e        guibg=#080808         gui=Bold
  hi ColorColumn     guibg=#080808
                     
  "hi LineNr          guifg=238            guibg=#808080         gui=Bold
  hi LineNr          guifg=#9e9e9e        guibg=#080808         gui=Bold
  hi NonText         guifg=#005fff                              gui=Bold
                     
                     
  hi Pmenu           guifg=#5fafff        guibg=#080808        
  hi PmenuSel        guifg=#ff8700        guibg=#080808         gui=Bold
  hi PmenuSbar       guifg=#080808        guibg=#080808        
  hi PmenuThumb      guifg=#080808        guibg=#080808        
else
"---------------------------------------------------------------------
  hi Normal          ctermfg=253    ctermbg=233    cterm=None
  hi Cursor          ctermfg=160    ctermbg=None   cterm=None
  hi SpecialKey      ctermfg=27     ctermbg=None   cterm=Bold
  hi Directory       ctermfg=76     ctermbg=None   cterm=None
  hi ErrorMsg        ctermfg=124    ctermbg=None   cterm=None
  hi PreProc         ctermfg=246    ctermbg=None   cterm=Bold
  hi Search          ctermfg=197    ctermbg=None   cterm=Bold
  "hi Search          ctermfg=154    ctermbg=None   cterm=Bold
  hi Type            ctermfg=75     ctermbg=None   cterm=Bold
  hi Function        ctermfg=154     ctermbg=None   cterm=None
  "hi Function        ctermfg=45     ctermbg=None   cterm=None
  hi Statement       ctermfg=75     ctermbg=None   cterm=None
  hi Comment         ctermfg=244    ctermbg=None   cterm=None
  hi Identifier      ctermfg=111    ctermbg=None   cterm=Bold
  hi DiffAdd         ctermfg=154    ctermbg=None   cterm=None
  hi DiffChange      ctermfg=220    ctermbg=None   cterm=None
  hi DiffDelete      ctermfg=75     ctermbg=None   cterm=None
  hi DiffText        ctermfg=247    ctermbg=None   cterm=None
  hi Constant        ctermfg=253    ctermbg=None   cterm=None
  hi StorageClass    ctermfg=75     ctermbg=None   cterm=None
  hi Exception       ctermfg=197    ctermbg=None   cterm=None
  hi javaComment     ctermfg=244    ctermbg=None   cterm=None
  hi javaDocComment  ctermfg=244    ctermbg=None   cterm=None
  hi javaLineComment ctermfg=244    ctermbg=None   cterm=None
  hi javaCommentTitle ctermfg=244    ctermbg=None   cterm=None
  hi javaDocTags     ctermfg=244    ctermbg=None   cterm=None
  hi javaDocParam    ctermfg=244    ctermbg=None   cterm=None
  hi javaDocSeeTagParam ctermfg=244    ctermbg=None   cterm=None
  hi javaCommentStar ctermfg=244    ctermbg=None   cterm=None
  hi Todo            ctermfg=232    ctermbg=118    cterm=Bold
  hi Error           ctermfg=160    ctermbg=232    cterm=Bold
  hi Special         ctermfg=154    ctermbg=None   cterm=None
  hi Ignore          ctermfg=220    ctermbg=None   cterm=Bold
  hi Underline       ctermfg=244    ctermbg=None   cterm=None
                     
                     
  hi MatchParen      ctermfg=160    ctermbg=None   cterm=Bold
  hi FoldColumn      ctermfg=75     ctermbg=232    cterm=Bold
  hi Folded          ctermfg=75     ctermbg=232    cterm=Bold
  hi StatusLineNC    ctermfg=247    ctermbg=232    cterm=None
  hi StatusLine      ctermfg=247    ctermbg=232    cterm=Bold
  hi VertSplit       ctermfg=247    ctermbg=232    cterm=Bold
  hi ColorColumn     ctermbg=232
                     
  "hi LineNr          ctermfg=238    ctermbg=244    cterm=Bold
  hi LineNr          ctermfg=247    ctermbg=232    cterm=Bold
  "hi CursorLine      ctermfg=None    ctermbg=None   cterm=None
  hi NonText         ctermfg=27     ctermbg=None   cterm=Bold
                     
                     
  hi Pmenu           ctermfg=75     ctermbg=232    cterm=None
  hi PmenuSel        ctermfg=208    ctermbg=232    cterm=Bold
  hi PmenuSbar       ctermfg=232    ctermbg=232    cterm=None
  hi PmenuThumb      ctermfg=232    ctermbg=232    cterm=None
end
