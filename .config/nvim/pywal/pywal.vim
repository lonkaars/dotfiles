hi! Normal guibg=#141618 ctermbg=NONE
hi! EndOfBuffer guibg=#141618 ctermbg=NONE
hi! CocInfoFloat guibg=#282C30 ctermbg=NONE

let s:bg = [ '#141618', 'NONE' ]
let s:fg = [ '#c4c4c5', 'NONE' ]
let s:bg1 = [ '#181A1D', 'NONE' ]
let s:bg2 = [ '#1C1F22', 'NONE' ]
let s:bg3 = [ '#202326', 'NONE' ]
let s:bg4 = [ '#24282B', 'NONE' ]
let s:bg5 = [ '#282C30', 'NONE' ]
let s:color0 = [ '#141618', 'NONE' ]
let s:color1 = [ '#071831', 'NONE' ]
let s:color2 = [ '#171823', 'NONE' ]
let s:color3 = [ '#0c2039', 'NONE' ]
let s:color4 = [ '#1e1f2a', 'NONE' ]
let s:color5 = [ '#212633', 'NONE' ]
let s:color6 = [ '#2b2b34', 'NONE' ]
let s:color7 = [ '#c4c4c5', 'NONE' ]
let s:color8 = [ '#4e5051', 'NONE' ]
let s:color9 = [ '#071831', 'NONE' ]
let s:color10 = [ '#171823', 'NONE' ]
let s:color11 = [ '#0c2039', 'NONE' ]
let s:color12 = [ '#1e1f2a', 'NONE' ]
let s:color13 = [ '#212633', 'NONE' ]
let s:color14 = [ '#2b2b34', 'NONE' ]
let s:color15 = [ '#c4c4c5', 'NONE' ]
let s:color0readable = [ '#c4c4c5', 'NONE' ]
let s:color1readable = [ '#c4c4c5', 'NONE' ]
let s:color2readable = [ '#c4c4c5', 'NONE' ]
let s:color3readable = [ '#c4c4c5', 'NONE' ]
let s:color4readable = [ '#c4c4c5', 'NONE' ]
let s:color5readable = [ '#c4c4c5', 'NONE' ]
let s:color6readable = [ '#c4c4c5', 'NONE' ]
let s:color7readable = [ '#141618', 'NONE' ]
let s:color8readable = [ '#c4c4c5', 'NONE' ]
let s:color9readable = [ '#c4c4c5', 'NONE' ]
let s:color10readable = [ '#c4c4c5', 'NONE' ]
let s:color11readable = [ '#c4c4c5', 'NONE' ]
let s:color12readable = [ '#c4c4c5', 'NONE' ]
let s:color13readable = [ '#c4c4c5', 'NONE' ]
let s:color14readable = [ '#c4c4c5', 'NONE' ]
let s:color15readable = [ '#141618', 'NONE' ]
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

