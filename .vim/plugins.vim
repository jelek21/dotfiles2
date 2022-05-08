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
" # Gruvbox theme
if get(g:, 'colors_name', 'default') == 'gruvbox'
  source ~/.vim/conf/gruvbox-conf.vim
endif

" #############################################################################
" # Autocomplete-flow
if ( exists( 'g:loaded_autocomplete_flow' ) && g:loaded_autocomplete_flow )
  source ~/.vim/conf/autocomplete-flow-conf.vim
endif

" #############################################################################
" # Lightline
if ( exists( 'g:loaded_lightline' ) && g:loaded_lightline )
  source ~/.vim/conf/lightline-conf.vim
endif

" #############################################################################
" # Vim-keeppad
if ( exists( 'g:loaded_keeppad' ) && g:loaded_keeppad )
  source ~/.vim/conf/vim-keeppad-conf.vim
endif

" #############################################################################
" # fzf
if ( exists( 'g:loaded_keeppad' ) && g:loaded_keeppad )
  source ~/.vim/conf/fzf-conf.vim
endif
endfunction

au VimEnter * call s:configurePlugins()

