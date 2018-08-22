filetype on 
filetype plugin on
set fu

set incsearch
set encoding=utf-8
set wildmenu
set nocompatible
set ignorecase
set ruler
set number
set laststatus=2
set guifont=Monospace\ 14
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'gcmt/wildfire.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdcommenter'

Plugin 'honza/vim-snippets'
call vundle#end()
set nowrap
set cursorline
syntax keyword cppSTLtype initializer_list
syntax enable
set background=dark

colorscheme molokai
syntax on
filetype indent on
set pastetoggle=<F2>
set clipboard=unnamed
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=syntax
set nofoldenable
let mapleader=';'
nmap <silent> <Leader>sw :FSHere<cr>
set completeopt-=preview
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_warning_symbol='W'
let g:ycm_error_symbol = 'E'
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"



nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]
nmap <Leader>m :!rm -rf main<CR>:wa<CR>:make<CR><CR>:cw<CR>
