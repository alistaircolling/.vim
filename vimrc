if 0 | endif
if has('vim_starting')
 if &compatible
   set nocompatible
 endif
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'shougo/neobundle.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'townk/vim-autoclose'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tmux-plugins/vim-tmux'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'cocopon/lightline-hybrid.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'tmux-plugins/vim-tmux-focus-events'
call neobundle#end()

syntax on
filetype plugin indent on

NeoBundleCheck

" Ctrl-P
let g:ctrlp_custom_ignore = {
 \ 'dir':  'vendor\|dist\|bower_components\|node_modules\|v[\/]\.(git|hg|svn)$',
 \ }

" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'hybrid'

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

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
set mouse=a                        "
set ttymouse=xterm2                "
set ttyfast                        "
set ttyscroll=3                    "
set lazyredraw                     "
set splitbelow                     "
set splitright                     "

" Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Strip %s/\s\+$//

" Mappings
:map Q <Nop>
:map <C-n> :NERDTreeToggle<CR>

" Theme
set background=dark
colorscheme base16-railscasts
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
