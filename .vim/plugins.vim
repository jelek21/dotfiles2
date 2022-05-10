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


function! s:configurePlugins()

  let conf_dir = $HOME . '/.vim/conf/'

" #############################################################################
" # Airline
if ( exists( 'g:loaded_airline' ) && g:loaded_airline )
  exe 'source' conf_dir . 'airline-conf.vim'
  :AirlineSymbols powerline
endif

" #############################################################################
" # Airline-themes
if ( exists( 'g:loaded_airline_themes' ) && g:loaded_airline_themes )
  exe 'source' conf_dir . 'airline-themes-conf.vim'
  :AirlineSymbols powerline
endif

" #############################################################################
" # ALE
if ( exists( 'g:loaded_ale_dont_use_this_in_other_plugins_please' ) && g:loaded_ale_dont_use_this_in_other_plugins_please )
  exe 'source' conf_dir . 'ale-conf.vim'
endif

" #############################################################################
" # Autocomplete-flow
if ( exists( 'g:loaded_autocomplete_flow' ) && g:loaded_autocomplete_flow )
  exe 'source' conf_dir . 'autocomplete-flow-conf.vim'
endif

" #############################################################################
" # Conque-GDB
if ( exists( 'g:plugin_conque_gdb_loaded' ) && g:plugin_conque_gdb_loaded )
  exe 'source' conf_dir . 'conque-gdb-conf.vim'
endif

" #############################################################################
" # copypath
if ( exists( 'g:loaded_copypath' ) && g:loaded_copypath )
  " set this option value to 1 then, copy file path and name to unnamed
  " register too.
  let g:copypath_copy_to_unnamed_register = 0
endif

" #############################################################################
" # Doxygen Toolkit
if ( exists( 'loaded_DoxygenToolkit' ) && loaded_DoxygenToolkit )
  exe 'source' conf_dir . 'doxygenToolkit-conf.vim'
endif

" #############################################################################
" # emmet
if ( exists( 'g:loaded_emmet_vim' ) && g:loaded_emmet_vim )
  exe 'source' conf_dir . 'emmet-conf.vim'
endif

" #############################################################################
" # fzf
if ( exists( 'g:loaded_fzf_vim' ) && g:loaded_fzf_vim )
  exe 'source' conf_dir . 'fzf-conf.vim'
endif

" #############################################################################
" # GitGutter
if ( exists( 'g:loaded_gitgutter' ) && g:loaded_gitgutter )
  exe 'source' conf_dir . 'gitgutter-conf.vim'
endif

" #############################################################################
" # Gruvbox theme
if get(g:, 'colors_name', 'default') == 'gruvbox'
  exe 'source' conf_dir . 'gruvbox-conf.vim'
endif

" #############################################################################
" # Lightline
if ( exists( 'g:loaded_lightline' ) && g:loaded_lightline )
  exe 'source' conf_dir . 'lightline-conf.vim'
endif

" #############################################################################
" # NERDTree
if ( exists( 'loaded_nerd_tree' ) && loaded_nerd_tree )
  exe 'source' conf_dir . 'nerdTree-conf.vim'
endif

" #############################################################################
" # Vim-keeppad
if ( exists( 'g:loaded_keeppad' ) && g:loaded_keeppad )
  exe 'source' conf_dir . 'vim-keeppad-conf.vim'
endif

" #############################################################################
" # vim-mutliple-cursor
if ( filereadable(expand("~/vim/plugged/vim-multiple-cursor/plugin/multiple_cursor.vim")))
  exe 'source' conf_dir . 'vim-multiple-cursor-conf.vim'
endif


endfunction

au VimEnter * call s:configurePlugins()

