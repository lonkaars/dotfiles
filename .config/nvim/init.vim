let mapleader = " "
set modeline
set wrap
set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set termguicolors
set shortmess=I
set splitbelow splitright
set noshowmode
set ignorecase
set smartcase
set timeoutlen=500
set updatetime=100
set mouse=a
set cino=N-s,E-s,l1,g-1,j1
set linebreak " set wrap but don't wrap inside words
set viminfo+='1000,n~/.local/nvim/viminfo
set guifont=JetBrainsMono\ Nerd\ Font:h9:#e-subpixelantialias:#h-slight
set linespace=5
set tabpagemax=999
set breakindent
set breakindentopt=shift:2
set formatoptions+=mM
let g:sneak#label = 1
let g:which_key_map = {}
let g:airline_powerline_fonts = 1
let g:minimap_highlight='Visual'
let g:python3_host_prog='/usr/bin/python3'
let g:DiffColors = 0
let g:AutoPairsMultilineClose = 0
filetype plugin on

if exists("g:neovide")
	nmap <silent> <C-=> :lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>
	nmap <silent> <C-ScrollWheelUp> :lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>
	nmap <silent> <C--> :lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>
	nmap <silent> <C-ScrollWheelDown> :lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>
	nmap <silent> <C-0> :lua vim.g.neovide_scale_factor = 1<CR>
	let g:neovide_scroll_animation_length = 0.18
	let g:neovide_floating_shadow = v:false
	let g:neovide_cursor_animation_length = 0.06
	let g:neovide_cursor_trail_size = 0.0
	let g:neovide_padding_top=16
	let g:neovide_padding_left=16
	let g:neovide_padding_right=16
	let g:neovide_padding_bottom=16
endif

" plugged
call plug#begin('~/.config/nvim/plugged')
" quality of life
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'liuchengxu/vim-which-key'
Plug 'justinmk/vim-sneak'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'junegunn/goyo.vim'
Plug 'psliwka/vim-smoothie'
Plug 'airblade/vim-gitgutter'
Plug 'wellle/targets.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dkarter/bullets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'rickhowe/diffunitsyntax'

" language plugins
Plug 'lervag/vimtex'
Plug 'hail2u/vim-css3-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-python/python-syntax'
Plug 'dart-lang/dart-vim-plugin'
Plug 'bartlomiejdanek/vim-dart'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'cespare/vim-toml'
Plug 'tikhomirov/vim-glsl'
Plug 'vim-scripts/syntaxm4.vim'
Plug 'elkowar/yuck.vim'
Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
Plug 'kaarmu/typst.vim'
Plug 'aklt/plantuml-syntax'
Plug 'fymyte/rasi.vim'
Plug 'habamax/vim-asciidoctor'
Plug 'lonkaars/coc-khard'
Plug 'sile-typesetter/vim-sile'

" themes
Plug 'arzg/vim-colors-xcode'
Plug 'romgrk/github-light.vim'
Plug 'vv9k/vim-github-dark'
Plug 'rose-pine/neovim', {'as': 'rose-pine'}

Plug '~/.config/nvim/local/coc-markdown-links'
call plug#end()

" keybinds
tnoremap <Esc> <C-\><C-n>
nnoremap tt :tabnew<CR>
nnoremap <CR> o<Esc>
nnoremap <leader>qf <Plug>(coc-fix-current)
nnoremap <silent> * yiw:let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap <silent> <A-j> :m +1<CR>
nnoremap <silent> <A-k> :m -2<CR>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

