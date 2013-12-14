"==============================================================================
"  Description: Rainbow colors for parentheses, based on rainbow_parentheses.vim
"	       by Martin Krischik and others.
"	       2011-10-12: Use less code.  Leave room for deeper levels.
"==============================================================================

let s:colors = [1, 9, 11, 2, 4, 13]
let s:max = exists('g:rainbow_parentheses_max') ? g:rainbow_parentheses_max : 12
let s:active = exists('g:rainbow_parentheses_on')

let s:levels = map(range(1, s:max), '"level".v:val')

function! rainbow_parentheses#parse()
	for type in split(&matchpairs, ',')
		let [lhs, rhs] = split(escape(type, '[]'), ':')
		for i in range(1, s:max)
			let region = 'level'. i
			let grp = region.'c'
			let cmd = 'syntax region %s matchgroup=%s start=/%s/ end=/%s/ '
						\ . 'contains=TOP,%s,NoInParens'
			execute printf(cmd, region, grp, lhs, rhs, join(s:levels[i-1:], ','))
		endfor
	endfor
endfunction
autocmd! FileType * call rainbow_parentheses#parse()

function! rainbow_parentheses#toggle(...)
	let s:active = a:0 ? a:1 : 1 - s:active
	for i in range(1, s:max)
		if s:active
			execute 'highlight level' . i . 'c ctermfg=' . s:colors[(s:max-i) % len(s:colors)]
		else
			execute 'highlight clear level' . i . 'c'
		endif
	endfor
endfunction

execute 'syntax cluster rainbow_parentheses contains='
			\ .join(s:levels, ',').',@TOP,NoInParens'

command! RainbowParenthesesToggle   call rainbow_parentheses#toggle()
command! RainbowParenthesesActivate call rainbow_parentheses#toggle(1)
command! RainbowParenthesesClear    call rainbow_parentheses#toggle(0)
command! RainbowParenthesesParse    call rainbow_parentheses#parse()

call rainbow_parentheses#toggle(s:active)
