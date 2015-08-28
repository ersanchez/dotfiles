" .vimrc for Eduardo
" leans heavily on the FreeBSD vimrc_example.vim

set nocompatible
set tabstop=4		"number of spaces <TAB> is equal to 4
set shiftwidth=4	" number of spaces for auto-indent
set number			" show line numbers
set showmatch		" jump to matching bracket
set hlsearch		" highlight search term
set background=dark	" friendlier colors for dark background
set modeline		" enables vim to read a comment line in scripts

" toggle auto-indent on pasting code
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

syntax on			" syntax highlighting

" autocmd section
if has("autocmd")
	" Enable file type detection
	" Use the default filetype settings, mail gets 'tw' set to 72
	" 'cindent' is on in C files, etc
	" Load ident files
	filetype plugin indent on
	au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
	augroup vimrcEx
		au!
	autocmd FileType text setlocal textwidth=78
	" Jump to last cursor position if valid
	autocmd BufReadPost *
		\ if line("'\"") >= 1 && line("'\"") <= line("$") |
		\ 	exe "normal! g`\"" |
		\ endif
	augroup END

else
	set autoindent	" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

