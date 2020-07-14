let mapleader = " "
set number relativenumber
set tabstop=4
set wrap
set ai
set shiftwidth=4
set termguicolors
set shortmess=I
set splitbelow splitright
set noshowmode
set ignorecase
set smartcase
set timeoutlen=500
set conceallevel=0
set mouse=a
set linebreak " set wrap but don't wrap inside words
set viminfo+='1000,n/home/loek/.local/nvim/viminfo
set guifont=JetBrainsMono\ NF:h10
let g:sneak#label = 1
let g:which_key_map = {}
let g:airline_powerline_fonts = 1
let g:minimap_highlight='Visual'
hi! link CocFloating SneakScope
cabbrev help tab help

" if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
" 	echo "Downloading junegunn/vim-plug to manage plugins..."
" 	silent !mkdir -p ~/.config/nvim/autoload/
" 	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
" 	autocmd VimEnter * PlugInstall
" endif

" plugged
call plug#begin('~/.config/nvim/plugged')
" quality of life
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'ap/vim-css-color' "  color name highlighter
Plug 'vim-scripts/colorizer' " better highlighter?
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-commentary'
Plug 'liuchengxu/vim-which-key'
Plug 'justinmk/vim-sneak'
Plug 'jbgutierrez/vim-better-comments'
Plug 'junegunn/goyo.vim'
Plug 'othree/eregex.vim'
Plug 'psliwka/vim-smoothie'

" language plugins
Plug 'lervag/vimtex'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/c.vim'

" 'vim=ide'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons' "Icons for filetypes
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

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
call plug#end()

" keybinds
tnoremap <Esc> <C-\><C-n>

nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>
nnoremap tt :tabnew<CR>

nmap <CR> o<Esc>

nnoremap <A-j> :m +1<CR>
nnoremap <A-k> :m -2<CR>

" leader keybindings
nnoremap <silent> <leader> :WhichKey '<space>'<CR>

map <leader>p "+p
map <leader>y "+y
let g:which_key_map.p = 'x11-paste'
let g:which_key_map.y = 'x11-yank'

map <leader>h :noh<cr>
let g:which_key_map.h = 'no-highlighting'

map <leader>b :Autoformat<cr>
let g:which_key_map.b = 'format-file'

map <leader>w /\s\+$<CR>
let g:which_key_map.w = 'trailing-whitespace'

map <leader>dv :!opout <c-r>%<cr><cr>
map <leader>dc :w! <bar> !compiler <c-r>%<cr>
let g:which_key_map.d = {
			\ 'name': '+document',
			\ 'v': 'view',
			\ 'c': 'compile'
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
map <leader>.p :tabnew ~/.config/polybar/config.ini<cr>
let g:which_key_map['.'] = {
			\ 'name': '+config',
			\ 'v': 'vim',
			\ 'z': 'zsh',
			\ 'i': 'i3',
			\ 'c': 'picom',
			\ 'p': 'polybar'
			\ }

colorscheme xcodedark
let g:lightline = {
			\ 'colorscheme': 'pywal',
			\ 'separator': { 'left': '', 'right': '' },
			\ 'mode_map': {
			\	'n' : 'NORM',
			\	'i' : 'INS',
			\	'R' : 'REP',
			\	'v' : 'VIS',
			\	'V' : 'V-L',
			\	"\<C-v>": 'V-B',
			\	'c' : 'CMD',
			\	's' : 'SEL',
			\	'S' : 'S-L',
			\	"\<C-s>": 'S-B',
			\	't': 'TERM'
			\ },
			\ 'active': {
			\	'left': [
			\		[ 'mode', 'paste' ],
			\		[ 'readonly', 'filename', 'modified']
			\	],
			\	'right': [
			\		[ 'lineinfo' ],
			\		[ 'filetype' ]
			\	]
			\ },
			\ }
source $HOME/.config/nvim/pywal/pywal.vim

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

" auto start compilation (!not tested!)
augroup vimtex_config
	autocmd User VimtexEventInitPost silent VimtexCompile
augroup END
" TeX quotes
autocmd FileType tex let b:surround_{char2nr("q")} = "`\r'"
autocmd FileType tex let b:surround_{char2nr('Q')} = "``\r''"

" coc.vim <tab> completion and <cr> stuffs
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" which key register dict
call which_key#register('<Space>', "g:which_key_map")

" no line numbers in terminal
augroup TerminalStuff
	" Clear old autocommands
	au!
	autocmd TermOpen * setlocal nonumber norelativenumber
augroup END


