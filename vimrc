autocmd!
set nocompatible
set noshowmode

execute pathogen#infect()
execute pathogen#helptags()

syntax on                          " Turn on vim's syntax highlighting
filetype plugin indent on          " Enable file type detection

set autoread                       "
set autoindent                     "
set autowrite                      " Automatically :write before running commands
set term=xterm-256color            " Set the correct term
set t_Co=256                       " Force vim to use 256 colours
set autowrite                      " Automatically :write before running commands
set cursorline                     " Highlight the current line
set backspace=2                    " Backspace deletes like most programs in insert mode
set encoding=utf-8                 " Use UTF-8 internally
set expandtab                      " Tabs are spaces
set fileencoding=utf-8             " The encoding written to file
set fileformat=unix                " That LF life, son
set hlsearch                       " Highlight searches
set ignorecase                     " Ignore case when searching
set incsearch                      " Start searching when you type the first character of the search string
set laststatus=2                   " Always show the status line, also needed for powerline
set list                           " Displays whitespace
set listchars=eol:¬                " Set end of line character
set noerrorbells                   " Silence!
set nomodeline                     " This option will simply turn off modeline parsing altogether
set number                         " Show line numbers all of the times
set scrolloff=3                    " More space around cursor when scrolling
set showcmd                        " Display incomplete commands
set shiftwidth=2                   " Control how many columns text is indented with the reindent operations
set smartcase                      " Pay attention if you put caps in your search term
set softtabstop=2                  " Control how many columns vim uses when you hit tab in insert mode
set tabstop=2                      " How many columns a tab counts for
set textwidth=200                  " Let's try a textwidth (again)
set ttimeoutlen=50                 " No delay after hitting ESC
set visualbell                     " Silence!
set wrap                           " Lines longer than width of the window will wrap
set wildignore+=*\vendor\*,*\tmp\* " Let's allways ignore vendor and tmp
set relativenumber                 " Less arithmetic to navigate around (relative line numbers)
set number                         " Show me the money
set backupdir=~/.vim/backup/       " Move backup files to /backup/
set directory=~/.vim/backup/       " Move swp files to /backup/
set clipboard=unnamed              "

" Increase scroll speed
set ttyfast
set ttyscroll=3
set lazyredraw

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Strip %s/\s\+$//         " `:Strip` will kill errant whitespace

" Mappings
:map Q <Nop>

" Ctrl-P
let g:ctrlp_custom_ignore = {
 \ 'dir':  'dist\|bower_components\|node_modules\|v[\/]\.(git|hg|svn)$',
 \ }

" Use the `solarized` colourscheme
let g:lightline = {}
let g:lightline.colorscheme = 'solarized'
syntax enable
set background=dark
colorscheme solarized
