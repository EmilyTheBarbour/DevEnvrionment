set nocompatible              " be iMproved, required
filetype off                  " required

set wrap
set number
set laststatus=2
set noshowmode
set showcmd

set cindent

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>


" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'

Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
