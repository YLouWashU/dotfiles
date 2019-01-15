colorscheme ego

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set guioptions=T
set smartindent

" Searching
set hlsearch
set incsearch
set smartcase
set showmatch

" Fonts
set guifont=DejaVu\ Sans\ Mono\ 13

" Backup setup
set backup
set backupdir=~/.tmp,/tmp
set directory=~/.tmp,/tmp
set writebackup

" Tab and split window manipulation
set splitright
set splitbelow
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Show tabs
set list
set listchars=tab:>-

" Save and restore views
set viewdir=~/.vim/view
augroup AutoSaveFolds
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

" Disable F1 help
map <F1> <Esc>
imap <F1> <Esc>
 
" ycm conf file
let g:ycm_confirm_extra_conf=1
let g:ycm_global_ycm_extra_conf='/home/louy/.vim/.ycm_extra_conf.py'
let g:ycm_max_diagnostic_to_display = 0
