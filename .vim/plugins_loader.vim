" #----------------------------------------||-----------------------------------#
" #          _      _      _    ___  __    ||                                   #
" #         | |    | |    | |  |__ \/_ |   || File:                             #
" #         | | ___| | ___| | __  ) || |   ||   $HOME/.vim/plugins_loader.vim   #
" #     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
" #    | |__| |  __/ |  __/   < / /_ | |   ||   Plug config to load all vim     #
" #     \____/ \___|_|\___|_|\_\____||_|   ||   plugins                         #
" #________________________________________||___________________________________#

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" ## vim gitgutter
Plug 'airblade/vim-gitgutter'

" ## vim keeppad
Plug 'haya14busa/vim-keeppad'

" ## Junegunn
Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'


" ## emmet
Plug 'mattn/emmet-vim', { 'for': ['css', 'html', 'php', 'htm', 'json', 'js'] }

" ## NerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" ## ALE
Plug 'w0rp/ale'

" ## Vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" ## Vim-scripts
Plug 'f1reflyyyylmao/Conque-GDB', {'for': ['C/C++'] }
Plug 'vim-scripts/DoxygenToolkit.vim', { 'for': ['C/C++', 'java', 'python'] }
Plug 'vim-scripts/copypath.vim'
Plug 'vim-scripts/Toggle'
Plug 'vim-scripts/nextval'
Plug 'vim-scripts/phpfolding.vim'
Plug 'vim-scripts/DoxyGen-Syntax'
Plug 'vim-scripts/vim-svngutter'
Plug 'vim-scripts/SearchComplete'
Plug 'vim-scripts/JavaScript-Indent', { 'for': ['javascript']}
Plug 'vim-scripts/Cpp11-Syntax-Support', {'for': ['C++']}
Plug 'vim-scripts/cSyntaxAfter', {'for': ['C/C++', 'java', 'php']}
Plug 'vim-scripts/Indent-Finder', { 'do': 'python22 setup.py install' }
Plug 'sjl/gundo.vim', {'on': ['GundoToggle', 'GundoHide', 'GundoShow', 'GundoRenderGraph']}
Plug 'vim-scripts/mycomment'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/c.vim', { 'for': 'C/C++' }

" ## Node
Plug 'moll/vim-node'

" ## CPP
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'C/C++' }

" Neoformat
Plug 'sbdchd/neoformat'

" ## Tpope
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

" ## Polyglot
Plug 'sheerun/vim-polyglot'

" ## Comments
Plug 'tomtom/tcomment_vim'

" Shougo
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" ## Autocomplete-flow (for deoplete)
 Plug 'wokalski/autocomplete-flow'

" #Themes
" ## yowish
Plug 'KabbAmine/yowish.vim'
" ## Wombat
Plug 'gryf/wombat256grf'
" ## Moonlight
Plug 'lewis6991/moonlight.vim'
" ## Xcode
Plug 'arzg/vim-colors-xcode'
" ## Novum
Plug 'dylnmc/novum.vim'
" ## foo
Plug 'victorze/foo'
" ## Molokai
Plug 'tomasr/molokai'
" ## Badwolf
Plug 'sjl/badwolf'
" ## Gruvbox
Plug 'morhetz/gruvbox'
" ## ThemeInABox
Plug 'kracejic/themeinabox.vim'
" Desert vim-script
Plug 'vim-scripts/desert-warm-256'
" asu1dark vim-script
Plug 'vim-scripts/asu1dark.vim'
Plug 'vim-scripts/dante.vim'
" ## Nord theme
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()
