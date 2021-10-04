if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


call plug#begin('~/.config/nvim/autoload/plugged')

   " Better Comments
    Plug 'tpope/vim-commentary'
     " Change dates fast
    Plug 'tpope/vim-speeddating'
     " Convert binary, hex, etc..
    Plug 'glts/vim-radical'
     " Repeat stuff
    Plug 'tpope/vim-repeat'
        " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting

    Plug 'suy/vim-context-commentstring'
    " highlight all matches under cursor
    " Plug 'RRethy/vim-illuminate'


    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'beeender/Comrade'



  if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else

     " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    " Sneak
    " Plug 'justinmk/vim-sneak'
    " Easymotion
    Plug 'easymotion/vim-easymotion'
        " Surround
    Plug 'tpope/vim-surround'
    " Files
    Plug 'tpope/vim-eunuch'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'

    " Better Syntax Support
    Plug('sheerun/vim-polyglot')

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/playground'
    Plug 'romgrk/nvim-treesitter-context'
     " Minimap
    " Plug 'wfxr/minimap.vim'

    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'

    " File Explorer
    Plug('scrooloose/NERDTree')
    " Auto pairs for '(' '[' '{'
    Plug('jiangmiao/auto-pairs')

    " Closetags
    Plug 'alvan/vim-closetag'

    "Themes
    Plug 'joshdick/onedark.vim'
    Plug 'kaicataldo/material.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'


    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    " Statusline (Airlines)
    Plug 'vim-airline/vim-airline'
     " Plug 'glepnir/galaxyline.nvim'    "**************************************Bottom Tabline
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kevinhwang91/rnvimr'
    
    Plug 'chriskempson/base16-vim'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

     " Plug 'francoiscabrol/ranger.vim'
      " Plug 'rbgrouleff/bclose.vim'

    "Plug FZF & vim-rooter into vim
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'airblade/vim-rooter'
    Plug 'norcalli/nvim-colorizer.lua'

    "Startify  | Start Screen
    Plug 'mhinz/vim-startify'
    Plug 'mhinz/vim-startify'

    "Git Integration
   " Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    Plug 'airblade/vim-gitgutter'

    " Vista
    " Plug 'liuchengxu/vista.vim'


    " Floaterm / Terminal
    Plug 'voldikss/vim-floaterm'

     "Rainbow
    Plug 'junegunn/rainbow_parentheses.vim'

   " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

     " Zen mode
    Plug 'junegunn/goyo.vim'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Interactive code
    Plug 'metakirby5/codi.vim'

     " Better tabline
    Plug 'romgrk/lib.kom'
    " Plug 'romgrk/barbar.nvim'        "****************************************Top Tabline

     " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'

    " Better Whitespace
    Plug 'ntpeters/vim-better-whitespace'


    "undo time travel
    Plug 'mbbill/undotree'

    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Plug 'brooth/far.vim'

     " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'

      " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'

     Plug 'moll/vim-bbye'

         " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'

    Plug 'vifm/vifm.vim'


    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " Vim-Commentary
    Plug 'tpope/vim-commentary'

    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Vim lightline
    "Plug 'itchyny/lightline.vim'
    Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

    "nightfly
    Plug 'bluz71/vim-nightfly-guicolors'  | "color scheme

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


