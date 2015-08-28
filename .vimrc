" .vimrc for Eduardo
"
" set tabstop=4		"number of spaces <TAB> is equal to 4
"
" set shiftwidth=4	" number of spaces for auto-indent
"
" set number		" show line numbers
"
" set showmatch		" jump to matching bracket
"
" set hlsearch		" highlight search terms
"
" set background=dark	" friendlier colors for dark background
"
" set modeline		" enables vim to read a comment line in scripts
"
" syntax on
" filetype indent plugin on
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"
