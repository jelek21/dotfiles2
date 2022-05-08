" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" ## Autocomplete-flow
 Plug 'wokalski/autocomplete-flow'

" ## vim gitgutter
Plug 'airblade/vim-gitgutter'

" ## editorconfig
Plug 'editorconfig/editorconfig-vim'

" ## vim keeppad
Plug 'haya14busa/vim-keeppad'

" ## Junegunn
Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': './install --all'
      \ }

Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

" ## yowish
Plug 'KabbAmine/yowish.vim'

" ## emmet
Plug 'mattn/emmet-vim'

" ## NerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" ## ALE
Plug 'w0rp/ale'

" ## Vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ## Nord theme
Plug 'arcticicestudio/nord-vim'

" ## Vim-scripts
Plug 'f1reflyyyylmao/Conque-GDB'
Plug 'vim-scripts/vcscommand.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/copypath.vim'
Plug 'vim-scripts/Toggle'
Plug 'vim-scripts/nextval'
Plug 'vim-scripts/phpfolding.vim'
Plug 'vim-scripts/DoxyGen-Syntax'
Plug 'vim-scripts/dante.vim'
Plug 'vim-scripts/gtk-vim-syntax'
Plug 'vim-scripts/vim-svngutter'
Plug 'vim-scripts/SearchComplete'
Plug 'vim-scripts/The-NERD-tree'
Plug 'vim-scripts/asu1dark.vim'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'vim-scripts/EnhancedJumps'
Plug 'vim-scripts/Cpp11-Syntax-Support'
Plug 'vim-scripts/desert-warm-256'
Plug 'vim-scripts/cSyntaxAfter'
Plug 'vim-scripts/Indent-Finder'
Plug 'vim-scripts/Gundo'
Plug 'vim-scripts/mycomment'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'

" ## Node
Plug 'moll/vim-node'

" ## CPP
Plug 'octol/vim-cpp-enhanced-highlight'

" Neoformat
Plug 'sbdchd/neoformat'

" ## Tpope
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

" ## ThemeInABox
Plug 'kracejic/themeinabox.vim'

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
" Initialize plugin system
call plug#end()
