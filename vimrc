syntax on
" colorscheme evening

set encoding=utf-8

" no old vim limitations
set nocompatible

" search while typing
set incsearch

" highlight search
set hlsearch

" linenumbers
set number

" no case matches
set ignorecase

" replace tab by space
set expandtab

" save history
set history=5000

" status immer anzeigen 
set laststatus=2

" linies to trigger autoscroll
set scrolloff=2

" tabulatorwidth (smart intend)
set shiftwidth=4

" show current command
set showcmd

" automatischer texteinzug
set smartindent

" show current mode
set showmode

" tab = n space
set softtabstop=4

" n space are seen as a tabstop
set tabstop=4

" informations inside the title
set title

" show matching bracket
set showmatch

" linebreak after 80th row
set wrapmargin=80
set textwidth=1000
set wrap

" bracket expansion
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"inoremap ' ''<Left>
"inoremap " ""<Left>

" force using hjkl$
" :noremap <Up>       :echoerr "Use k instead!"<CR>$
" :noremap <Down>     :echoerr "Use j instead!"<CR>$
" :noremap <Left>     :echoerr "Use l instead!"<CR>$
" :noremap <Right>    :echoerr "Use h instead!"<CR>$
"

" shift key fixes
cabbrev W  w
cabbrev Q  q
cabbrev N  n
cabbrev WQ wq
cabbrev WN wn
cabbrev Wq wq
cabbrev Wn wn

filetype indent on
filetype plugin on

if version >= 700
  " show line under cursor
  set cursorline
  set nospell
  set spellfile=vispellfile.add
  endif  