command UTF2Latex
			\ :%s/‘/`/ge |
			\ :%s/’/'/ge |
			\ :%s/“/``/ge |
			\ :%s/”/''/ge |
			\ :%s/–/--/ge |
			\ :%s/—/---/ge
command UTF2Ascii
			\ :%s/‘/'/ge |
			\ :%s/’/'/ge |
			\ :%s/“/"/ge |
			\ :%s/”/"/ge |
			\ :%s/–/--/ge |
			\ :%s/—/---/ge

" leader keybindings
nnoremap <silent> <leader> :WhichKey '<space>'<CR>

map <leader>vo <Plug>VimspectorContinue
map <leader>vq <Plug>VimspectorStop
map <leader>vr <Plug>VimspectorRestart
map <leader>vp <Plug>VimspectorPause
map <leader>vb <Plug>VimspectorToggleBreakpoint
map <leader>vc <Plug>VimspectorToggleConditionalBreakpoint
map <leader>vf <Plug>VimspectorAddFunctionBreakpoint
map <leader>vn <Plug>VimspectorStepOver
map <leader>vi <Plug>VimspectorStepInto
map <leader>vu <Plug>VimspectorStepOut
let g:which_key_map.v = {
			\ 'name': '+vimspector',
			\ 'o': 'continue',
			\ 'q': 'stop',
			\ 'r': 'restart',
			\ 'p': 'pause',
			\ 'b': 'toggle breakpoint',
			\ 'c': 'toggle conditional breakpoint',
			\ 'f': 'add function breakpoint',
			\ 'n': 'step over',
			\ 'i': 'step into',
			\ 'u': 'step out'
			\ }

map <leader>p "+p
map <leader>y "+y
let g:which_key_map.p = 'x11 paste'
let g:which_key_map.y = 'x11 yank'

map <silent> <leader>w :w<cr>
let g:which_key_map.w = 'write'

map <silent> <leader>dv :VimtexView<cr>
map <silent> <leader>dc :VimtexCompile<cr>
map <silent> <leader>de :VimtexErrors<cr>
map <silent> <leader>dt :VimtexTocToggle<cr>
let g:which_key_map.d = {
			\ 'name': '+document',
			\ 'v': 'view',
			\ 'c': 'compile',
			\ 'e': 'errors',
			\ 't': 'table of contents'
			\ }

map <silent> <leader>ts :sp term://zsh<cr>i
map <silent> <leader>tv :vsp term://zsh<cr>i
map <silent> <leader>tt :tabnew term://zsh<cr>i
let g:which_key_map.t = {
			\ 'name': '+term',
			\ 's': 'split',
			\ 'v': 'vsplit',
			\ 't': 'tab'
			\ }

map <silent> <leader>.v :tabnew ~/.config/nvim/init.vim<cr>
let g:which_key_map['.'] = {
			\ 'name': '+config',
			\ 'v': 'vim',
			\ }

map <silent> <leader>u :UndotreeToggle<cr>
let g:which_key_map.u = 'toggle undo tree'

nnoremap <silent> <leader>e 0f!xC<c-r>=system(@-)<cr><esc>dd
let g:which_key_map.e = 'read and execute after !'

" cmd maps
cnoreabbrev W w
cnoreabbrev sudow w !sudo tee %

" emacs bindings in vim command-line
cnoremap <A-b> <S-Left>
cnoremap <A-f> <S-Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <A-backspace> <C-w>

" hexokinase
let g:Hexokinase_termDisabled = 1
let g:Hexokinase_optOutPatterns = [ 'colour_names' ]

" lightline
let g:lightline = {
			\ 'colorscheme': 'auto',
			\ 'mode_map': {
			\	'n' : 'norm',
			\	'i' : 'ins',
			\	'R' : 'rep',
			\	'v' : 'vis',
			\	'V' : 'v-l',
			\	"\<C-v>": 'v-b',
			\	'c' : 'cmd',
			\	's' : 'sel',
			\	'S' : 's-l',
			\	"\<C-s>": 's-b',
			\	't': 'term'
			\ },
			\ 'active': {
			\	'left': [
			\		[ 'mode', 'paste' ],
			\		[ 'readonly', 'filename', 'modified']
			\	],
			\	'right': [
			\		[ 'lineinfo' ]
			\	]
			\ },
			\ 'inactive': {
			\	'left': [
			\		[ 'readonly', 'filename', 'modified']
			\	],
			\	'right': [  ]
			\ },
			\ }
let g:lightline.tabline = {
		    \ 'left': [ [ 'tabs' ] ],
		    \ 'right': [ ] }
call lightline#init()

" vimtex config
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_imaps_enabled = 0
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = { '_': '' }

" TeX quotes
autocmd FileType tex let b:surround_{char2nr("q")} = "`\r'"
autocmd FileType tex let b:surround_{char2nr('Q')} = "``\r''"
autocmd FileType tex let b:AutoPairs = {'(':')', '[':']', '{':'}', "``":"''", "`":"'", '$':'$', '"':'"'}

" AutoPairs for plantuml
autocmd FileType plantuml let b:AutoPairs = {'(':')', '[':']', '{':'}', '`':'`'}

" coc.vim <tab> completion and <cr> stuff
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" coc code navigation
map <silent> <leader>cd <Plug>(coc-definition)
map <silent> <leader>cy <Plug>(coc-type-definition)
map <silent> <leader>ci <Plug>(coc-implementation)
map <silent> <leader>cr <Plug>(coc-references)
map <leader>cn <Plug>(coc-rename)
let g:which_key_map.c = {
			\ 'name': '+coc',
			\ 'd': 'definition',
			\ 'y': 'type definition',
			\ 'i': 'implementation',
			\ 'r': 'references',
			\ 'n': 'rename'
			\ }

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" auto-comment uit
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" which key register dict
call which_key#register('<Space>', "g:which_key_map")

" no line numbers in terminal
augroup TerminalStuff
	" Clear old autocommands
	au!
	autocmd TermOpen * setlocal nonumber norelativenumber
	autocmd TermOpen * set signcolumn=no
augroup END

" python-syntax
" let g:python_highlight_all = 1
let g:python_recommended_style = 0
" autocmd FileType python setlocal noexpandtab
au BufRead,BufNewFile *.py set expandtab

function! SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" markdown
let g:markdown_enable_spell_checking = 0
au FileType markdown set expandtab

" asciidoc
au FileType asciidoctor set expandtab

" binary files
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
  au BufWritePost *.bin set noeol
augroup END

" highlight Zephyr .overlay files as devicetree source (dts)
augroup devicetree_ft
	au!
	au BufRead,BufNewFile *.overlay set syntax=dts
	au BufRead,BufNewFile *.dtsi set syntax=dts
augroup END

augroup BibLaTeX
	" add allowed characters in biblatex labels to word delimiters
	autocmd!
	autocmd FileType bib setlocal iskeyword+=:,-
augroup END

" sneak
let g:sneak#use_ic_scs = 0

" fcitx5
autocmd InsertEnter * call system("fcitx5-temp-restore &")
autocmd InsertLeave * call system("fcitx5-temp-off &")

" colorscheme
source $XDG_CONFIG_HOME/nvim/mode.vim

" use .exrc files
set exrc
set secure

