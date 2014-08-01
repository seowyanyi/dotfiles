""""""""""""""""""""""""""""""""""""""""""
" VIM User Interface
""""""""""""""""""""""""""""""""""""""""""
"Ignore case when searching
set ignorecase 
"Highlight search results
set hlsearch
"Always show current position
set ruler
"Show matching brackets when text indicator is over them
set showmatch
"Show line numbers
set nu
"Size of window
set lines=50 columns=80
"window position
winpos 1068 24

""""""""""""""""""""""""""""""""""""""""""
" Vundle 
""""""""""""""""""""""""""""""""""""""""""
"Compatibility with older vi. If compatible, all vim enhancements turned off
set nocompatible     
filetype off        
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Git wrapper
Plugin 'tpope/vim-fugitive'

"All Vundle plugins must be added before the following line
call vundle#end()    

filetype plugin indent on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts 
""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlighting
syntax enable
colorscheme evening

""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indentations 
""""""""""""""""""""""""""""""""""""""""""
"Use spaces instead of tabs
set expandtab
"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
"Auto indent
set ai
"Smart indent
set si
"Wrap lines
set wrap

""""""""""""""""""""""""""""""""""""""""""
" Visual mode 
""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers 
""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""
"Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings 
""""""""""""""""""""""""""""""""""""""""""""""
"Delete trailing whitespace on save. Useful for Python and Coffeescript
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

