"always source these
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/setting.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/onedark.vim
   "source $HOME/.config/nvim/themes/material.vim
source $HOME/.config/nvim/themes/airline.vim
   "source $HOME/.config/nvim/themes/vim-colors-solarized.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/vim-nerdtree-syntax-highlight.vim
source $HOME/.config/nvim/plug-config/vifm.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/plug-config/markdown.vim
" source $HOME/.config/nvim/themes/nightfly.vim
"source $HOME/.config/nvim/plug-config/signify.vim
"source $HOME/.config/nvim/plug-config/fu
"source $HOME/.config/nvim/plug-config/kite.vim

" let g:python3_host_prog = expand("/home/oli/anaconda3/envs/neovim/bin/python")
let &ruler=1
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
