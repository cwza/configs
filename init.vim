" Some global thing
let mapleader = ","
command CDC cd %:p:h " CDC = Change to Directory of Current file
let g:python3_host_prog = '/usr/local/bin/python3' " python3 path
inoremap fd <ESC>

" This script contains plugin specific settings
source ~/.config/nvim/plugins.vim

" Change Default Directories (You need to create these directories first)
set directory^=$HOME/.config/nvim/swp_files// " All swp files go to this directory
set viewdir=$HOME/.config/nvim/view/ " Save view at this directory

" Display
set nowrap
colorscheme torte
set number relativenumber
nnoremap <Leader>tn :set number relativenumber!<CR>
set splitright
set splitbelow

" Search File-find
set path+=**

" Snippets
nnoremap <Leader>cp :-1read $HOME/.config/nvim/snippets/cp_template.cpp<CR><S-G>kko<tab>

" Auto Close Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" Auto save fold for init.vim
set viewoptions-=options
augroup remember_folds
  autocmd!
  au BufWinLeave *.vim mkview 1
  au BufWinEnter *.vim silent! loadview 1
augroup END

" tab 4 indent
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

