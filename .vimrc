
set nocompatible              " be iMproved, required
"filetype off                  " required
set nobackup
"disabled arrow keys
nnoremap Y y$
noremap j gj
set hidden
set timeoutlen=50
set ttimeoutlen=50
"ruby syntax for Gemfile and Vagrantfile
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
set noswapfile
set noshowmode
set cursorline
set showcmd
set title
set autoindent
set splitright
set ruler
set wildmenu
set showmatch
"command W and Q if error press 
command W w
command WQ wq
command Q q
"search
set hlsearch
set incsearch
set ignorecase
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"para los archivos ruby los tabs son de 2 espacios
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set laststatus=2
set timeoutlen=50
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on    " required

set background=dark
silent! colorscheme PaperColor
syntax on
set t_Co=256
set nu
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let g:ale_php_phpcs_executable='~/.composer/vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='~/.composer/vendor/bin/php-cs-fixer'
let g:ale_fixers = {'php': ['php_cs_fixer']}
let g:ale_fix_on_save=1
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
