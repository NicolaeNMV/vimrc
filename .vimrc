syntax on
colorscheme koehler
set t_Co=256

call pathogen#runtime_append_all_bundles() 
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set hidden

set nowrap        " don't wrap lines
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set tabstop=2           " Control the number of space characters
set shiftwidth=2        " Change the number of space charactersi
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile
filetype plugin indent on
autocmd filetype python set expandtab
autocmd filetype scala set expandtab
autocmd filetype xml set expandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " F2 and you are ready to paste directly
nnoremap ; :
set mouse=a
vmap Q gq
nmap Q gqap
nmap <silent> ,/ :nohlsearch<CR>
set guifont=Menlo:h14
" MacVim + Command-T plugin, how open in new tab by default
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
cmap w!! w !sudo tee % >/dev/null
" To switch between splits with ctrl+up,down,left 
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
set wmh=0 " Don't show line number in inactive splits
//set clipboard=unnamed

NERDTree
" set autowrite
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
noremap <f1> :bprev<CR> 
noremap <f2> :bnext<CR>
nnoremap <f3> :BufExplorer<CR>
" vimrc
set nocp
filetype plugin on
