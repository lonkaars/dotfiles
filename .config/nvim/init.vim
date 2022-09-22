let mapleader = " "
" set number relativenumber
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
set cino=N-s
set linebreak " set wrap but don't wrap inside words
set viminfo+='1000,n~/.local/nvim/viminfo
set guifont=JetBrainsMono\ Nerd\ Font:h12
let g:neovide_cursor_animation_length=0.13
let g:neovide_cursor_vfx_mode="sonicboom"
let g:neovide_cursor_vfx_opacity=50.0
let g:neovide_cursor_trail_length=5.2
let g:neovide_cursor_animation_length=0.10
let g:sneak#label = 1
let g:which_key_map = {}
let g:airline_powerline_fonts = 1
let g:minimap_highlight='Visual'
let g:python3_host_prog='/usr/bin/python3'
hi! link CocFloating SneakScope
autocmd BufNewFile,BufRead *.jdscn set syntax=json

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" plugged
call plug#begin('~/.config/nvim/plugged')
" quality of life
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/tagalong.vim'
Plug 'terrortylor/nvim-comment'
Plug 'liuchengxu/vim-which-key'
Plug 'justinmk/vim-sneak'

" Plug 'jbgutierrez/vim-better-comments'
Plug 'junegunn/goyo.vim'
Plug 'othree/eregex.vim'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'wellle/targets.vim'
Plug 'dstein64/vim-startuptime'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dkarter/bullets.vim'
Plug 'editorconfig/editorconfig-vim'

" language plugins
Plug 'lervag/vimtex'
" Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-python/python-syntax'
Plug 'dart-lang/dart-vim-plugin'
Plug 'bartlomiejdanek/vim-dart'
Plug 'natebosch/dartlang-snippets'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'cespare/vim-toml'
Plug 'tikhomirov/vim-glsl'
" Plug 'gabrielelana/vim-markdown'

" 'vim=ide'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons' "Icons for filetypes
Plug 'puremourning/vimspector'
Plug 'samoshkin/vim-mergetool'

" themes
Plug 'arzg/vim-colors-xcode'
Plug 'sainnhe/sonokai'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'Mcmartelle/vim-monokai-bold'
Plug 'ntk148v/vim-horizon'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scheakur/vim-scheakur'
Plug 'mkarmona/materialbox'
Plug 'morhetz/gruvbox'
Plug '~/.config/nvim/local/bliss'
Plug '~/.config/nvim/local/polarlight.vim'
Plug '~/.config/nvim/local/autonyaa.vim'
Plug 'lonkaars/blubber'

" tryout themes
Plug 'https://github.com/mcchrish/zenbones.nvim'
Plug 'https://github.com/Mangeshrex/uwu.vim'
Plug 'https://github.com/metalelf0/jellybeans-nvim'
Plug 'https://github.com/lifepillar/vim-wwdc17-theme'
Plug 'https://github.com/jdsimcoe/abstract.vim'
Plug 'https://github.com/ts-26a/vim-darkspace'
Plug 'https://github.com/iandwelker/rose-pine-vim'
call plug#end()

" keybinds
tnoremap <Esc> <C-\><C-n>

nnoremap tt :tabnew<CR>

nmap <CR> o<Esc>

nnoremap <A-j> :m +1<CR>
nnoremap <A-k> :m -2<CR>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

