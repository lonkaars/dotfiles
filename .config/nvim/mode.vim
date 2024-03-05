" this file should only contain colorscheme information, and sourcing it
" should cause colors set by `mode` to update in an existing neovim session

if filereadable(expand("$XDG_DATA_HOME/mode/light"))
	colorscheme github-light
else
	colorscheme ghdark
endif

source $XDG_CONFIG_HOME/nvim/termcolors.vim

source $XDG_CONFIG_HOME/nvim/lightline.vim
call lightline#colorscheme()

source $XDG_CONFIG_HOME/nvim/color-tweaks.vim

