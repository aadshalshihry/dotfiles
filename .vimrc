" source ~/.vim/plugins.vim

:nnoremap <leader>sv :source $MYVIMRC<cr>

" auto save .vimrc :w
autocmd! bufwritepost .vimrc source %

set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline.otf:h20

" set number in the left bar where the current line I'm in is zero.
" OR 
" Relative Line Numbers
" set rnu

set guioptions-=T " remove the top toolbar
set guioptions-=r " remove the right toolbar

set linespace=15 " make the line space between line 5
set number " show number inorder
" set relativenumber " make the current line I'm in 0 to use G for movement

set nowrap " wrap line
set smarttab 

set tags=tags

set expandtab " overloadable per file later
set shiftwidth=4 " number of space using for autoindenting
set shiftround " using it with < , > 

set autoindent " Automatically indent
set copyindent " copy the previuse indents
set backspace=indent,eol,start " allowed them in insert mode

set ignorecase " ignore case for searching
set smartcase " ignore case if the search word is lowercase

set autowrite " save on buffer switch
set mouse=a " using mouse inside vim



" using if with crtl-p to gave you a list of word that I can chose form.
set complete

" spelling checker.
set spell

" clipborad for yank stuff and use it out side of vim.
set clipboard=unnamed

" Disable bells 
set noerrorbells

" Show the working mode 
set showmode

" Draw a column
" set colorcolumn=80

" syntax on
syntax enable
set background=dark
 colorscheme solarized

" if I want the backgrand to be more dark uncomment the below line
" let g:solarized_termcolors=256

" Disable search HL
set nohlsearch

" Cange foreground  dark/light
"set bg=dark

" set tab spaces
set tabstop=4

" sapareate vim from vi
set nocompatible



" airline 
"set laststatus=2
let g:airline_powerline_fonts = 1
"g:airline_symbols

set t_Co=256

"let g:Powerline_symbols = 'unicode'

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


set ls=2 " Always show status line


" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

	" cntl-n to open it
	map <C-n> :NERDTreeToggle<CR>
	
	" close it if the only window open is the NERDTree
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"CtrlP
let g:ctrlp_user_command = 'find %s -type f' 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" This is for emmet 
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" To remap the default <C-Y> leader:

let g:user_emmet_leader_key='<C-E>'

" javascript serup

" set regexpengine=1
syntax enable

let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"



filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" the color style of vim 
" Solarized
Plugin 'altercation/vim-colors-solarized'

Plugin 'bling/vim-airline'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

Plugin 'L9'
" Git plugin not hosted on GitHub

Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" NERDTree
Plugin 'scrooloose/nerdtree'

" syntastic
Plugin 'scrooloose/syntastic'

"ctrlP
Plugin 'kien/ctrlp.vim'

" Laravel extention
" Plugin 'm2mdas/phpcomplete-extended-laravel'

" This is for emmet 
Plugin 'mattn/emmet-vim'

" javascript
Plugin 'pangloss/vim-javascript'

" beauty for javascript
Plugin 'maksimr/vim-jsbeautify'

" javascript hint
Plugin 'walm/jshint.vim'

" Python mode
" Plugin 'klen/python-mode'

" Python syntax
Plugin 'hdima/python-syntax'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
