set nocompatible              " be iMproved, required
filetype off                  " required
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rhysd/vim-clang-format'
Bundle 'scrooloose/nerdtree'
Bundle 'lsdr/monokai'
Bundle 'tomasr/molokai'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required
 
"<<<
set encoding=utf-8
">>>

set ttyfast
set nomodeline
 
filetype plugin indent on
 
"<<<
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
">>> 
set ruler
set number
set mouse=a
set backspace=indent,eol,start
 
set undofile
 
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
 
set wrap
set textwidth=79
set formatoptions=qrn1
 
set list
set listchars=tab:▸\ ,eol:¬
 
"<<<
nnoremap j gj
nnoremap k gk
">>>
 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
 
nnoremap ; :
 
set viminfo='20,\"50
set history=50
if has("gui_running")
    colorscheme monokai
:endif
set autowrite
set guioptions=aegirL
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

nmap <F1> :Pyclewn<CR>
imap <F1> <Esc>:Pyclewn<CR>a
nmap <F2> :Cmapkeys<CR>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/Developer/usr/clang-ide/lib/c++/v1,abs:/usr/local/include,abs:/usr/include/'
execute pathogen#infect()

nmap <F6> :vsplit<CR>
imap <F6> <Esc>:vsplit<CR>
nmap <C-F6> :split<CR>
imap <C-F6> <Esc>:split<CR>

noremap <C-c> "+y<CR>
noremap <C-v> "+pA<CR>

"noremap <C-l> :ClangFormat<CR>

nmap <silent> <F12> :CtrlP<CR>
imap <F12> <Esc>:CtrlP<CR>
nmap <C-F12> :CtrlP<CR>
imap <C-F12> <Esc>:CtrlP<CR>



let g:syntastic_c_checkers=['make','splint']
let g:syntastic_cpp_checkers=['g++', 'clang++']
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -Wextra'

let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:clang_format#code_style = 'google'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
let g:clang_format#auto_format_on_insert_leave = 1

syntax on
