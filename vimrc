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
"highlight current line
if has("gui_running")
    set cursorline
endif
"Use + buffer (system clipboard) by default
set clipboard=unnamedplus

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
"keyword completion system by caching
Bundle 'Shougo/neocomplete'
"Easy explore of filesytem to open files and directories
Bundle 'scrooloose/nerdtree'
Bundle 'jelera/vim-javascript-syntax'
"JS indentation and highlighting
Bundle 'pangloss/vim-javascript'
"Visually displaying indent levels
Bundle 'nathanaelkane/vim-indent-guides'
"Automatic adding of closing quote, bracket etc...
Bundle 'Raimondi/delimitMate'
"On-the-fly syntax checking plugin that runs through external syntax checkers
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1 "only check when file is saved
"Code autocompletion
Bundle 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview

" Tern is tool for parsing JS properly
Bundle 'marijnh/tern_for_vim'

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
if has("gui_running")
    map j gj
    map k gk
endif

""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""
"Always show the status line
"if has("gui_running")
"    set laststatus=2
"endif

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

