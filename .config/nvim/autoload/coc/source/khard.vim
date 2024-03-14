" global contacts list
let s:contacts = []

function! coc#source#khard#init() abort
	" read contacts once on init
	for line in systemlist('khard email --remove-first-line --parsable')
		let [address, name, type] = split(line, "\t")
		call add(s:contacts, printf('%s <%s>', name, address))
	endfor

	" plugin config
	return {
				\ 'priority': 9,
				\ 'shortcut': 'khard',
				\ 'filetypes': ['mail'],
				\}
endfunction

function coc#source#khard#should_complete(option)
	" only complete addresses on to, cc, bcc and reply-to header lines
	return tolower(a:option['line']) =~ '^\(to\|cc\|bcc\|reply-to\):'
endfunction

function! coc#source#khard#complete(option, cb) abort
	" init already loaded all the contacts, just forward them to CoC
	call a:cb(s:contacts)
endfunction

