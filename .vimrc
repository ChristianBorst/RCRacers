"==========================================================================================
"AUTOCMD
autocmd BufWritePost *.tex !pdflatex %

"==========================================================================================
"COLORS AND SYNTAX
syntax enable     			"Enable syntax highlighting


"==========================================================================================
"SPACES AND TABS
set tabstop=2		      	"Spaces per tab character
set softtabstop=2		  	"Spaces in INSERT mode
set expandtab			      "Tab characters are replaced with spaces
set shiftwidth=2        "<<, >>, and <,> in VISUAL mode shift by 2


"==========================================================================================
"USER INTERFACE
set number		        	"Show line numbers
set showcmd			        "Force show last command at the bottom
set cursorline			    "Highlights the current line on window-focus-change
filetype indent on			"Load filetype-specific indent files: 
                          "Place LANGUAGE.vim file in ~/.vim/indent
set wildmenu			      "Visual autocomplete for command menu
set lazyredraw          "Only redraw the parts of the screen which have changed
set breakindent         "Indents broken lines to the correct width
set mouse=a             "Enables tmux scrolling

"==========================================================================================
"SEARCHING
set incsearch           "Search as characters are entered
set hlsearch            "Highlight all matches

"Remove highlights with ,<space>
nnoremap <leader><space> :nohlsearch<CR>


"==========================================================================================
"FOLDING
set foldenable          "Enable code folding
set foldlevelstart=10   "Open most folds by default (99 max)
set foldnestmax=10      "Enable up to 10 nested folds
"Open/close folds with space
nnoremap <space> za     
set foldmethod=indent   "Fold based on indent level
                          "Others are: marker, manual, expr, syntax, diff | :help foldmethod
"MOVEMENT
"Move vertically by visual line, not real line
nnoremap j gj
nnoremap k gk

"Move to the beginning/end of the line
nnoremap B ^
nnoremap E $
"Remove the previous bindings of ^ and $
nnoremap $ <nop>
nnoremap ^ <nop>


"==========================================================================================
"LEADER
let mapleader=","       "Sets leader to <comma>
                        "Sets esc to "jk"
inoremap jk <esc>
                        "Force me to learn jk instead of escape
inoremap <esc> <nop>

                        "Toggle graphical undo tree (Gundo)
