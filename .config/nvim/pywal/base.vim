let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:color6readable, s:color6 ], [ s:color2readable, s:color2 ] ]
let s:p.normal.right = [ [ s:color1readable, s:color1 ], [ s:color2readable, s:color2 ] ]
let s:p.inactive.right = [ [ s:color1readable, s:color1 ], [ s:color2readable, s:color2 ] ]
let s:p.inactive.left =  [ [ s:color6readable, s:color6 ], [ s:color2readable, s:color2 ] ]
let s:p.insert.left = [ [ s:color5readable, s:color5 ], [ s:color2readable, s:color2 ] ]
let s:p.replace.left = [ [ s:color4readable, s:color4 ], [ s:color2readable, s:color2 ] ]
let s:p.visual.left = [ [ s:color3readable, s:color3 ], [ s:color2readable, s:color2 ] ]
let s:p.normal.middle = [ [ s:none, s:none ] ]
let s:p.inactive.middle = [ [ s:none, s:none ] ]
let s:p.tabline.left = [ [ s:fg, s:bg ] ]
let s:p.tabline.tabsel = [ [ s:fg, s:bg5 ] ]
let s:p.tabline.middle = [ [ s:none, s:none ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:test, s:test ] ]
let s:p.normal.warning = [ [ s:test, s:test ] ]

let g:lightline#colorscheme#pywal#palette = lightline#colorscheme#flatten(s:p)

