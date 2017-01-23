" .vimrc for Eduardo
" leans heavily on the FreeBSD vimrc_example.vim 

" Basic Settings _____________________________________________________

set autoindent		" copy indent level from preceding line
set autoread		" reload file if updated outside of vim
set background=dark	" friendlier colors for dark background
set colorcolumn=+1	" highlight screen columns
set encoding=utf-8	" UTF8
set hlsearch		" highlight search term
set ignorecase		" ignore case in searches
set matchpairs+=<:>	" adds <> to the default [],{}, and () helpful for html and xml
"set matchtime		" tenths of a sec to show matching 'matchpairs'
set modeline		" enables vim to read a comment line in scripts
set nocompatible	" prevents running vim in vi-compatible (limited) mode
set number		" show line numbers
set relativenumber	" show lines +/- from the current line
set ruler		" show ruler at bottom of page
set shiftwidth=4	" number of spaces for auto-indent
set showbreak=↪		" indicate wrapped lines
set showcmd		" show command on the last line of screen
"set showmatch=5	" jump to matching bracket
set showmode		" show current mode: INSERT, REPLACE, or VISUAL
set smartcase		" overrides `ignorecase` if you enter a capital in a search
			" relies on 'set ignorecase' being there
set tabstop=4		" number of spaces <TAB> is equal to 4
set title		" shows file information at the top
set visualbell 		" screen flash instead of a beep

" toggle auto-indent on pasting code
nnoremap <F2> :set invpaste paste?<CR>
" assign ISO8601 datestamp to F5
nnoremap <F5> i<C-R>=strftime("%F")<CR><Esc>
" assign ISO8601 timestamp to F6
nnoremap <F6> i<C-R>=strftime("%FT%T")<CR><Esc>
" swap colon with semicolon
nnoremap ; :		" I don't use semi-colon ever ...why shift???
nnoremap : ;		" ditto
set pastetoggle=<F2>
set showmode

syntax on			" syntax highlighting
 
" set leader to show invisible characters
nmap <leader>l :set list!<CR>

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

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

" Folding Settings ____________________________________________________

set foldcolumn=4	" display column in left margin indicating folded sections
