"#----------------------------------------||-------------------------------------#
"#          _      _      _    ___  __    ||                                     #
"#         | |    | |    | |  |__ \/_ |   || File:                               #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/fzf-conf.vim     #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                     #
"#    | |__| |  __/ |  __/   < / /_ | |   ||  Configuration file for vim-fzf     #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                     #
"#________________________________________||_____________________________________#

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
"   - Note that this array is passed as arguments to fzf#vim#with_preview function.
"   - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
" let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

" Empty value to disable preview window altogether
" let g:fzf_preview_window = []


" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

