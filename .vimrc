syntax enable            " enable syntax highlighting
set nu               " show line numbers

set background=light
colorscheme solarized

set ts=4 sw=4 et

set undofile
set undodir=~/.vim/undodir

set ruler

set clipboard=unnamed
set tabstop=4        " tabs are 4 characters wide
set softtabstop=4
set shiftwidth=4
set expandtab 

set cindent
set autoindent

set showmatch        " when hovering over a (){}[], highlights matching bracket
set showcmd
set mouse=a          " lets you click on stuff in a terminal
set pastetoggle=<F2> " toggles paste mode (lets you paste without messing up indentation)
set virtualedit=all  " lets you move the cursor around anywhere regardless of whitespace
set nocompatible  " Use vim defaults instead of vi defaults (much better!)
set encoding=utf8 " Treat all files as utf8

set hlsearch      " Search: Highlight matches
set incsearch     " Search: Match as you type
set ignorecase    " Search: Ignore case
set smartcase     " Search: Use case if has capitalized char

set laststatus=2

:imap ;; <Esc>
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
