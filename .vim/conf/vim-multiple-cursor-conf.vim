"#----------------------------------------||--------------------------------------------#
"#          _      _      _    ___  __    ||                                            #
"#         | |    | |    | |  |__ \/_ |   || File:                                      #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/vim-multiple-cursor.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                            #
"#    | |__| |  __/ |  __/   < / /_ | |   || Configuration file for vim-multiple-cursor #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                            #
"#________________________________________||____________________________________________#

" Mapping:
" Disable default mapping
"let g:multi_cursor_use_default_mapping=0

" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'

" If set to 0, insert mappings won't be supported in |insert-mode| anymore.
" Default: 1
let g:multi_cursor_support_imap = 1

" If set to 0, then pressing |g:multi_cursor_quit_key| in |visual-mode| will
" quit and delete all existing cursors, skipping normal mode with multiple
" cursors.
" Default: 0
let g:multi_cursor_exit_from_visual_mode = 0

" If set to 1, then pressing |g:multi_cursor_quit_key| in |insert-mode| will
" quit and delete all existing cursors, skipping normal mode with multiple
" cursors.
" Default: 0
let g:multi_cursor_exit_from_insert_mode = 0

" Any key in this map (values are ignored) will cause multi-cursor _Normal_
" mode to pause for map completion just like normal vim. Otherwise keys
" mapped in normal mode will "fail to replay" when multiple cursors are
" active. For example:
" `{'d':1}` makes normal-mode command `dw` work in multi-cursor mode.
"
" The default list contents should work for anybody, unless they have remapped
" a key from an operator-pending command to a non-operator-pending command or
" vice versa.
"
" These keys must be manually listed because vim doesn't provide a way to
" automatically see which keys _start_ mappings, and trying to run motion
" commands such as `j` as if they were operator-pending commands can break
" things.
" Default: `{'@': 1, 'F': 1, 'T': 1, '[': 1, '\': 1, ']': 1, '!': 1, '"': 1,
" 'c': 1, 'd': 1, 'f': 1, 'g': 1, 'm': 1, 'q': 1, 'r': 1, 't': 1, 'y': 1, 'z':
" 1, '<': 1, '=': 1, '>': 1}`
let g:multi_cursor_normal_maps = {'@': 1, 'F': 1, 'T': 1, '[': 1, '\': 1, ']': 1, '!': 1, '"': 1, 'c': 1, 'd': 1, 'f': 1, 'g': 1, 'm': 1, 'q': 1, 'r': 1, 't': 1, 'y': 1, 'z': 1, '<': 1, '=': 1, '>': 1}

" Same principle as |g:multi_cursor_normal_maps|
" Default: `{'T': 1, 'a': 1, 't': 1, 'F': 1, 'f': 1, 'i': 1}`
let g:multi_cursor_visual_maps = {'T': 1, 'a': 1, 't': 1, 'F': 1, 'f': 1, 'i': 1}
