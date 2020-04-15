" ----------------
" | Key mappings |
" ----------------

let mapleader = "," 

" Up and down keys in normal mode move line up and down respectively. Left and right do nothing.
" Directional keys in insert mode do nothing.

no	<up>	ddkP
no	<down>	ddp
no	<left>	<Nop>
no	<right>	<Nop>
ino	<up>	<Nop>
ino	<down>	<Nop>
ino	<left>	<Nop>
ino	<right>	<Nop>
 
" Add mappings to add a newline without going into insert mode.

no	go		o<ESC>k
no	gO		O<ESC>j

" ------------------------------------------------------------
" | Leader key bindings for quotes, parantheses and brackets |
" ------------------------------------------------------------
imap	<leader>'	''<ESC>i
imap	<leader>"	""<ESC>i
imap	<leader>[	[]<ESC>i
imap	<leader>(	()<ESC>i
imap	<leader>{	{}<ESC>i
imap	<leader><	<><ESC>i
