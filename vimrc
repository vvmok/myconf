set rtp+=~/.fzf
call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set nocompatible
set encoding=utf-8
filetype plugin on
syntax on
set number relativenumber
set splitbelow splitright
set wildmenu
"set wildmode=list:longest,full
set wildmode=longest,list,full
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" check file in shellcheck : leader key is \
map <leader>s :!clear && shellcheck %<CR>
"same way as above  : map \s :!clear && shellcheck %<CR>
" Shortcurt navigation split
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"navigate in Home directory in vertical split
map <leader>b :vsp<space>$HOME<CR> 
map <leader>r :vsp<space>/usr/local/bin<CR>

"Copy selected text to system clipboard (need gvim installed) for copy from browser
" better : vnoremap <C-c> "*Y :let @+=@*<CR>
vnoremap <C-c> "+Y
map <C-P> "+P

set smartindent
set softtabstop=2 tabstop=2
set expandtab
set hlsearch
set incsearch
set cursorline
map gv :vertical wincmd f<CR>
map gs :below wincmd f<CR>
"nnoremap <F5> :vertical wincmd f<CR>
"nnoremap <F8> :above wincmd f<CR>
"set paste

set path=$HOME/**,/etc/**
set path+=/usr/local/bin
"Use find <TAB> completion --> open in windows
"Use sfind <TAB> completion --> open in split windows
"Use tabfind <TAB> completion --> open in tab

"Ctrl-w H or type :wincmd H to go from horizontal to vertical layout. Ctrl-w J or type :wincmd J to go from vertical to horizontal layout.
"To increase a window to its maximum height, use Ctrl-w _
"To increase a window to its maximum width, use Ctrl-w |
"Resize height of windows shortcut :res +5 or :res -5
"Vertifcal Resize windows shortcut :vertical resize +5  or :vertical resize -5
"Equal resizing windows : Ctrl-w =
"gt to navigate betwwen tab
":w !sudo tee % --> to save file with root permission

" map <leader>p 0yi":!mupdf <C-R>" & disown<CR><CR> --> lance mupdf sur la copie du buffer (<Crtl-r>+")

abbr vmok Veasna MOK
imap ;so System.out.println();<left><left>

set laststatus=2
set statusline+=%F
set title
setlocal foldmethod=manual
