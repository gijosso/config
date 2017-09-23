"font"
"set guifont=Fira\ Code\ 14

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

"minimum de confort"
filetype on
filetype plugin indent on
syntax on

set number
set backspace=eol,indent,start
set mouse=a
set showmatch
set cursorline

set completeopt=longest,menuone
set complete=.,w,b,u,t,i,d
set hidden
set laststatus=2
set lazyredraw
set nowrap
set showbreak="+++ "
set showcmd
set spelllang=en
set textwidth=0
set ttyfast
set title
set wildmenu
set wildchar=<TAB>
set noerrorbells
set splitright

"folding
set foldignore=
set foldlevelstart=99
set foldmethod=marker
set foldnestmax=1

"searches
set hlsearch
set incsearch
set ignorecase
set smartcase
set more

"status bar
set laststatus=2
set showmode
set showcmd
set ruler
set shm=atI



"cosmetic"

"THEME SETTINGS"
"let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=256

let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

"set background=dark
colorscheme onedark


"Coding style EPITA 2018"
"set textwidth=79"
"set columns=80
set wrap

set colorcolumn=80
set wrapmargin=2

set laststatus=2
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)
set backspace=2
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
"set noexpandtab

set list
set autoindent
set cinoptions=(0,v0,U0,t0,g0,N-s
"helo"

"navigation"
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Plus"
autocmd BufWritePre *.c :%s/\s\+$//e
:match Error /\s\+$/
set noswapfile

"Powerline"
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Pathogen"
execute pathogen#infect()

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height= 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -Wall -Wextra -Werror -std=c++11 -stdlib=libc++'

let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -Wall -Wextra -Werror -std=c99'

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree
autocmd vimenter * wincmd l
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Vim airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
"let g:airline_theme='base16'
