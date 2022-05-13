" #----------------------------------------||---------------------------------------#
" #          _      _      _    ___  __    ||                                       #
" #         | |    | |    | |  |__ \/_ |   || File:                                 #
" #         | | ___| | ___| | __  ) || |   ||   $HOME/.vim/conf/vim-toggle-cong.vim #
" #     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                       #
" #    | |__| |  __/ |  __/   < / /_ | |   ||   Config file for vim-toggle plugin   #
" #     \____/ \___|_|\___|_|\_\____||_|   ||                                       #
" #________________________________________||_______________________________________#


" The map used to "toggle" things on and off.
" Default: <Leader>b
"let g:toggle_map

" Equal length vim lists of characters containing the "on" and "off" values
" for characters under the cursor.
" Defaults:
"     ['+', '>', '1']
"   and
"     ['-', '<', '0']
"let g:toggle_chars_on
"let g:toggle_chars_off

" Equal length vim lists of strings containing the "on" and "off" values for
" words under the cursor. When toggling, the case of the words are preserved
" (all-lowercase, all-caps, or title-case).
" Defaults:
"     ['true', 'on', 'yes', 'define', 'in', 'up', 'left', 'north', 'east']
"   and
"     ['false', 'off', 'no', 'undef', 'out', 'down', 'right', 'south', 'west']
"let g:toggle_words_on
"let g:toggle_words_off

" As with g:toggle_chars_on, g:toggle_chars_off, but this time we will try to
" look for consecutive characters and toggle them all at once.
" Defaults:
"     ['&']
"   and
"     ['|']
"let g:toggle_consecutive_on
"let g:toggle_consecutive_off
