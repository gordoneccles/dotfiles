" General Configs
set nocompatible " always put first
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamed
set encoding=utf-8
let mapleader=","
set hidden " hide buffer instead of closing
set tabstop=4
set shiftwidth=4
set shiftround
set autoindent
set copyindent " copy previous indentation on indenting
set number " show line times
set showmatch " show matching parens
set smarttab
set expandtab
set smartcase
set hlsearch
set incsearch
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set backspace=indent,eol,start
set termguicolors
set autoread

" Pathogen Runs First
execute pathogen#infect()
call pathogen#helptags()

" Key Mappings
imap jk <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-c> :bp\|bd #<CR>
nmap gn :bn<CR>
nmap gp :bp<CR>

" Hooray ZSH
set shell=/usr/local/bin/zsh

" Python Line Width Guide
au BufNewFile,BufRead *.py set textwidth=88 colorcolumn=+1

" Ale-Lint Linters
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_linters = {'javascript': ['prettier'], 'python': ['flake8', 'pylint', 'mypy']}
let b:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['prettier'], 'python': ['autopep8']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" JS tab width
autocmd BufNewFile,BufRead *.jsx set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.tsx set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2

" Colorscheme
set background=dark
colorscheme onedark
let g:airline_theme='dracula'
let g:airline_left_sep = '▶'
" set t_Co=256
"
" Fuzzy Finder
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND='ag --ignore node_modules -g ""'
nnoremap <Leader>t :FZF<CR>

" NERD Tree
map <C-n> :NERDTreeToggle<CR>
set wildignore+=*.pyc,__pycache__,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let NERDTreeRespectWildIgnore=1

" Cursor changes between command/insert modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Airline always show tabs
let g:airline#extensions#tabline#enabled=1

" Tags
set tags=tags

" Use ag in ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Prettier git-gutter
let g:gitgutter_sign_added = '·'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_removed = '·'
let g:gitgutter_sign_removed_first_line = '·'
let g:gitgutter_sign_modified_removed = '·'
