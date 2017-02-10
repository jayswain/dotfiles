"Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"Theme
let g:solarized_termcolors=256
syntax enable
colorscheme solarized
set background=dark

"Tabs - this can be overridden for language specific in .vim/ftplugin
set tabstop=2
set shiftwidth=4
set expandtab

"Ruby
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"Markdown, Handlebars, EJS
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
au BufNewFile,BufRead *.ejs set filetype=html

"Folding
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1
set wrap

"Escape
imap jk <Esc>

"CTRLP
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$'
    \ }

"Moving lines"
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"Numbers
set number

"NerdTree"
map <Leader>o :NERDTreeFind<CR>
map <Leader>n :NERDTreeToggle<CR>

"Close NerdTree if I close a file and its left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Open Nerdtree upon opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Searching
:set hlsearch

"Ack
"Use AG when available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <leader>a :Ack!<space>
map <leader>A :Ack! "<C-r>=expand('<cword>')<CR>"

"Window sizing
map + <c-w>>
map - <c-w><
