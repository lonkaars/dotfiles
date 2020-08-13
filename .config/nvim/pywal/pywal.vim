hi! Normal guibg=#1e1e1f ctermbg=NONE
hi! EndOfBuffer guibg=#1e1e1f ctermbg=NONE
hi! CocInfoFloat guibg=#3C3C3E ctermbg=NONE

let s:bg = [ '#1e1e1f', 'NONE' ]
let s:fg = [ '#c6c6c7', 'NONE' ]
let s:bg1 = [ '#242425', 'NONE' ]
let s:bg2 = [ '#2A2A2B', 'NONE' ]
let s:bg3 = [ '#303032', 'NONE' ]
let s:bg4 = [ '#363638', 'NONE' ]
let s:bg5 = [ '#3C3C3E', 'NONE' ]
let s:color0 = [ '#1e1e1f', 'NONE' ]
let s:color1 = [ '#666b6d', 'NONE' ]
let s:color2 = [ '#8a8c8d', 'NONE' ]
let s:color3 = [ '#c59683', 'NONE' ]
let s:color4 = [ '#a7aeb0', 'NONE' ]
let s:color5 = [ '#aabbbe', 'NONE' ]
let s:color6 = [ '#d1c494', 'NONE' ]
let s:color7 = [ '#c6c6c7', 'NONE' ]
let s:color8 = [ '#565657', 'NONE' ]
let s:color9 = [ '#666b6d', 'NONE' ]
let s:color10 = [ '#8a8c8d', 'NONE' ]
let s:color11 = [ '#c59683', 'NONE' ]
let s:color12 = [ '#a7aeb0', 'NONE' ]
let s:color13 = [ '#aabbbe', 'NONE' ]
let s:color14 = [ '#d1c494', 'NONE' ]
let s:color15 = [ '#c6c6c7', 'NONE' ]
let s:color0readable = [ '#c6c6c7', 'NONE' ]
let s:color1readable = [ '#c6c6c7', 'NONE' ]
let s:color2readable = [ '#1e1e1f', 'NONE' ]
let s:color3readable = [ '#1e1e1f', 'NONE' ]
let s:color4readable = [ '#1e1e1f', 'NONE' ]
let s:color5readable = [ '#1e1e1f', 'NONE' ]
let s:color6readable = [ '#1e1e1f', 'NONE' ]
let s:color7readable = [ '#1e1e1f', 'NONE' ]
let s:color8readable = [ '#c6c6c7', 'NONE' ]
let s:color9readable = [ '#c6c6c7', 'NONE' ]
let s:color10readable = [ '#1e1e1f', 'NONE' ]
let s:color11readable = [ '#1e1e1f', 'NONE' ]
let s:color12readable = [ '#1e1e1f', 'NONE' ]
let s:color13readable = [ '#1e1e1f', 'NONE' ]
let s:color14readable = [ '#1e1e1f', 'NONE' ]
let s:color15readable = [ '#1e1e1f', 'NONE' ]
let s:none = [ 'NONE', 'NONE' ]
let s:test = [ '#ff00ff', 'NONE' ]

hi! SignColumn guibg=NONE ctermbg=NONE

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:fg, s:bg2 ], [ s:color8, s:bg ] ]
let s:p.normal.right = [ [ s:color8, s:bg ] ]
let s:p.inactive.left = copy(s:p.normal.left)
let s:p.inactive.right = copy(s:p.normal.right)
let s:p.insert.left = [ [ s:fg, s:bg4 ], [ s:fg, s:bg ] ]
let s:p.replace.left = copy(s:p.insert.left)
let s:p.visual.left = copy(s:p.insert.left)
let s:p.normal.middle = [ [ s:none, s:none ] ]
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.tabline.left = copy(s:p.normal.middle)
let s:p.tabline.tabsel = [ [ s:fg, s:bg4 ] ]
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.right = copy(s:p.normal.middle)
let s:p.normal.error = [ [ s:test, s:test ] ]
let s:p.normal.warning = [ [ s:test, s:test ] ]

let g:lightline#colorscheme#pywal#palette = lightline#colorscheme#flatten(s:p)

