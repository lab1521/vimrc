filetype off                  " required

"Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" ---- Theme / Colors 
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
" ---- Faster shortcuts
Plugin 'skwp/greplace.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
" ---- Vim as IDE 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
Plugin 'tpope/vim-vinegar'
" ---- Linters
Plugin 'scrooloose/syntastic'
" ---- Snippets
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'msanders/snipmate.vim'
" ---- Github
" Plugin 'tpope/vim-fugitive.git'
" Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
