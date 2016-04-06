syntax enable
set nocompatible   
"Vundle custom source file
so ~/.vim/marcz.vim

"-------------General Settings-----"
syntax enable
set backspace=indent,eol,start       "Make backspace behave like every other editor.
let mapleader = ','                  "The default is \, but a comma is much better.
set number			                 "Let's activate line numbers.
set cursorline                       "Highlights current line
set laststatus=2
set noerrorbells visualbell t_vb=    "No damn bells!

"Tabs
set smarttab
set tabstop=4                        "Tab is four spaces
set softtabstop=4                    "Tabs in insert mode
set expandtab                        "Use spaces as tabs
set shiftwidth=4                     "Tabs in normal mode

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set autoindent                       "Always set autoindenting on
set copyindent                       "Copy the previous indentation on autoindenting

set showmode                         "Always show what mode we're editing at
set nowrap                           "Don't wrap lines

"-------------Visuals-------------"
"colorscheme atom-dark
"http://ethanschoonover.com/solarized
"colorscheme solarized
" colorscheme PaperColor
colorscheme hybrid_material

set t_CO=256			              "Use 256 colors. This is useful for Terminal Vim.
set background=dark
" set guifont=Inconsolata	      	      "Set the default font family and size.
set guifont=Fira\ Mono	      	      "Set the default font family and size.
" set guifont=DejaVu\ Sans\ Mono      "Set the default font family and size.
set lines=50 columns=120 linespace=10

set guioptions-=T                     "Disable Gui Top Bar.
set guioptions-=l                     "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Fake custom padding for each window
" hi LineNr guibg=bg
" set foldcolumn=1
hi foldcolumn guibg=bg
hi vertsplit guifg=#073642 guibg=bg

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
"let g:airline_theme='solarized'
" let g:airline_theme='PaperColor'
let g:airline_theme = "hybrid"

"-------------Search--------------"
set hlsearch                         "Highlight all matched terms.
set incsearch                        "Incrementally highlight, as we type.

"-------------Split Management----"
set splitbelow 			             "Make splits default to below...
set splitright			             "And to the right. This feels more natural.
"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>		  
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"----------------------------------"
"| GReplace.vim using Ag search
"----------------------------------"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"----------------------------------"
"| NERDTree
"----------------------------------"
"Make NERDTree easier to toggle.
nmap <Leader>nt :NERDTreeToggle<cr>
"Fix conflict with other plugin
let NERDTreeHijackNetrw = 0

"----------------------------------"
"| CtrlP
"----------------------------------"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-O> :CtrlPMRUFiles<cr>

"----------------------------------"
"| TagBar
"----------------------------------"
nmap <F8> :TagbarToggle<CR>

"----------------------------------"
"| Ctags
"----------------------------------"
nmap <Leader>f :tag<space>

"----------------------------------"
"| Syntastic
"| https://github.com/scrooloose/syntastic
"----------------------------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

"----------------------------------"
"| PHPComplete.vim
"----------------------------------"
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"----------------------------------"
"| PHP CS Fixer
"----------------------------------"
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"----------------------------------"
"| pdv
"----------------------------------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"----------------------------------"
"| Ultisnips
"----------------------------------"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"----------------------------------"
"| Custom keyboard shortcuts
"----------------------------------"
"Close current buffer
nmap <C-Q> :bd<cr>
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Make it easy to edit marcz.vim vundle plugins list
nmap <Leader>em :tabedit ~/.vim/marcz.vim<cr>
"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>
"Easy escaping to normal model
imap jj <esc>
"Panic Save Behavior
nnoremap <C-S> :w<cr>
inoremap <C-S> <esc>:w<cr>
"Moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
"Chang to current windows directory
nnoremap <Leader>cd :lcd %:p:h<CR>:pwd<CR>

"----------------------------------"
"| vim-php-namespace
"| https://github.com/arnaud-lb/vim-php-namespace
"----------------------------------"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

"----------------------------------"
"| Laravel Specific
"----------------------------------"
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>


"----------------------------------"
"| Command Notes I cannot remember
"----------------------------------"
" Clear the quick fix list
" :cexpr []

"-------------Auto-Commands-------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
