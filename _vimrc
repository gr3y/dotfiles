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
"                        .: .vimrc - 2011-04-01 13:19 :.
"
"                              Settings for vi/vim.
"
"              And remember kids, opening text-files in nano will hurt them...
"
" __________________________________________________________________________________________
"  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
"   minded that it comes with absolutely no warranty. But then again you got it for free..
" __________________________________________________________________________________________
"

set nocompatible
set mouse-=a
set number
set novb
set encoding=utf-8
set termencoding=utf-8
set showmatch
set showmode
set showcmd
set magic
set nobackup
set splitbelow
set splitright
set cursorline




" These pathogen functions need to be invoked before "filetype plugin indent on" if
" you want it to load ftdetect files.
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

set expandtab
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab

set autoindent
set smartindent
set smartcase
set nowrap
set textwidth=120
"set colorcolumn=+1

" Undo files
silent! set undodir=~/.local/tmp/
silent! set undofile

" Folding settings
set foldmethod=syntax
" set foldnestmax=10
set nofoldenable
set foldlevel=2

set lazyredraw
set ttyfast
set sidescroll=2

set laststatus=2
set ruler
"set showtabline=2

set listchars=tab:»·,trail:·


set history=50

" Autotag
""so ~/.vim/bundle/autotag/plugin/autotag.vim


syntax on

if &term == "linux"
  set t_Co=8
  set statusline=%<%F\ %h%m%r%=[TYPE=%Y\ %{&ff}]\ %=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l/%L,%c%V%)\ %P
else
  set t_Co=256
  set background=dark
  colorscheme 256-gr3y
  " colorscheme digerati
  " colorscheme molokai

  " Define some colors.
  hi  User1   ctermfg=75    ctermbg=232     " blue
  hi  User2   ctermfg=208   ctermbg=232     " Orange
  hi  User3   ctermfg=160   ctermbg=232     " Red
  hi  User4   ctermfg=247   ctermbg=232     " Grey

  set statusline=%2*%<[%4*%F%2*]\ %h%3*%m%4*%r%=%2*[%1*TYPE%2*=%1*%Y\ FORMAT%2*=%1*%{&ff}%2*]%1*\ %2*[%1*ENC%2*=%1*%=%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%2*]%1*%k\ %-14.(%2*[%4*%l%2*/%4*%L%2*,%4*%c%V%2*]%)%4*\ %2*[%4*%P%2*]%4*
endif


set noerrorbells


let mapleader   = '§'
let g:mapleader = '§'

" Automatically set current directory to file's location
set autochdir

" Turn on hlsearch, put cursor on a word and type * and it highlights it everywhere
set hlsearch



""let g:easytags_file = '~/.vim/tags/easytags/global.tags' " global tags
""let g:easytags_dynamic_files = 2
" 1: if project specific tags exists, otherwise -> use global tags file
" 2: auto create project specific tags based on first name in 'tags' option
""let g:easytags_by_filetype = '~/.vim/tags/easytags'
""let g:easytags_always_enabled = 0 " this slow down Vim
""let g:easytags_on_cursorhold = 0 " disable periodic highlight
""let g:easytags_updatetime_min = 4000
""let g:easytags_updatetime_autodisable = 1
let g:easytags_auto_update = 1          " auto update tags and highlights
let g:easytags_auto_highlight = 1       " auto highlight tags
let g:easytags_autorecurse = 0          " 0: file, 1: current dir, 2: recursively
let g:easytags_resolve_links = 1        " unix symbolic link and hard link
let g:easytags_include_members = 1      " let ctags include struct/class members
""set tags+=~/.vim/tags/easytags/global.tags " for easytags




" Some key mappings
map             <F2>              :nohlsearch<CR>                                 " Turns of the current hlsearch.
set pastetoggle=<F3>
nnoremap        <F3>              :set invpaste paste?<CR>                        " Toggle paste/nopaste.
nmap            <F4>              a<C-R>=strftime("%Y-%m-%d %H:%M")<CR><Esc>      " Insert timestamp.
imap            <F4>              <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
"               <F5>              Mapped for commenting lines, see below.
"               <F6>              Mapped for uncommenting lines, see below.
nnoremap        <F10>             :0r ~/.vim/templates/grey-generic-fh.txt<cr>    " Insert fileheader at top.
map             <silent> <F11>    <ESC>:set list!<CR>                             " Toggle listing of whitespaces.
map             <F12>             <Esc>:NERDTreeToggle<CR>                        " Toggles NERDTree filebrowser.
nmap            <Leader>n         :set invnumber<CR>                              " Toggle linenumbering.
nnoremap        <S-Left>          zo                                              " Open fold on SHIFT+LEFT ARROW.
inoremap        <S-Left>          <C-O>zo                                         "
nnoremap        <S-Right>         zc                                              " Close fold on SHIFT+RIGHT ARROW.
inoremap        <S-Right>         <C-O>zc                                         "


" perl style # commenting
autocmd     FileType php,yaml,sh        noremap <F5> :s/\v^(\s*)/\1# <CR>
autocmd     FileType php,yaml,sh        noremap <F6> :s/\v^(\s*)# \1/ <CR>
" C style // commenting
autocmd     FileType c,cpp,php,java     noremap <F5> :s+\v^(\s*)+\1//+ <CR>
autocmd     FileType c,cpp,php,java     noremap <F6> :s+\v^(\s*)//+\1+ <CR>
" vim commenting
autocmd     FileType vim                noremap <F5> :s/\v^(\s*)/\1" / <CR>
autocmd     FileType vim                noremap <F6> :s/\v^(\s*)" /\1/ <CR>
" lua style -- commenting
autocmd     FileType lua                noremap <F5> :s/\v^(\s*)/\1-- / <CR>
autocmd     FileType lua                noremap <F6> :s/\v^(\s*)-- /\1/ <CR>

" autocmd   BufRead             *.lua       setlocal makeprg=lua\ %
au          BufNewFile,BufRead  *conkyrc    set filetype=conkyrc
au          BufNewFile,BufRead  *.vorg      set filetype=vorg
"autocmd    BufWritePost        *.sh !chmod +x %

" Java
"au          FileType java             set tags=~/.vim/tags/java

" gvim stuff
if has('gui_running')
  set guifont=Terminus\ 8
end

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

" Show trailing whitespace and spaces before tabs

"hi link localWhitespaceError Error
"au Syntax * syn match localWhitespaceError /\(\zs\%#\|\s\)\+$/ display
"au Syntax * syn match localWhitespaceError / \+\ze\t/ display
au BufRead,BufNewFile *.ci setfiletype cicode

" Change indentation from spaces to tabs or the other way around
":command! -range=% -nargs=0 Tab2Space execute "<line1>,<line2>s/^\\t\\+/\\=substitute(submatch(0), '\\t', repeat(' ', ".&ts."), 'g')"
":command! -range=% -nargs=0 Space2Tab execute "<line1>,<line2>s/^\\( \\{".&ts."\\}\\)\\+/\\=substitute(submatch(0), ' \\{".&ts."\\}', '\\t', 'g')"

