" vim sneak labels
hi! link CocFloating SneakScope

" change default vim-sneak colors to be more readable
hi! SneakLabel gui=reverse
hi! SneakLabelMask gui=reverse

" fix terminal color
hi! link TermCursor Cursor
hi! link TermCursorNC Cursor

" fix which key color
hi! link WhichKeyFloating NormalFloat

" line numbers / gutter colors
hi! SignColumn guibg=NONE ctermbg=NONE
hi GitGutterAdd guibg=NONE
hi GitGutterChange guibg=NONE
hi GitGutterDelete guibg=NONE
hi GitGutterAddIntraLine guibg=NONE
hi GitGutterAddInvisible guibg=NONE
hi GitGutterChangeDelete guibg=NONE
hi GitGutterChangeInvisible guibg=NONE
hi GitGutterDeleteIntraLine guibg=NONE
hi GitGutterDeleteInvisible guibg=NONE
hi CocErrorSign guibg=NONE
hi CocGitAddedSign guibg=NONE
hi CocGitChangeRemovedSign guibg=NONE
hi CocGitChangedSign guibg=NONE
hi CocGitRemovedSign guibg=NONE
hi CocGitTopRemovedSign guibg=NONE
hi CocHintSign guibg=NONE
hi CocInfoSign guibg=NONE
hi CocWarningSign guibg=NONE

" fix disappearing CocFadeOut
hi! link Conceal Comment

