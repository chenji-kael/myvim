"~/.vimrc (configuration file for vim only)

" Encoding related
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                " required!

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" vim-scripts repos

"  Improved C++ STL syntax highlighting
Bundle 'STL-improved'

" Displays tags in a window, ordered by class etc, i used it instead of taglist
Bundle 'majutsushi/tagbar'
Bundle 'wesleyche/SrcExpl'

" recommend fetch it from https://github.com/tczengming/autoload_cscope.vim.git which support c and cpp
Bundle 'tczengming/autoload_cscope.vim'

" CmdlineComplete E.g: you want to search for "elephant" in the buffer, just type /ele and
" press Ctrl-P. So long as "elephant" is in the buffer, you will get "ele"
" completed into "elephant". 
Bundle 'CmdlineComplete'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'

"Code snippets engine for Vim
Bundle 'xptemplate'

Bundle 'DoxygenToolkit.vim'

" C/C++ header files should be guarded against multiple inclusions using preprocessor directives
Bundle 'tczengming/headerGatesAdd.vim'

Bundle 'genutils'
Bundle 'lookupfile'

" Fuzzy file, buffer, mru, tag, ... finder with regexp support.
Bundle 'kien/ctrlp.vim'

" Fast file navigation
" Bundle 'wincent/Command-T'

" Preview the definition of variables or functions in a preview window
Bundle 'autopreview'

" Echo the function declaration in the command line for C/C++
Bundle 'echofunc.vim'

Bundle 'grep.vim'
Bundle 'a.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'

" Under linux need exec 'dos2unix ~/.vim/bundle/QFixToggle/plugin/qfixtoggle.vim'
" Bundle 'QFixToggle'

Bundle 'Color-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
Bundle 'txt.vim'

Bundle 'mru.vim'
Bundle 'YankRing.vim'

Bundle 'tpope/vim-surround.git'
"Bundle 'ShowMarks'

" Display error marks on line which contain errors after compilation 
" Bundle 'cuteErrorMarker'

"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'

Bundle 'git://github.com/Lokaltog/vim-easymotion.git'

" non github repos
call vundle#end()
filetype plugin indent on   " required! 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" solarized theme
set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors, need before setting the colorscheme
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
hi Normal  ctermfg=252 ctermbg=none     " Transparent background

" Enable syntax highlighting
syntax on

set number
set autochdir

" Set to auto read when a file is changed from the outside
set autoread




" Tab related
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab               " Use spaces instead of tabs
                        
set list
set listchars=tab:\|\ ,     " display tab as '|'

" Indent related, see indent.txt
" gN Place C++ scope declarations N characters from the indent of the
"    block they are in.  (default 'shiftwidth').  A scope declaration
"    can be "public:", "protected:" or "private:".
" :N Place case labels N characters from the indent of the switch()
" N-s namespace 
" (N    When in unclosed parentheses, indent N characters from the line with the unclosed parentheses.
set cinoptions=g0,:0,N-s,(0

set autoindent      " always set autoindenting on
set smartindent

set mps+=<:>        " also apply matching to < and >
set hid             " allow to change buffer without saving 
set shortmess=atI   " shortens messages to avoid 'press a key' prompt 
set lazyredraw      " do not redraw while executing macros (much faster)

" Set Number format to null(default is octal) , when press CTRL-A on number
" like 007, it would not become 010
set nf=

" In Visual Block Mode, cursor can be positioned where there is no actual character
set ve=block

set ignorecase  " Set search/replace pattern to ignore case 
set smartcase   " Set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.
set showcmd     " display incomplete commands
set incsearch   " do incremental searching
set hlsearch    " highlight search
set magic       " Enable magic matching
set showmatch   " show matching paren
set wildmenu    " enables a menu at the bottom of the vim/gvim window.
set mouse=a    " Enable mouse usage (all modes) in terminals

nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_autopreview = 1
