set nocompatible
set mouse-=a
set number
set novb
set cursorline
set encoding=utf-8
set termencoding=utf-8
set showmatch
set showmode
set showcmd
set magic
set nobackup

" These pathogen functions need to be invoked before "filetype plugin indent on" if
" you want it to load ftdetect files.
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

"set expandtab
set noexpandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set autoindent
set smartindent
set smartcase
set nowrap

set nolazyredraw
set ttyfast

"set showtabline=2

set history=50

set noerrorbells

let mapleader = '§'
let g:mapleader = '§'

" Automatically set current directory to file's location
set autochdir

" Turn on hlsearch, put cursor on a word and type * and it highlights it everywhere
set hlsearch


" Some key mappings
map							<F2>				:nohlsearch<CR>											" Turns of the current hlsearch
nnoremap				<F3>				:set invpaste paste?<CR>						"  Toggle paste/nopaste
set pastetoggle=<F3>
nmap <F4> a<C-R>=strftime("%Y-%m%-d %H:%M")<CR><Esc>							" Insert timestamp.
imap <F4> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
map							<F12>				<Esc>:NERDTreeToggle<CR>						" Toggles NERDTree filebrowser
nmap						<C-N><C-N>	:set invnumber<CR>


set laststatus=2
set ruler
set statusline=%<%F\ %h%m%r%=[TYPE=%Y\ %{&ff}]\ %=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l/%L,%c%V%)\ %P

syntax on

if &term == "linux"
		set t_Co=8
else
		set t_Co=256

		colorscheme 256-grayvim
		" colorscheme digerati
		" colorscheme molokai
endif


" Folding settimngs
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

au	BufNewFile,BufRead	*conkyrc		set filetype=conkyrc
au	BufNewFile,BufRead	*.vorg			set filetype=vorg
"autocmd BufWritePost		*.sh !chmod +x %


" perl style # commenting
autocmd			FileType php,yaml,sh				noremap <F5> :s/\v^(\s*)/\1# <CR>
autocmd			FileType php,yaml,sh				noremap <F6> :s/\v^(\s*)# \1/ <CR>
" C style // commenting
autocmd			FileType c,cpp,php					noremap <F5> :s+\v^(\s*)+\1//+ <CR>
autocmd			FileType c,cpp,php					noremap <F6> :s+\v^(\s*)//+\1+ <CR>
" vim commenting
autocmd			FileType vim								noremap <F5> :s/\v^(\s*)/\1" / <CR>
autocmd			FileType vim								noremap <F6> :s/\v^(\s*)" /\1/ <CR>
" lua style -- commenting
" autocmd FileType lua noremap <F5> :s/\v^(\s*)/\1-- / <CR>
" autocmd FileType lua noremap <F6> :s/\v^(\s*)-- /\1/ <CR>

" autocmd BufRead *.lua setlocal makeprg=lua\ %

" Personal lua-support settings.
let g:Lua_AuthorName			= 'Andreas Persson'
let g:Lua_AuthorRef				= 'greyscale'
let g:Lua_Email						= 'andreas(at)greyscale(dot)se'

" Personal bash-support settings.
let g:BASH_AuthorName			= "Andreas Persson"
let g:BASH_AuthorRef			= "greyscale"
let g:BASH_Email					= "andreas(at)greyscale(dot)se"

" VimWIKI settings
let g:vimwiki_list				= [{	'path'	:  '~/Dropbox/VimWIKI' }]

" Calendar-vim settings
let g:calendar_list = [
		\		{'name': 'Tasks', 'path': '~/Dropbox/Calendar/tasks', 'ext': 'task'},
		\		{'name': 'Diary', 'path': '~/Dropbox/Calendar/diary', 'ext': 'diary'},
\ ]
let g:calendar_current_idx = 1

" Show trailing whitespace and spaces before tabs

"hi link localWhitespaceError Error
"au Syntax * syn match localWhitespaceError /\(\zs\%#\|\s\)\+$/ display
"au Syntax * syn match localWhitespaceError / \+\ze\t/ display

" Change indentation from spaces to tabs or the other way around
:command! -range=% -nargs=0 Tab2Space execute "<line1>,<line2>s/^\\t\\+/\\=substitute(submatch(0), '\\t', repeat(' ', ".&ts."), 'g')"
:command! -range=% -nargs=0 Space2Tab execute "<line1>,<line2>s/^\\( \\{".&ts."\\}\\)\\+/\\=substitute(submatch(0), ' \\{".&ts."\\}', '\\t', 'g')"