command WordQuotesToLatex :%s/‘/`/g | :%s/’/'/g

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
			\ 'b': 'toggle-breakpoint',
			\ 'c': 'toggle-conditional-breakpoint',
			\ 'f': 'add-function-breakpoint',
			\ 'n': 'step-over',
			\ 'i': 'step-into',
			\ 'u': 'step-out'
			\ }

map <leader>p "+p
map <leader>y "+y
let g:which_key_map.p = 'x11-paste'
let g:which_key_map.y = 'x11-yank'

map <leader>* y/<C-R>0<CR>
let g:which_key_map['*'] = 'search-selected'

map <leader>h :noh<cr>
let g:which_key_map.h = 'no-highlighting'

map <leader>f :FZF<cr>
let g:which_key_map.f = 'fzf'

map <leader>b :norm gg=G``<cr>
let g:which_key_map.b = 'format-file'

map <leader>s /\s\+$<CR>
let g:which_key_map.s = 'trailing-whitespace'

map <leader>w :w<CR>
let g:which_key_map.w = 'write'

map <leader>dv :VimtexView<cr>
map <leader>dc :VimtexCompile<cr>
map <leader>de :VimtexErrors<cr>
map <leader>dt :VimtexTocToggle<cr>
let g:which_key_map.d = {
			\ 'name': '+document',
			\ 'v': 'view',
			\ 'c': 'compile',
			\ 'e': 'errors',
			\ 't': 'table-of-contents'
			\ }

map <leader>ts :sp term://zsh<cr>i
map <leader>tv :vsp term://zsh<cr>i
map <leader>tt :tabnew term://zsh<cr>i
let g:which_key_map.t = {
			\ 'name': '+term',
			\ 's': 'split',
			\ 'v': 'vsplit',
			\ 't': 'tab'
			\ }

map <leader>.v :tabnew ~/.config/nvim/init.vim<cr>
map <leader>.c :tabnew ~/.config/picom.conf<cr>
map <leader>.z :tabnew ~/.zshrc<cr>
map <leader>.i :tabnew ~/.config/i3/config<cr>
map <leader>.p :tabnew ~/.config/polybar/config<cr>
map <leader>.x :tabnew ~/.config/xb.rc<cr>
let g:which_key_map['.'] = {
			\ 'name': '+config',
			\ 'v': 'vim',
			\ 'z': 'zsh',
			\ 'i': 'i3',
			\ 'c': 'picom',
			\ 'p': 'polybar',
			\ 'x': 'xbindkeysrc'
			\ }
" cmd maps
cnoreabbrev W w
cnoreabbrev sudow w !sudo tee %

" hexokinase

let g:Hexokinase_optInPatterns = [
			\ 'full_hex',
			\ 'triple_hex',
			\ 'rgb',
			\ 'rgba',
			\ 'hsl',
			\ 'hsla'
			\ ]

" colorscheme thingers

if filereadable(expand('~/.local/share/mode/light'))
	colorscheme blubber
	source $HOME/.config/nvim/blubber-lightline.vim
else
	colorscheme polarlight
	source $HOME/.config/nvim/local/polarlight.vim/lightline.vim
endif

let g:lightline = {
			\ 'colorscheme': 'bliss',
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

" vimtex config
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
			\ 'backend' : 'nvim',
			\ 'background' : 1,
			\ 'build_dir' : '',
			\ 'callback' : 1,
			\ 'continuous' : 1,
			\ 'executable' : 'latexmk',
			\ 'engine' : 'xelatex',
			\ 'hooks' : [],
			\ 'options' : [
			\   '-xelatex',
			\   '-file-line-error',
			\   '-synctex=1',
			\   '-interaction=nonstopmode',
			\ ],
			\}

" auto start compilation
augroup vimtex_config
	autocmd User VimtexEventInitPost silent VimtexCompile
augroup END
" TeX quotes
autocmd FileType tex let b:surround_{char2nr("q")} = "`\r'"
autocmd FileType tex let b:surround_{char2nr('Q')} = "``\r''"

" coc.vim <tab> completion and <cr> stuffs
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

if has('patch8.1.1068')
	" Use `complete_info` if your (Neo)Vim version supports it.
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" coc code navigation
map <silent> <leader>cd <Plug>(coc-definition)
map <silent> <leader>cy <Plug>(coc-type-definition)
map <silent> <leader>ci <Plug>(coc-implementation)
map <silent> <leader>cr <Plug>(coc-references)
map <leader>cn <Plug>(coc-rename)
let g:which_key_map.c = {
			\ 'name': '+coc',
			\ 'd': 'definition',
			\ 'y': 'type-definition',
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
