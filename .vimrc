" Disable compatibility with vi
set nocompatible

" Filetype detection and configuration
filetype on
filetype plugin on
filetype indent on

" Allow switching buffers with unsaved changes
set hidden

" Map backspace key to cycle through buffers (in normal mode)
" Exclude terminal buffers because <BS> won't work there
function! NextBuffer()
    bnext
    while &buftype == 'terminal'
        bnext
    endwhile
endfunction
:nnoremap <BS> :call NextBuffer()<CR>

" Syntax highlighting
syntax on

" Remap up and down arrow keys to move cursor
" one screen line in normal and visual modes
:noremap <Up> gk
:noremap <Down> gj

" Remap up and down arrow keys to move cursor
" one screen line in insert mode
:inoremap <Up> <C-o>gk
:inoremap <Down> <C-o>gj

" Enable line numbers
set number
"set nonumber

" Set tab width
set shiftwidth=4
set tabstop=4
set expandtab

" Set colour scheme
colorscheme ron 

" Disable Vim mouse interaction, which re-enables
" regular terminal highlighting with mouse
set mouse=
