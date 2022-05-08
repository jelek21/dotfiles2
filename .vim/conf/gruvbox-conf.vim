"#----------------------------------------||-------------------------------------#
"#          _      _      _    ___  __    ||                                     #
"#         | |    | |    | |  |__ \/_ |   || File:                               #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/gruvbox-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                     #
"#    | |__| |  __/ |  __/   < / /_ | |   ||  Configuration file for vim-gruvbox #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                     #
"#________________________________________||_____________________________________#

" ####################################
" # Gruvbox theme configuration file #
" ####################################

" Enables italic text.
" default: gui 1, term 0
let g:gruvbox_italic=1
" Enables bold text.
" default: 1
let g:gruvbox_bold=1
" Enables underlined text.
" default: 1
let g:gruvbox_underline=1
" Enables undercurled text.
"default: 1
let g:gruvbox_undercurl=1
" Uses 256-color palette (suitable to pair with gruvbox-palette shell script).
" If you're dissatisfied with that, set option value to 16 to fallback base colors
" to your terminal palette. Refer † for details.
" default: 256
let g:gruvbox_termcolors=256
" Changes dark mode contrast. Overrides g:gruvbox_contrast option.
" Possible values are soft, medium and hard.
" default: medium
let g:gruvbox_contrast_dark='medium'
" Changes light mode contrast. Overrides g:gruvbox_contrast option.
" Possible values are soft, medium and hard.
" default: medium
let g:gruvbox_contrast_light='medium'
" Changes cursor background while search is highlighted.
" Possible values are any of gruvbox palette.
" default: orange
let g:gruvbox_hls_cursor='orange'
" Changes number column background color.
" Possible values are any of gruvbox palette.
" default: none
let g:gruvbox_number_column='none'
" Changes sign column background color.
" Possible values are any of gruvbox palette.
" default: bg1
let g:gruvbox_sign_column='bg1'
" Changes color column background color.
" Possible values are any of gruvbox palette.
" default: bg1
let g:gruvbox_color_column='bg1'
" Changes vertical split background color.
" Possible values are any of gruvbox palette.
" default: bg0
let g:gruvbox_vert_split='bg0'
" Enables italic for comments.
" default: 1
let g:gruvbox_italicize_comments=1
" Enables italic for strings.
" default: 0
let g:gruvbox_italicize_strings=0
" Inverts selected text.
" default: 1
let g:gruvbox_invert_selection=1
" Inverts GitGutter and Syntastic signs. Useful to rapidly focus on.
" default: 0
let g:gruvbox_invert_signs=0
" Inverts indent guides. Could be nice paired with set list so it would
" highlight only tab symbols instead of it's background.
" default: 0
let g:gruvbox_invert_indent_guides=0
" Inverts tabline highlights, providing distinguishable tabline-fill.
" default: 0
let g:gruvbox_invert_tabline=0
" Extrahighlighted strings
" default: 0
let g:gruvbox_improved_strings=0
" Extrahighlighted warnings
" default: 0
let g:gruvbox_improved_warnings=0
" Delegates guisp colorings to guifg or guibg.
" This is handy for terminal vim.
" Uses guifg or guibg for colors originally assigned to guisp.
" guisp concerns the colors of underlines and strikethroughs.
" Terminal vim cannot color underlines and strikethroughs, only gVim can.
" This option instructs vim to color guifg or guibg as a fallback.
" Possible Values: 'fg', 'bg'
" default: 'NONE'
let g:gruvbox_guisp_fallback='NONE'
