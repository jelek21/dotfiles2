" #----------------------------------------||--------------------------------------#
" #          _      _      _    ___  __    ||                                      #
" #         | |    | |    | |  |__ \/_ |   || File:                                #
" #         | | ___| | ___| | __  ) || |   ||   $HOME/.vim/conf/svngutter-conf.vim #
" #     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                      #
" #    | |__| |  __/ |  __/   < / /_ | |   ||   Config for svnGutter plugin        #
" #     \____/ \___|_|\___|_|\_\____||_|   ||                                      #
" #________________________________________||______________________________________#

" SIGN COLUMN
" The background colour of the sign column is controlled by the |hlSignColumn|
" highlight group.  This will be either set in your colorscheme or Vim's default.
" To find out where it's set, and to what it's set, use:
"   :verbose highlight SignColumn
" If your `SignColumn` is not set, i.e if
"   :highlight SignColumn  " gives you `SignColumn xxx cleared`
" vim-svngutter will set it to the same as your line number column (i.e. the
" |hl-LineNr| highlight group).
" To change your sign column's appearance, update your colorscheme or |vimrc|
" like this:
"   Desired appearance                  Command ~
"   Same as line number column          highlight clear SignColumn
"   User-defined (terminal Vim)         highlight SignColumn ctermbg={whatever}
"   User-defined (graphical Vim)        highlight SignColumn guibg={whatever}
" 
" SIGNS' COLOURS AND SYMBOLS
" To customise the colours, set up the following highlight groups in your
" colorscheme or |vimrc|:
"   SvnGutterAdd          " an added line
"   SvnGutterChange       " a changed line
"   SvnGutterDelete       " at least one removed line
"   SvnGutterChangeDelete " a changed line followed by at least one removed line
" You can either set these with `highlight SvnGutterAdd {key}={arg}...` or link
" them to existing highlight groups with, say:
"   highlight link SvnGutterAdd DiffAdd
" To customise the symbols, add the following to your |vimrc|:
"let g:svngutter_sign_added = 'xx'
"let g:svngutter_sign_modified = 'yy'
"let g:svngutter_sign_removed = 'zz'
"let g:svngutter_sign_modified_removed = 'ww'

" SIGNS
" To never show signs, use this:
"let svn:svngutter_signs = 0

" LINE HIGHLIGHTS
" Similarly to the signs' colours, set up the following highlight groups in your
" colorscheme or |vimrc|:
"   SvnGutterAddLine          " default: links to DiffAdd
"   SvnGutterChangeLine       " default: links to DiffChange
"   SvnGutterDeleteLine       " default: links to DiffDelete
"   SvnGutterChangeDeleteLine " default: links to SvnGutterChangeLineDefault

" EXTRA ARGUMENTS FOR svn-DIFF
" To pass extra arguments to svn-diff, add this to your |vimrc|:
"let g:svngutter_diff_args = '-w'

" TO ESCAPE GREP
" To avoid any alias you have for grep, use this:
let g:svngutter_escape_grep = 1

" TO TURN OFF VIM-svnGUTTER BY DEFAULT
" Add to your |vimrc|
"let g:svngutter_enabled = 0

" TO TURN ON LINE HIGHLIGHTING BY DEFAULT
" Add to your |vimrc|
"let g:svngutter_highlight_lines = 1

" TO STOP VIM-svnGUTTER RUNNING IN REALTIME
" Add to your |vimrc|
"let g:svngutter_realtime = 0

" TO STOP VIM-svnGUTTER RUNNING EAGERLY
" Add to your |vimrc|
"let g:svngutter_eager = 0
