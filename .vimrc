" Install vim-plug			        " using vim-plug
set nocompatible
call plug#begin()

" UI
Plug 'airblade/vim-gitgutter'		" show if line revise
Plug 'tomasr/molokai'   			"color
 let g:molokai_original = 1
 let g:rehash256 = 1
Plug 'vim-airline/vim-airline'		" just like powerline
 " let g:airline#extensions#tabline#enable = 1
 let g:airline_powerline_fonts = 1
 let g:airline_theme='wombat'
Plug 'vim-airline/vim-airline-themes'

" Usage
Plug 'vim-scripts/auto-pairs'       " Powerup pair's usage
Plug 'scrooloose/nerdcommenter'     " faster-comment <l>cc,cu
 let g:NERDSpaceDelims = 1 
Plug 'ervandew/supertab'            " using tab to complete the word
 let g:SuperTabDefaultCompletionType = "<c-n>"
Plug 'tpope/vim-surround'

" Autocomplete
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 let g:syntastic_always_populate_loc_list = 1
 " let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
call plug#end()
filetype plugin indent on
"########################################### Plugin ###
" revise shift
cab Q   q
cab Qa  qa
cab W   w
cab X   x
cab WQ  wq
cab Wq  wq
cab wQ  wq
cab Set set

" Setting
syntax on	            			" Using color on vim
color molokai			        	" Theme
set backspace=start,eol,indent      " normally using backspace
set clipboard=unnamed			    " share CB with system
set number				            " show line number
set ruler				            " show line info
set cursorline				        " height current line
set hls					            " search heightlighten
set mouse=a				            " use mouse
set encoding=utf-8			        " inorder to show Unicode 
set fileencodings=utf8,big5,gbk,latin1 	" set fileopentype
set ignorecase				        " ignore case(大小寫)
set incsearch				        " search without Enter
set laststatus=2			        " Always show status line
set scrolloff=5				        " scroll near the end
set showcmd				            " show cmd
set showmatch				        " show 相對應的括號
set smartindent				        " 自動縮排
set copyindent				
set t_Co=256				        " tell vim terminal support 256 colors
set wildmenu				        " Autocomplete menu
set updatetime=250                  " updte vim (for gitgutter)
" Tab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Fold
set foldenable
set foldmethod=indent
set foldcolumn=1
set foldlevel=4

