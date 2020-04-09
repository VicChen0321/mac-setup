" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
colorscheme gruvbox

" User interface
set number
set cursorline
set ruler

set mouse=nv

" Searching
set ignorecase

" Text
set encoding=utf-8
set autoindent
set cindent
set tabstop=4
set smarttab
set shiftwidth=4
set backspace=2
syntax enable

" Color scheme GruvBox's settings
" https://github.com/morhetz/gruvbox/wiki
set background=dark    " Setting dark mode

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

"==================================
" NerdTree
" https://github.com/preservim/nerdtree
 autocmd vimenter * NERDTree
" ===================================
