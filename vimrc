" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax enable

" Start Pathogen
call pathogen#infect() 
" Enable filetype plugins
filetype plugin on

" Some custom highlighting rules
" au BufNewFile,BufRead *.ctp setfiletype php

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" The following are commands that change the default colors of the syntax
" highlighting. Comment of change them to meet your needs
hi Comment ctermfg=DarkGreen
hi Search ctermbg=red
hi String ctermfg=grey

" Load the solarized color theme
"colorscheme solarized

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" Allow indenting to be toggled by pressing F8
nnoremap <F8> :setl noai! nocin! nosi!

" Allow quick paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd			" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search as you type it
set hlsearch		" Highlight search phrases
"set autowrite		" Automatically save before commands like :next and :make
"set hidden			" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals
set visualbell		" Enable visual bell
set ruler			" Always show a ruler
set laststatus=2	" Always shows the last status menu
set statusline=%F%m%r%h%w\ (%{&ff})\ %=\ [%l,%v\ %L\ (%p%%)]
set noerrorbells	" Don't ring the bell for errors
set nostartofline	" Don't move cursor to the start of the line
set shortmess=at	" Avoid the 'press enter' with error messages

"set expandtab		" insert spaces instead of tabs
set tabstop=4		" use X spaces when tab is pressed
set shiftwidth=4  	" shifttabs are also X spaces
set smarttab		" make delete remove X spaces
set smartindent	" allow vim to do intelligent indenting

" Syntastic settings
let g:syntastic_check_on_open=1
" Status line settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" On some systems, it may be nesseccary to re-map the arrow keys. Uncomment
" these next lines if that is the case.
"map <up> gk
"map <down> gj
"map <left> gh
"map <right> gl

" Disable the 'auto commenting' crap
au FileType * setlocal comments=

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" Omnifunc stuff
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType coffee set omnifunc=coffeecomplete#Complete

