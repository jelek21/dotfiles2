"#----------------------------------------||--------------------------------------------#
"#          _      _      _    ___  __    ||                                            #
"#         | |    | |    | |  |__ \/_ |   || File:                                      #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/airline-themes-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                            #
"#    | |__| |  __/ |  __/   < / /_ | |   ||  Configuration file for vim-airline-themes #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                            #
"#________________________________________||____________________________________________#


" To define a theme to be used by vim-airline you can set the variable
" :let g:airline_theme='dark'

" ### Themes Base16_vim and Base16_shell
" Improve the contrast for the inactive statusline.
" Default: 0
"let g:airline_base16_improved_contrast = 1

" Adjust the theme for a more monotonic look. This option is designed with the
" base16-solarized-(light|dark) colorschemes in mind, but work well with the
" other base16 colorshemes as well.
" Default: 0
"let g:airline_base16_monotone = 1


" ### Theme Base16
" Use a predefined palette instead of guessing values from highlight groups.
" Default: 0
"let g:airline#themes#base16#constant = 1


" ### Theme Deus_termcolors
" Set to 256 for 256-color mode (the default), or 16 for 16-color mode.
" Has no effect if using true/24-bit color.
"let g:deus_termcolors = 16


" ### Theme minimalist
" Highlight when the buffer is modified.
"let g:airline_minimalist_showmod = 1


" ### Theme onedark
" Set to 256 for 256-color mode (the default), or 16 for 16-color mode.
" Has no effect if using true/24-bit color.
"let g:onedark_termcolors = 16


" ### Theme molokai
" Enable brighter molokai theme. Mainly, the branch and filetype sections will
" be shown in a nice orange.
"let g:airline_molokai_bright = 1


" ### Theme Solarized
" Turns the outer-most section of the statusline Solarized green, making it
" look more like classic powerline in normal mode.
" To enable it: 1
" Default: 0
"let g:airline_solarized_normal_green = 0

" For buffer(s) in the tabline that are displayed in an inactive window pane,
" use a darker background for the buffer display in the tabline.
" To enable it: 1
" Default: 0
"let g:airline_solarized_dark_inactive_background = 0

" Turns the text color of the outer-most sections of the statusline to be
" dark.
" To enable it: 1
" Default: 0
"let g:airline_solarized_dark_text = 0

" Changes inactive window panes to have a dark bottom border instead
" of light by default.
" To enable it: 1
" Default: 0
"let g:airline_solarized_dark_inactive_border = 0

" In command mode, set the status line to its own color (violet).
" To enable it: 1
" Default: 0
"let airline_solarized_enable_command_color = 0

" Base16 has a Solarized theme with the usual colors, but mapped in the
" terminal differently.  The main difference is that the bright colors,
" Ansi 9-15, are left the same as their Ansi 1-7 counterparts.  The
" remaining solarized colors are mapped into higher indexes by using
" Base16 Shell.
"let g:solarized_base16 = 1


" ### Theme zenbrun
" Enable higher contrast colors for the zenburn colorscheme and the
" corresponding airline theme. Must be set before switching to the zenburn
" colorscheme
"let g:zenburn_high_Contrast = 1
