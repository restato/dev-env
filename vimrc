set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

""""""""""""""""""""" VUNDLE PLUGIN START """"""""""""""""""""""""""

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" " auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

set term=screen-256color

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'derekwyatt/vim-scala'
Plugin 'nanotech/jellybeans.vim' 
Plugin 'Yggdroot/indentLine'


call vundle#end()

colo jellybeans
syntax enable
set background=dark

filetype plugin indent on

""""""""""""""""""""" VUNDLE PLUGIN END """"""""""""""""""""""""""


""""""""""""""""""""" BASIC CONFIG START """"""""""""""""""""""""""
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround  "?

set autoindent
set smartindent

set ignorecase
set tenc=utf-8

set visualbell
set ruler
set mouse=a
set backspace=eol,start,indent
set history=1000
set incsearch

"backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup


syntax on

""""""""""""""""""""" BASIC CONFIG END """"""""""""""""""""""""""


""""""""""""""""""""" KEY MAPPING START """"""""""""""""""""""""""

nmap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <F3> :bprevious<CR>
nnoremap <F4> :bnext<CR>
nmap <silent> <F5> :GitGutterToggle<CR>
nnoremap <F6> :set nonu!<CR>:set foldcolumn=0<CR>

""""""""""""""""""""" KEY MAPPING END """"""""""""""""""""""""""



""""""""""""""""""""" PLUGIN CONFIG START """"""""""""""""""""""""""

" airline plugin
let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

" gitgutter
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" vim-clojure-highlight
" autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

""""""""""""""""""""" PLUGIN CONFIG END""""""""""""""""""""""""""
