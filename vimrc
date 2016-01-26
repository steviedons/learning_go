" execute pathogen#infect()
filetype plugin on
let g:pydiction_location='/home/steve/.vim/bundle/pydiction/complete-dict'
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme desert        " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text

filetype off
" To deal with the issue of opening up a file that you cannot save as its owned by root
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
map <C-n> :NERDTreeToggle<CR>

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
" Plugin 'tmhedberg/SimpylFold'
" Bundle 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'scrooloose/nerdtree'

" all of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"YouCompleMe configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


let python_highlight_all=1
syntax on

"set the colors depending on whether a gui is running
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme Zenburn
"endif

"call togglebg#map("<F5>")

"nerdtree setup
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
