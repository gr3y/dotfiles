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
"    .: FILE:          plc-il.vim
"    .: CREATED:       2011-04-29 22:23
"    .: AUTHOR:        Andreas Persson (greyscale, grey)
"    .: MAIL:          <andreas(at)greyscale(dot)se>
"    .: VERSION:       1.0
"    .: DESCRIPTION:   Syntax file for the Instruction List, a assembler like 
"                      programming language for plc's (IEC 61131-3),
"
" __________________________________________________________________________________________
"  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
"  minded that it comes with absolutely no warranty. But then again you got it for free..
" __________________________________________________________________________________________
"

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword LD LDN LDI LD+ LD- LD>
