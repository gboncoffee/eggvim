" Location:     autoload/eggvim.vim

" Section:      functions

function! eggvim#ListArchComplete(A = '', L = '', P = '')
	return "riscv\n"
endfunction

function! eggvim#Egg(arch)
	" Kill a possibly already-running debugger.
	for l:bufr in getbufinfo()
		if getbufvar(l:bufr.bufnr, '&filetype') =~ 'egg'
			execute 'bdelete!' l:bufr.bufnr
		endif
	endfor

	let l:arch = "riscv"
	if a:arch !~ ""
		let l:arch = a:arch
	endif
	let l:path = expand("%")
	let l:command = "egg -d -arch "..l:arch.." "..l:path

	if has('nvim')
		execute split 'term://'command
		autocmd TermClose <buffer> bd
		normal a
		set filetype=egg
	else
		execute 'term ++close' command
		set filetype=egg
	endif
endfunction
