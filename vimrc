if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Enable pathogen plugin manager
" This allows you to install plugins into their own private directory in ~/.vim/bundle
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on

" Enable smart indentation by file type
filetype plugin indent on

colorscheme jellybeans

set cscopetag
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set noswapfile
set nobackup
set nowrap
set hidden
set bs=indent,eol,start " allow backspacing over anything

"let &tags = findfile("tags", "**;/space")
set tags=tags
set tabstop=4
set shiftwidth=4
set expandtab
if has("autocmd")
  autocmd BufEnter *.[ch] set cindent
  autocmd BufEnter *.[^ch] set autoindent
endif

vmap bl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" --------------------- KEY MAPPINGS ------------------------
map <C-J>   <C-W>j
map <C-K>   <C-W>k

" Only scroll 1 line at a time when holding shift and using the mouse wheel
map <S-MouseDown>   <C-Y>
map <S-MouseUp>     <C-E>
