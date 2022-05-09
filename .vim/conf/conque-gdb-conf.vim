" __________________________________________________________________________________
"#                                        ||                                        #
"#          _      _      _    ___  __    ||                                        #
"#         | |    | |    | |  |__ \/_ |   || File:                                  #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/conque-gdb-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                        #
"#    | |__| |  __/ |  __/   < / /_ | |   || Config file for conque-gdb plugin      #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                        #
"#________________________________________||________________________________________#

" When Conque GDB splits the GDB CLI window to open source files it will by
" defaut split the window such that the source code will appear above the GDB
" CLI window. You can change the value of |g:ConqueGdb_SrcSplit| to 'above',
" 'below', 'left' or 'right' if you want Conque GDB to split the GDB window
" such that the source code will spilt above, below, left or right to the
" GDB CLI window.
" Default: 'above'
let g:ConqueGdb_SrcSplit = 'above'

" If the |ConqueGdb| commands can't find GDB in the system path, then you
" might
" need to specify the path to the GDB executable manually. However on Windows
" Conque will also look for GDB in C:\MinGW\bin. To define the path to the GDB
" executable you can change the value of |g:ConqueGdb_GdbExe|.
" Note that you have to restart Vim before changes to |g:ConqueGdb_GdbExe| are
" recognized. If you would like to change path to the GDB executable at
" runtime, use the |ConqueGdbExe| command.
" Default: ''
let g:ConqueGdb_GdbExe = ''

" With this option you can disable the Conque GDB plugin.
" Default: 0
let g:ConqueGdb_Disable = 0

" With this option you can tell whether Conque GDB should save history of
" commands that are issued by keyboard mappings. By default the keyboard
" mapping command history is not saved, which implies you will not see the
" commands issued by keyboard mappings when pressing <Up> to view previous 
" GDB commands in the CLI window.
" Default: 0
let g:ConqueGdb_SaveHistory = 1

" This will allow you to set the timeout before Conque GDB tries to read
" output from GDB. You may have to change the time depending on the amount of
" output GDB makes and system performance. The default is 50 milliseconds.
" Default: 50
let g:ConqueGdb_ReadTimeout = 50

" This option specifies which keyboard key is used as prefix for the Conque
" GDB keyboard mappings described below.
" Note that |<Leader>| is usually defined as \ (backslash). You don't have to
" use the |g:ConqueGdb_Leader| when defining new keyboard mappings as
" described below.
" Default: '<Leader>'
let g:ConqueGdb_Leader = '<Leader>'

" This option defines the keyboard mapping used to issue the GDB command run
" from any buffer.
" Default: g:ConqueGdb_Leader . 'r'
let g:ConqueGdb_Run = g:ConqueGdb_Leader . 'r'

" This option defines the mapping used to issue the continue command.
" Default: g:ConqueGdb_Leader . 'c'
let g:ConqueGdb_Continue = g:ConqueGdb_Leader . 'c'

" Mapping to issue GDB command next.
" Default: g:ConqueGdb_Leader . 'n'
let g:ConqueGdb_Next = g:ConqueGdb_Leader . 'n'

" Mapping to send the step command to GDB.
" Default: g:ConqueGdb_Leader . 's'
let g:ConqueGdb_Step = g:ConqueGdb_Leader . 's'

" This mapping is used to issue the print GDB command, to print value of the
" identifier under the cursor.
" Default: g:ConqueGdb_Leader . 'p'
let g:ConqueGdb_Print = g:ConqueGdb_Leader . 'p'

" This is a special mapping used to toggle a break point on the current line.
" I.e. if there is a break point on the current line already it will delete
" the break point, otherwise it will create a new break point on the current
" line.
"
" This mapping is only supported on Unix having GDB 7.0+ with full python
" support. See |conque-gdb-unix-requirements|.
" Default: g:ConqueGdb_Leader . 'b'
let g:ConqueGdb_ToggleBreak = g:ConqueGdb_Leader . 'b'

" This mapping is specific to Conque GDB installations on Windows and Unix
" systems where GDB does not have full python support. See |conque-gdb-setup|.
" It will issue the GDB command break to place a break point on the current
" line.
" Default: g:ConqueGdb_Leader . 'b'
let g:ConqueGdb_SetBreak = g:ConqueGdb_Leader . 'b'

" This mapping is specific to Conque GDB installations on Windows and Unix
" systems where GDB does not have full python support. See |conque-gdb-setup|.
" It will issue the GDB command clear to delete the break point on the current
" line.
" Default: g:ConqueGdb_Leader . 'd'
let g:ConqueGdb_DeleteBreak = g:ConqueGdb_Leader . 'd'

" Mapping to issue the finish command.
" Default: g:ConqueGdb_Leader . 'f'
let g:ConqueGdb_Finish = g:ConqueGdb_Leader . 'f'

" Mapping to execute the backtrace command.
" Default: g:ConqueGdb_Leader . 't'
let g:ConqueGdb_Backtrace = g:ConqueGdb_Leader . 't'

" You might want to be able answer GDB confirmations (say y or n) without
" having to go to the Conque GDB window. You can use the |ConqueGdbCommand|
" command to achieve this:
"nnoremap <silent> <Leader>Y :ConqueGdbCommand y<CR>
"nnoremap <silent> <Leader>N :ConqueGdbCommand n<CR>
"
" With those 2 lines you can type the leader key followed by a capital Y
" to answer yes to GDB confirmations and leader followed by
" capital N to answer no to GDB confirmations.

