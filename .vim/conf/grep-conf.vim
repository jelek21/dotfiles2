"#----------------------------------------||-----------------------------------#
"#          _      _      _    ___  __    ||                                   #
"#         | |    | |    | |  |__ \/_ |   || File:                             #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/grep-conf.vim  #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
"#    | |__| |  __/ |  __/   < / /_ | |   || Config file for grep plugin       #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                   #
"#________________________________________||___________________________________#

" The 'Grep_Path' variable is used to locate the grep utility. By default, this
" is set to grep. You can change this using the let command:
let Grep_Path = '/usr/bin/grep'

" The 'Fgrep_Path' variable is used to locate the fgrep utility. By default,
" this is set to fgrep. You can change this using the let command:
let Fgrep_Path = '/usr/bin/fgrep'

"The 'Egrep_Path' variable is used to locate the egrep utility. By default,
"this is set to egrep. You can change this using the let command:
let Egrep_Path = '/usr/bin/egrep'

" The 'Agrep_Path' variable is used to locate the agrep utility. By default,
" this is set to agrep. You can change this using the let command:
let Agrep_Path = '/usr/bin/agrep'

" The 'Findstr_Path' variable is used to locate the findstr.exe utility on
" MS-Windows. By default, this is set to findstr.exe. You can change this using
" the let command:
if (has('win32'))
  let Findstr_Path = 'C:\Windows\System32\findstr.exe'
endif

" The 'Ag_Path' variable is used to locate the ag (silver searcher) utility. By
" default, this is set to ag. You can change this using the let command:
let Ag_Path = '/usr/bin/ag'

" The 'Ack_Path' variable is used to locate the ack utility. By default, this is
" set to ack. You can change this using the let command:
let Ack_Path = '/usr/bin/ack'

" The 'Rg_Path' variable is used to locate the rg (ripgrep) utility. By default,
" this is set to rg. You can change this using the let command:
let Rg_Path = '/usr/bin/rg'

" The 'Git_Path' variable is used to locate the git utility used by the Gitgrep
" command. By default, this is set to git. You can change this using the let
" command:
let Git_Path = '/usr/bin/git'

" The 'Sift_Path' variable is used to locate the sift utility used by the Sift
" command. By default, this is set to sift. You can change this using the let
" command:
"let Sift_Path = 'C:\Progra~1\sift\sift.exe'

" The 'Pt_Path' variable is used to locate the platinum searcher utility used by
" the Ptgrep command. By default, this is set to pt. You can change this
" using the let command:
"let Pt_Path = 'C:\Progra~1\pt\pt.exe'

" The 'Ucg_Path' variable is used to locate the universal code grep utility used by
" the Ucgrep command. By default, this is set to ucg. You can change this
" using the let command:
"let Ucg_Path = '/usr/local/bin/ucg'

" The 'Grep_Find_Path' variable is used to locate the find utility. By default,
" this is set to 'find'. Note that on MS-Windows, there is a find.exe that is
" part of the base OS. This find utility is different from the Unix find
" utility. You cannot use this utility with this plugin. You must install the
" Unix compatible find utility and set the Grep_Find_Path variable to point to
" the location of the utility. You can change this using the let command:
let Grep_Find_Path = '/usr/bin/find'

" The 'Grep_Xargs_Path' variable is used to locate the xargs utility. By
" default, this is set to xargs. You can change this using the let command:
let Grep_Xargs_Path = '/usr/bin/xargs'

" When running any one of the Grep commands, you will be prompted for the files
" in which to search for the pattern. The 'Grep_Default_Filelist' variable is
" used to specify to default for this prompt. By default, this variable is set
" to '*'. You can specify multiple matching patterns separated by spaces. You
" can change this settings using the let command:
"let Grep_Default_Filelist = '*.[chS]'
"let Grep_Default_Filelist = '*.c *.cpp *.asm'

" The 'Grep_Options' variable is used to pass command line options to the grep
" command. By default, this is set to an empty string.  You can change this
" using the let command:
"let Grep_Options = '-i'

" Similarly you can pass command line options to other commands by setting the
" 'Fgrep_Options', 'Egrep_Options', 'Agrep_Options', 'Findstr_Options',
" 'Ag_options', 'Ack_Options', 'Rg_Options', "Gitgrep_Options', 'Sift_Options',
" 'Pt_Options' and 'Ucg_Options' variables in your .vimrc file.

" The 'Grep_Skip_Dirs' variable specifies the list of directories to skip while
" doing recursive searches. This is used only by the :Rgrep, :Rfgrep, :Regrep,
" and :Ragrep commands. By default, this is set to 'RCS CVS SCCS'.  You can
" change this using the let command:
let Grep_Skip_Dirs = 'RCS CVS SCCS .git .gradle .idea'

" The 'Grep_Skip_Files' variable specifies the list of files to skip while doing
" recursive searches. This is used only by the :Rgrep, :Rfgrep, :Regrep, and
" :Ragrep commands. By default, this is set to '*~ *,v s.*'. You can change this
" using the let command:
"let Grep_Skip_Files = '*.bak *~'

" By default, when you invoke the Grep commands the quickfix window will be
" opened with the grep output.  You can disable opening the quickfix window, by
" setting the 'Grep_OpenQuickfixWindow' variable  to zero:
" You can manually open the quickfix window using the :cwindow command.
"let Grep_OpenQuickfixWindow = 0

" By default, for recursive searches, the 'find' and 'xargs' utilities are used.
" If you don't have the 'xargs' utility or don't want to use the 'xargs'
" utility, " then you can set the 'Grep_Find_Use_Xargs' variable to zero. If
" this is set to zero, then only the 'find' utility is used for recursive
" searches:
"let Grep_Find_Use_Xargs = 0

" To handle file names with space characters in them, the xargs utility is
" invoked with the '-0' argument. If the xargs utility in your system doesn't
" accept the '-0' argument, then you can change the Grep_Xargs_Options variable.
" For example, to use the '--null' xargs argument, you can use the following
" command:
"let Grep_Xargs_Options = '--null'

" The Grep_Cygwin_Find variable should be set to 1, if you are using the find
" utility from the cygwin package. This setting is used to handle the difference
" between the backslash and forward slash path separators.
if (has('win32'))
  let Grep_Cygwin_Find = 1
endif

" The 'Grep_Null_Device' variable specifies the name of the null device to pass
" to the grep commands. This is needed to force the grep commands to print the
" name of the file in which a match is found, if only one filename is specified.
" For Unix systems, this is set to /dev/null and for MS-Windows systems, this is
" set to NUL. You can modify this by using the let command:
"let Grep_Null_Device = '/dev/null'

" The 'Grep_Shell_Escape_Char' variable specifies the escape character to use
" for protecting special characters from being interpreted by the shell.  For
" Unix systems, this is set to '\' and for MS-Window systems, this is set to an
" empty string.  You can change this using the let command:
"let Grep_Shell_Escape_Char = "'"

" The 'Grep_Run_Async' variable specifies whether the grep commands are run
" synchronously or asynchronously. Depending on the Vim version, this variable
" is set automatically.  If you want to force Vim to run the grep commands
" synchronously, then you can set the 'Grep_Run_Async' variable to 1.
"let Grep_Run_Async = 1
