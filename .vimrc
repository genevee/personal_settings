"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => You Complete Me Package 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
let g:ycm_confirm_extra_conf = 0 

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'
Bundle 'Volloric/ListToggle'
Bundle 'scrooloose/syntastic'

" End configuration, makes the plugins available
call vundle#end()
filetype plugin indent on





"Reload vimrc after editing
augroup reload_vimrc " {{{
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Filetype Based Behavior 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                     "Enable filetype detection
filetype indent on              "Enable filetype indentation
filetype plugin on              "Enable filetype plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Typing Interface 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                       "Always show current position
set cursorline                  "Highlight current line, horizontal line

set visualbell                  "Visual cues on errors
set nowrap                      "Wrap long lines
set linebreak                   "Wrap lines at words instead of letters

set showmatch                   "Show matching parentheses
set matchtime=2                 "Length matched paren flashes (1/10 sec)
set matchpairs=(:),{:},[:],<:>  "Chars in a balanced pair

set wildmenu                    "Visual autocomplete for command menu

set incsearch                   "Search as characters are entered
set hlsearch                    "Highlight matches

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Key mappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off serach highlight using three hits of the space bar>
nnoremap <Space><Space><Space> :nohlsearch<CR>
" For a line wrapped to two lines, j and k won't skip over the wrapped part
nnoremap j gj
nnoremap k gk

let mapleader=","             "Leader becomes a comma

" Suppsed to display undo tree; GundoToggle is unrecongized?
" nnoremap <leader>u :GundoToggle<CR>

"Save sessions and windows for next opening, with vim -S
nnoremap <leader>s :mksession<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => User Interface 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256 "Used the reduced set of 256 colors in terminal
colorscheme solarized
syntax enable                   "Enable syntax highlighting

set number                      "Show line nubmers
set showcmd                     "Show command in the bottom bar
filetype plugin indent on
set spell spelllang=en_us 
hi clear SpellBad
hi clear SpellCap
hi SpellBad ctermfg=LightRed
hi SpellCap ctermfg=LightGreen


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Text and spacing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Everything adjusts to 4 spaces
set tabstop=4                   "Tab has length 4 spaces
set softtabstop=4               "Tabs equate to 4 spaces
set expandtab                   "Tabs become softtabstop spaces

" Makefiles require tabs not spaces
augroup makefile
    autocmd!
    autocmd FileType make setlocal noexpandtab
augroup END

set shiftwidth=4                ">> shifts 4 spaces
set shiftround                  "Round indents to multiple of shiftwidth

set smarttab                    "<BS> deletes 1 tab's worth of spaces
set autoindent                  "Copy current indent when new line starts

set colorcolumn=81              "Highlight column 81 for line breaks

set paste                       "Allow pasting from the clipboard
