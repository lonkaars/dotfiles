let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:fg, s:bg2 ], [ s:color8, s:bg ] ]
let s:p.normal.right = [ [ s:color8, s:bg ] ]
let s:p.normal.middle = [ [ s:none, s:none ] ]
let s:p.normal.error = [ [ s:test, s:test ] ]
let s:p.normal.warning = [ [ s:test, s:test ] ]
let s:p.inactive.left = copy(s:p.normal.left)
let s:p.inactive.right = copy(s:p.normal.right)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.insert.left = [ [ s:fg, s:bg4 ], [ s:fg, s:bg ] ]
let s:p.replace.left = copy(s:p.insert.left)
let s:p.visual.left = copy(s:p.insert.left)
let s:p.tabline.left = copy(s:p.normal.middle)
let s:p.tabline.tabsel = [ [ s:fg, s:bg4 ] ]
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.right = copy(s:p.normal.middle)

let g:lightline#colorscheme#pywal#palette = lightline#colorscheme#flatten(s:p)

