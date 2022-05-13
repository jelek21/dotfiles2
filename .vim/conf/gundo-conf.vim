"#----------------------------------------||-----------------------------------#
"#          _      _      _    ___  __    ||                                   #
"#         | |    | |    | |  |__ \/_ |   || File:                             #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/gundo-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
"#    | |__| |  __/ |  __/   < / /_ | |   || Config file for Gundo plugin      #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                   #
"#________________________________________||___________________________________#

nnoremap <F5> :GundoToggle<CR>

" Set the horizontal width of the Gundo graph (and preview).
" Default: 45
let g:gundo_width = 60

" Set the vertical height of the Gundo preview.
" Default: 15
let g:gundo_preview_height = 40

" Force the preview window below current windows instead of below the graph.
" This gives the preview window more space to show the unified diff.
" Example:
"    +--------+            +--------+
"    !g!      !            !      !g!
"    !g!      !     or     !      !g!
"    !g!______!            !______!g!
"    !g!pppppp!            !pppppp!g!
"    +--------+            +--------+
" Default: 0
let g:gundo_preview_bottom = 0

" Set this to 1 to make the Gundo graph (and preview) open on the right side
" instead of the left.
" Default: 0 (off, open on the left side)
let g:gundo_right = 1

" Set this to 0 to disable the help text in the Gundo graph window.
" Default: 1 (show the help)
let g:gundo_help = 1

" Set this to 1 to disable Gundo entirely.
" Useful if you use the same ~/.vim folder on multiple machines, and some of
" them may not have Python support.
" Default: 0 (Gundo is enabled as usual)
let g:gundo_disable = 0

" These options let you change the keys that navigate the undo graph. This is
" useful if you use a Dvorak keyboard and have changed your movement keys.
" Default: gundo_map_move_older = "j"
"          gundo_map_move_newer = "k"
let g:gundo_map_move_older = "j"
let g:gundo_map_move_newer = "k"

" Set this to 1 to automatically close the Gundo windows when reverting.
" Default: 0 (windows do not automatically close)
let g:gundo_close_on_revert = 0

" Set these to a string to display it as the status line for each Gundo window.
" Default: unset (windows use the default statusline)
"let g:gundo_preview_statusline =
"let g:gundo_tree_statusline =

" Set this to 0 to disable automatically rendering preview diffs as you move
" through the undo tree (you can still render a specific diff with r).  This can
" be useful on large files and undo trees to speed up Gundo.
" Default: 1 (automatically preview diffs)
let g:gundo_auto_preview = 1

" This is the delay in milliseconds between each change when running 'play to'
" mode. Set this to a higher number for a slower playback or to a lower number
" for a faster playback.
" Default: 60
let g:gundo_playback_delay = 60

" Set this to 0 to keep focus in the Gundo window after a revert.
" Default: 1
let g:gundo_return_on_revert = 1

" Set this to 1 to have Gundo use Python 3 instead of 2 when available.
" Default: 0
let g:gundo_prefer_python3 = 1
