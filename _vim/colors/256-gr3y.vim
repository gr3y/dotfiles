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


hi Normal          ctermfg=253    ctermbg=233    cterm=None
hi Cursor          ctermfg=160    ctermbg=None   cterm=None
hi SpecialKey      ctermfg=27     ctermbg=None   cterm=Bold
hi Directory       ctermfg=76     ctermbg=None   cterm=None
hi ErrorMsg        ctermfg=124    ctermbg=None   cterm=None
hi PreProc         ctermfg=246    ctermbg=None   cterm=Bold
hi Search          ctermfg=154    ctermbg=None   cterm=Bold
hi Type            ctermfg=75     ctermbg=None   cterm=Bold
hi Statement       ctermfg=75     ctermbg=None   cterm=None
hi Comment         ctermfg=244    ctermbg=None   cterm=None
hi Identifier      ctermfg=111    ctermbg=None   cterm=Bold
hi DiffText        ctermfg=88     ctermbg=250    cterm=None
hi Constant        ctermfg=208    ctermbg=None   cterm=None
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
hi NonText         ctermfg=27     ctermbg=None   cterm=Bold
                   
                   
hi Pmenu           ctermfg=75     ctermbg=232    cterm=None
hi PmenuSel        ctermfg=208    ctermbg=232    cterm=Bold
hi PmenuSbar       ctermfg=232    ctermbg=232    cterm=None
hi PmenuThumb      ctermfg=232    ctermbg=232    cterm=None

