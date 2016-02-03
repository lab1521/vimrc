syntax enable

set nocompatible   

so ~/.vim/marcz.vim

"-------------General Settings-----"
syntax enable
set backspace=indent,eol,start       "Make backspace behave like every other editor.
let mapleader = ','                  "The default is \, but a comma is much better.
set number			     "Let's activate line numbers.
set cursorline                       "Highlights current line
set laststatus=2

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set autoindent                        "Always set autoindenting on
set copyindent                        "Copy the previous indentation on autoindenting

set showmode                          " always show what mode we're editing at
set nowrap                            " don't wrap lines

"Automatically change current folder to that of the current file in buffer
"autocmd BufEnter * cd %:p:h


"-------------Visuals-------------"
"colorscheme atom-dark
"http://ethanschoonover.com/solarized
colorscheme solarized

set t_CO=256			     "Use 256 colors. This is useful for Terminal Vim.
set background=dark
set guifont=Inconsolata		     "Set the default font family and size.
" set guifont=DejaVu\ Sans\ Mono     "Set the default font family and size.
set lines=50 columns=120 linespace=10


set guioptions-=T                     "Disable Gui Top Bar.
set guioptions-=l                     "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"----------------------------------"
"| indentLine
"| https://github.com/Yggdroot/indentLine
"----------------------------------"
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
" Vim
let g:indentLine_color_term = 239
"GVim
let g:indentLine_color_gui = '#A4E57E'

"----------------------------------"
"| vim-airline
"----------------------------------"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='solarized'

"-------------Search--------------"
set hlsearch                         "Highlight all matched terms.
set incsearch                        "Incrementally highlight, as we type.


"-------------Split Management----"
set splitbelow 			     "Make splits default to below...
set splitright			     "And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>		  
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Mappings------------"

nmap <C-Q> :bd<cr>

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Easy escaping to normal model
imap jj <esc>

"Make NERDTree easier to toggle.
nmap <Leader>nt :NERDTreeToggle<cr>

"CtrlP extra shortcuts
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-O> :CtrlPMRUFiles<cr>

"TagBar
nmap <F8> :TagbarToggle<CR>


"-------------Plugins--------------"
"----------------------------------"
"| Syntastic
"| https://github.com/scrooloose/syntastic
"----------------------------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"----------------------------------"
"| CtrlP
"----------------------------------"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'

"----------------------------------"
"| EasyMotion
"----------------------------------"
"https://github.com/easymotion/vim-easymotion
let g:EasyMotion_smartcase = 1        "Turn on case insensitive feature
let g:EasyMotion_do_mapping = 0       "Disable default mappings

"Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap f <Plug>(easymotion-overwin-f)

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)



"-------------Auto-Commands-------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END