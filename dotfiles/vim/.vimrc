" ============================================================================
" Minimal Vim Configuration for Learning
" ============================================================================
" This is a zero-plugin Vim config designed for learning fundamentals.
" Perfect for vimtutor and understanding core Vim behavior.
" ============================================================================

" Essential Settings
set nocompatible              " Disable vi compatibility (use Vim features)
syntax on                     " Enable syntax highlighting
filetype plugin indent on     " Enable filetype detection and smart indenting

" Display Settings
set number                    " Show line numbers
set relativenumber            " Show relative line numbers (helps with motions)
set showcmd                   " Show incomplete commands in bottom bar
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching brackets
set laststatus=2              " Always show status line
set ruler                     " Show cursor position in status line

" Search Settings
set incsearch                 " Search as you type
set hlsearch                  " Highlight search results
set ignorecase                " Case-insensitive search...
set smartcase                 " ...unless search contains uppercase

" Indentation Settings
set autoindent                " Copy indent from current line when starting new line
set smartindent               " Smart autoindenting for programming
set tabstop=4                 " Width of tab character
set shiftwidth=4              " Number of spaces for autoindent
set expandtab                 " Use spaces instead of tabs

" Scrolling & Navigation
set scrolloff=8               " Keep 8 lines visible above/below cursor
set sidescrolloff=8           " Keep 8 columns visible left/right of cursor

" Performance
set lazyredraw                " Don't redraw during macros (faster)

" File Management
set nobackup                  " Don't create backup files
set nowritebackup             " Don't backup before writing
set noswapfile                " Don't create swap files
set hidden                    " Allow switching buffers without saving

" Clipboard Integration
set clipboard=unnamed         " Use system clipboard (macOS)

" Window Splitting
set splitright                " Vertical splits open on right
set splitbelow                " Horizontal splits open below

" Visual Feedback
set visualbell                " Use visual bell instead of beeping
set noerrorbells              " No error bells

" Encoding
set encoding=utf-8            " Use UTF-8 encoding
set fileencoding=utf-8        " Write files in UTF-8

" Command Mode
set history=1000              " Remember more command history
set undolevels=1000           " More undo levels

" Leader Key (for custom mappings in the future)
let mapleader = " "           " Use space as leader key

" ============================================================================
" Key Remappings (Minimal for learning)
" ============================================================================

" Clear search highlighting with <Esc> in normal mode
nnoremap <silent> <Esc> :noh<CR><Esc>

" Better navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Keep visual selection when indenting
vnoremap < <gv
vnoremap > >gv

" Move lines up/down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" ============================================================================
" Tips for Learning Vim
" ============================================================================
" 1. Start with vimtutor: Run 'vimtutor' in terminal
" 2. Master movement: h,j,k,l then w,b,e then gg,G
" 3. Learn modes: Normal, Insert, Visual
" 4. Practice operators: d (delete), y (yank), c (change)
" 5. Combine motions with operators: dw, d$, yy, etc.
" 6. Don't use arrow keys! Force yourself to use h,j,k,l
"
" This config gives you essential features while keeping Vim simple.
" Graduate to Neovim + LazyVim when you're comfortable with these basics.
" ============================================================================
