"----------------------------------------||-----------------------------------"
"          _      _      _    ___  __    ||                                   "
"         | |    | |    | |  |__ \/_ |   || File:                             "
"         | | ___| | ___| | __  ) || |   ||     $HOME/.vim/conf/gitgutter.vim "
"     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   "
"    | |__| |  __/ |  __/   < / /_ | |   || Config file for vim-gitgutter     "
"     \____/ \___|_|\___|_|\_\____||_|   ||                                   "
"________________________________________||___________________________________"


" The most important option is 'updatetime' which determines how long (in
" milliseconds) the plugin will wait after you stop typing before it updates
" the signs.  Vim's default is 4000.  I recommend 100.  Note this also
" controls how long vim waits before writing its swap file.


" This option determines where the preview window pops up as a result of the
" :GitGutterPreviewHunk command. Other plausible values are 'to', 'bel', 
" 'abo'.
" See the end of the |opening-window| docs.
" Default: bo
"let g:gitgutter_preview_win_location = 'bo'

" This option determines what git binary to use.  Set this if git is not on
" your path.
" Default: 'git'
let g:gitgutter_git_executable = '/usr/bin/git'

" Use this option to pass any extra arguments to git when running git-diff.
" For example:
" let g:gitgutter_git_args = '--git-dir=""'
" Default: empty
"let g:gitgutter_git_args

" Use this option to pass any extra arguments to git-diff.  For example:
" let g:gitgutter_diff_args = '-w'
" Default: empty
"let g:gitgutter_diff_args = ''


" By default buffers are diffed against the index.  Use this option to diff
" against the working tree.  For example:
" let g:gitgutter_diff_relative_to = 'working_tree'
" Default: empty
"let g:gitgutter_diff_relative_to = ''

" By default buffers are diffed against the index.  Use this option to diff
" against a revision instead.  For example:
" let g:gitgutter_diff_base = '<some commit SHA>'
" Default: empty
"let g:gitgutter_diff_base = ''

" The plugin pipes the output of git-diff into grep to minimise the amount of
" data vim has to process.  Set this option if grep is not on your path.
"
" grep must produce plain-text output without any ANSI escape codes or
" colours.
" Use this option to turn off colours if necessary.
" let g:gitgutter_grep = 'grep --color=never'
" If you do not want to use grep at all (perhaps to debug why signs are
" not showing), set this option to an empty string:
" let g:gitgutter_grep = ''
" Default: 'grep'
let g:gitgutter_grep = '/usr/bin/grep --color=never'

" Determines whether or not to show signs.
" Default: 1
let g:gitgutter_signs = 1

" Determines whether or not to show line highlights.
" Default: 0
let g:gitgutter_highlight_lines = 0

" Determines whether or not to show line number highlights.
" Default: 0
let g:gitgutter_highlight_linenrs = 0

" Sets the maximum number of signs to show in a buffer.  Vim is slow at
" updating signs, so to avoid slowing down the GUI the number of signs is
" capped.
" When the number of changed lines exceeds this value, the plugin removes
" all signs and displays a warning message.
" When set to -1 the limit is not applied.
" Default: 500 (Vim < 8.1.0614, Neovim < 0.4.0) -1 (otherwise)
let g:gitgutter_max_signs=500

" Sets the sign-priority gitgutter assigns to its signs.
" Default: 10
let g:gitgutter_sign_priority = 10

" Determines whether gitgutter preserves non-gitgutter signs. When 1,
" gitgutter will not preserve non-gitgutter signs.
" Default: 0 (Vim < 8.1.0614, Neovim < 0.4.0) 1 (otherwise)
let g:gitgutter_sign_allow_clobber = 1

" Signs customisation:
" You can use unicode characters but not images.  Signs must not take up more
" than 2 columns.
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '~'
let g:gitgutter_sign_removed            = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_removed_above_and_below = '_¯'
let g:gitgutter_sign_modified_removed   = '~_'

" Only applies to existing GitGutter* highlight groups.
" See |gitgutter-highlights|.
"
" Controls whether to override the signs' background colours to match the
" |hl-SignColumn|.
" Default: 0
let g:gitgutter_set_sign_backgrounds = 0

" Whether to use floating/popup windows for hunk previews.  Note that if you
" use popup windows on Vim you will not be able to stage partial hunks via the
" preview window.
" Default: 0 (Vim)
"          0 (NeoVim which does not support floating windows)
"          1 (NeoVim which does support floating windows)
let g:gitgutter_preview_win_floating = 0

" This dictionary is passed directly to |popup_create()| (Vim) or
" |nvim_open_win()| (Neovim).
" Default:
" Vim
"   {
"     \ 'line': 'cursor+1',
"     \ 'col': 'cursor',
"     \ 'moved': 'any'
"   }
" Neovim
"   {
"     \ 'relative': 'cursor',
"     \ 'row': 1,
"     \ 'col': 0,
"     \ 'width': 42,
"     \ 'height': &previewheight,
"     \ 'style': 'minimal'
"   }
"let g:gitgutter_floating_window_options =

" Whether pressing <Esc> in a preview window closes it.
" Default: 0
let g:gitgutter_close_preview_on_escape = 1

" Normally the plugin uses |FocusGained| to force-update all buffers when Vim
" receives focus.  However some terminals do not report focus events and so
" the
" |FocusGained| autocommand never fires.
"
" If this applies to you, either install something like Terminus
" (https://github.com/wincent/terminus) to make |FocusGained| work or set this
" option to 0.
"
" If you use tmux, try this in your tmux.conf:
" >
"     set -g focus-events on
" <
"
" When this option is 0, the plugin force-updates the buffer on |BufEnter|
" (instead of only updating if the buffer's contents has changed since the
" last update).
" Default: 1
let g:gitgutter_terminal_reports_focus = 1

" Controls whether or not the plugin is on at startup.
" Default: 1
let g:gitgutter_enabled = 1

" Controls whether or not the plugin provides mappings.
" See |gitgutter-mappings|.
" Default: 1
let g:gitgutter_map_keys = 1

" Controls whether or not diffs are run in the background.  This has no effect
" if your Vim does not support background jobs.
" Default: 1
let g:gitgutter_async = 1

" When switched on, the plugin logs to gitgutter.log in the directory where it
" is installed.  Additionally it logs channel activity to channel.log.
" Default: 0
let g:gitgutter_log = 0

" When switched on, the :GitGutterQuickFix command populates the location list
" of the current window instead of the global quickfix list.
" Default: 0
let g:gitgutter_use_location_list = 0

" When switched on, a message like "Hunk 4 of 11" is shown on hunk jumping.
" Default: 1
let g:gitgutter_show_msg_on_hunk_jumping = 1
