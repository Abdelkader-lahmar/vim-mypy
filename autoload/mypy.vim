function! mypy#ExecuteMypy()
	
	" check if the current file is a python file
	if &filetype != "python"
		echo "Not a Python file!"
		return
	endif

	" execute the mypy command with current file path
	" and replace unexpected null characters with new line
	let l:MypyOutput = substitute(system("mypy " . shellescape(expand("%:p"))), '\%x00', '\n', 'g')

	" hundle the output
	if v:shell_error
		echohl ErrorMsg
		echom "Mypy Errors:"
		echom l:MypyOutput
		echohl None
	else
		echohl InfoMsg
		echom "Mypy Passed!"
		echohl None
	endif	

endfunction
