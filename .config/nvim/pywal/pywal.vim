hi! Normal guibg=#191b1c ctermbg=NONE
hi! EndOfBuffer guibg=#191b1c ctermbg=NONE
hi! CocInfoFloat guibg=#323638 ctermbg=NONE

let s:bg = [ '#191b1c', 'NONE' ]
let s:fg = [ '#c5c6c6', 'NONE' ]
let s:bg1 = [ '#1E2022', 'NONE' ]
let s:bg2 = [ '#232627', 'NONE' ]
let s:bg3 = [ '#282B2D', 'NONE' ]
let s:bg4 = [ '#2D3132', 'NONE' ]
let s:bg5 = [ '#323638', 'NONE' ]
let s:color0 = [ '#191b1c', 'NONE' ]
let s:color1 = [ '#4c626b', 'NONE' ]
let s:color2 = [ '#536569', 'NONE' ]
let s:color3 = [ '#576e76', 'NONE' ]
let s:color4 = [ '#74919d', 'NONE' ]
let s:color5 = [ '#84a6b4', 'NONE' ]
let s:color6 = [ '#9cbac4', 'NONE' ]
let s:color7 = [ '#c5c6c6', 'NONE' ]
let s:color8 = [ '#525454', 'NONE' ]
let s:color9 = [ '#4c626b', 'NONE' ]
let s:color10 = [ '#536569', 'NONE' ]
let s:color11 = [ '#576e76', 'NONE' ]
let s:color12 = [ '#74919d', 'NONE' ]
let s:color13 = [ '#84a6b4', 'NONE' ]
let s:color14 = [ '#9cbac4', 'NONE' ]
let s:color15 = [ '#c5c6c6', 'NONE' ]
let s:color0readable = [ '#c5c6c6', 'NONE' ]
let s:color1readable = [ '#c5c6c6', 'NONE' ]
let s:color2readable = [ '#c5c6c6', 'NONE' ]
let s:color3readable = [ '#c5c6c6', 'NONE' ]
let s:color4readable = [ '#191b1c', 'NONE' ]
let s:color5readable = [ '#191b1c', 'NONE' ]
let s:color6readable = [ '#191b1c', 'NONE' ]
let s:color7readable = [ '#191b1c', 'NONE' ]
let s:color8readable = [ '#c5c6c6', 'NONE' ]
let s:color9readable = [ '#c5c6c6', 'NONE' ]
let s:color10readable = [ '#c5c6c6', 'NONE' ]
let s:color11readable = [ '#c5c6c6', 'NONE' ]
let s:color12readable = [ '#191b1c', 'NONE' ]
let s:color13readable = [ '#191b1c', 'NONE' ]
let s:color14readable = [ '#191b1c', 'NONE' ]
let s:color15readable = [ '#191b1c', 'NONE' ]
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

