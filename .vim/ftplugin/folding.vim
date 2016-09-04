function! MarkdownFolds()
	let thisline = getline(v:lnum)
	if match(thisline, '^##') >= 0
		return ">2"
	if match(thisline, '^#') >= 0
		return ">1"
	else
		return "="
	endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=MarkdownFolds()
