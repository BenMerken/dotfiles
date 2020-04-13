" ----------
" | Basics |
" ----------
set nocp		" Disable compatibility with vi, to enable vim's full feature set.
set ignorecase	" Ignore case during search.
set incsearch	" Highlight while typing during search.
set ruler		" Add cursor position.
set nu rnu		" Add relative line numbers by default.
syntax on		" Enable syntax highlighting.
 
" ----------
" | Cursor |
" ----------

if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
endif

" ----------------------
" | Text-related stuff |
" ----------------------

set bs=2		" Allow backspace over autoindent, line breaks and the start of insert.
set tabstop=4	" Make tab count for four spaces.

" -------------------
" | Navigating tabs |
" -------------------

set splitright	" Set the default vertical split to be to the right.

" ---------------------
" | Setting variables |
" ---------------------

let $VIMHOME = $HOME. "/.config/vim" " Have vim check for changes to its defauls in $HOME/.config/vim

" -------------------------------------
" | Sourcing other custom vim scripts |
" -------------------------------------

source $VIMHOME/bindings.vim

