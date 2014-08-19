if has('gui_running')
	let s:colors = map(['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'], "'guifg=' . v:val")
else
	let s:colors = map(['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'], "'ctermfg=' . v:val")
endif
let s:parentheses = ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/']
let s:maxlvl = len(s:colors)

function! rainbow#load()
	let def_rg = 'syn region %s matchgroup=%s containedin=%s contains=%s %s'

	for paren in s:parentheses
		for lvl in range(s:maxlvl)
			exec lvl == 0 ? printf(def_rg, 'rainbow_r0', 'rainbow_p0', 'rainbow_r'.(s:maxlvl - 1), 'TOP', paren)
						\ : printf(def_rg, 'rainbow_r'.lvl, 'rainbow_p'.lvl.(' contained'), 'rainbow_r'.((lvl + s:maxlvl - 1) % s:maxlvl), 'TOP', paren)
		endfor
	endfor
	call rainbow#show()
endfunction

function! rainbow#clear()
	for i in range(s:maxlvl)
		exe 'hi clear rainbow_p' . i
		exe 'hi clear rainbow_o' . i
		exe 'syn clear rainbow_r' . i
		exe 'syn clear rainbow_o' . i
	endfor
	unlet b:rainbow_visible
endfunction

function! rainbow#show()
	let b:rainbow_visible = 1
	for id in range(s:maxlvl)
		let color = s:colors[id % len(s:colors)]
		exe 'hi default rainbow_p' . id color
		exe 'hi default rainbow_o' . id color
	endfor
endfunction

function! rainbow#toggle()
	echo exists('b:rainbow_visible') ? rainbow#clear() : rainbow#load()
endfunction

augroup Rainbow
	autocmd!
	autocmd Syntax,Colorscheme * call rainbow#load()
augroup END
