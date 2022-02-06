let s:bg = [ '#fdf9f7', 'NONE' ]
let s:fg = [ '#121213', 'NONE' ]
let s:mode = [ '#ccbeb7', 'NONE' ]
let s:faint = [ '#393b3b', 'NONE' ]
let s:none = [ 'NONE', 'NONE' ]
let s:test = [ '#ff00ff', 'NONE' ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:fg, s:mode ], [ s:faint, s:bg ] ]
let s:p.normal.right = [ [ s:faint, s:bg ] ]
let s:p.normal.middle = [ [ s:none, s:none ] ]
let s:p.normal.error = [ [ s:test, s:test ] ]
let s:p.normal.warning = [ [ s:test, s:test ] ]
let s:p.inactive.left = copy(s:p.normal.left)
let s:p.inactive.right = copy(s:p.normal.right)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.insert.left = copy(s:p.normal.left)
let s:p.replace.left = copy(s:p.insert.left)
let s:p.visual.left = copy(s:p.insert.left)
let s:p.tabline.left = copy(s:p.normal.middle)
let s:p.tabline.tabsel = [ [ s:fg, s:mode ] ]
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.right = copy(s:p.normal.middle)

let g:lightline#colorscheme#bliss#palette = lightline#colorscheme#flatten(s:p)
