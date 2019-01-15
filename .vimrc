colorscheme 0x7A69_dark

set t_Co=256
set background=dark
syntax on
filetype on
set number
set ruler
set wrap
set wildmenu
set encoding=utf-8

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set guioptions=T
set smartindent

" Searching
set hlsearch
set incsearch
set smartcase
set showmatch

" Windows backspace
set backspace=2
set backspace=indent,eol,start

" Fonts
set guifont=Consolas:h14:cANSI

" Backup setup
set backup
set backupdir=~/.tmp,~/tmp,/tmp
set directory=~/.tmp,~/tmp,/tmp
set writebackup

" Tab and split window manipulation
set splitright
set splitbelow
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

" Map F1 to escape
map <F1> <Esc>
imap <F1> <Esc>

" Show tabs
set list
set listchars=tab:>-

" Save and restore views
set viewdir=C:/Users/louy/vimfiles/view
augroup AutoSaveFolds
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

