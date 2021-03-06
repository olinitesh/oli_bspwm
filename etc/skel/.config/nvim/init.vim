" General Settings
if !exists('g:vscode')
  source $HOME/.config/nvim/plug-config/polyglot.vim
endif

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/setting.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/functions.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/highlightyank.vim
else

  " Themes
  source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/airline.vim
  "source $HOME/.config/nvim/themes/base16-tomorrow-night.vim
 "source $HOME/.config/nvim/themes/material.vim
 "source $HOME/.config/nvim/themes/vim-colors-solarized.vim
 "source $HOME/.config/nvim/themes/nightfly.vim
  source $HOME/.config/nvim/themes/syntax.vim
  " source $HOME/.config/nvim/themes/nvcode.vim

  " Plugin Configuration
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/plug-config/emmet.vim
  source $HOME/.config/nvim/plug-config/bracey.vim

  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  " luafile $HOME/.config/nvim/lua/galaxy-line.lua
  luafile $HOME/.config/nvim/lua/treesitter.lua
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/git-messenger.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/barbar.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/tagalong.vim
  source $HOME/.config/nvim/plug-config/bracey.vim
  source $HOME/.config/nvim/plug-config/asynctask.vim
  source $HOME/.config/nvim/plug-config/window-swap.vim
  source $HOME/.config/nvim/plug-config/markdown-preview.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua

  " source $HOME/.config/nvim/plug-config/sneak.vim
  " source $HOME/.config/nvim/plug-config/rainbow.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  " source $HOME/.config/nvim/plug-config/xtabline.vim
  " source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
  " source $HOME/.config/nvim/plug-config/ale.vim


  " source $HOME/.config/nvim/plug-config/nerdtree.vim
  " source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  " source $HOME/.config/nvim/plug-config/vim-nerdtree-syntax-highlight.vim
  " source $HOME/.config/nvim/plug-config/vifm.vim
  " source $HOME/.config/nvim/plug-config/markdown.vim
  "source $HOME/.config/nvim/plug-config/signify.vim
  "source $HOME/.config/nvim/plug-config/fu
  "source $HOME/.config/nvim/plug-config/kite.vim

endif
source $HOME/.config/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


