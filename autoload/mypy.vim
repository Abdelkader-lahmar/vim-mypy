function! mypy#ExecuteMypy()
	execute "!mypy " . bufname("%")
endfunction
