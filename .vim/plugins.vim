"#----------------------------------------||-----------------------------------#
"#          _      _      _    ___  __    ||                                   #
"#         | |    | |    | |  |__ \/_ |   || File:                             #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/plugins.vim         #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
"#    | |__| |  __/ |  __/   < / /_ | |   || Sources configuration files for   #
"#     \____/ \___|_|\___|_|\_\____||_|   || every vim plugins                 #
"#________________________________________||___________________________________#

" ########
" # LOAD #
" ########
" Load all plugins
source ~/.vim/plugins_loader.vim

" ################
" # CONFIG FILES #
" ################
" Load each plugin's configuration file
let s:conf_dir = $HOME . '/.vim/conf/'


function! s:configurePlugins()

" #############################################################################
" # Airline
exe 'source' s:conf_dir . 'airline-conf.vim'
:AirlineSymbols powerline

" #############################################################################
" # Airline-themes
exe 'source' s:conf_dir . 'airline-themes-conf.vim'

" #############################################################################
" # ALE
exe 'source' s:conf_dir . 'ale-conf.vim'

" #############################################################################
" # Autocomplete-flow
exe 'source' s:conf_dir . 'autocomplete-flow-conf.vim'

" #############################################################################
" # Conque-GDB
exe 'source' s:conf_dir . 'conque-gdb-conf.vim'

" #############################################################################
" # copypath
" set this option value to 1 then, copy file path and name to unnamed
" register too.
let g:copypath_copy_to_unnamed_register = 0

" #############################################################################
" # Doxygen Toolkit
exe 'source' s:conf_dir . 'doxygenToolkit-conf.vim'

" #############################################################################
" # emmet
exe 'source' s:conf_dir . 'emmet-conf.vim'

" #############################################################################
" # fzf
exe 'source' s:conf_dir . 'fzf-conf.vim'

" #############################################################################
" # GitGutter
exe 'source' s:conf_dir . 'gitgutter-conf.vim'

" #############################################################################
" # grep
exe 'source' s:conf_dir . 'grep-conf.vim'

" #############################################################################
" # Gruvbox theme
if get(g:, 'colors_name', 'default') == 'gruvbox'
  exe 'source' s:conf_dir . 'gruvbox-conf.vim'
endif

" #############################################################################
" # Gundo
exe 'source' s:conf_dir . 'gundo-conf.vim'

" #############################################################################
" # NERDTree
exe 'source' s:conf_dir . 'nerdTree-conf.vim'

" #############################################################################
" # nextval
exe 'source' s:conf_dir . 'nextval-conf.vim'

" #############################################################################
" # svnGutter
exe 'source' s:conf_dir . 'svngutter-conf.vim'

" #############################################################################
" # Vim-keeppad
exe 'source' s:conf_dir . 'vim-keeppad-conf.vim'

" #############################################################################
" # vim-mutliple-cursor
exe 'source' s:conf_dir . 'vim-multiple-cursor-conf.vim'

" #############################################################################
" # vim-toggle
exe 'source' s:conf_dir . 'vim-toggle-conf.vim'


endfunction

au VimEnter * call s:configurePlugins()

" #############################################################################
" # CSyntaxAfter
autocmd! FileType c,cpp,java,php call CSyntaxAfter()
