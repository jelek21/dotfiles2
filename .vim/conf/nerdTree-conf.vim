"#----------------------------------------||--------------------------------------#
"#          _      _      _    ___  __    ||                                      #
"#         | |    | |    | |  |__ \/_ |   || File:                                #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/nerdTree-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                      #
"#    | |__| |  __/ |  __/   < / /_ | |   ||  Configuration file for nerdTree     #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                      #
"#________________________________________||______________________________________#

" If this plugin is making you feel homicidal, it may be a good idea to turn
" it off with this line in your vimrc:
"let loaded_nerd_tree=1

" If set to 1, the NERDTree window will center around the cursor if it moves
" towithin |NERDTreeAutoCenterThreshold| lines of the top/bottom of the
" window.
" This is ONLY done in response to tree navigation mappings,
" i.e. |NERDTree-J| |NERDTree-K| |NERDTree-C-J| |NERDTree-C-K| |NERDTree-p|
" |NERDTree-P|
" The centering is done with a |zz| operation.
" Default: 1
let NERDTreeAutoCenter = 1

" This setting controls the "sensitivity" of the NERDTree auto centering. See
" |NERDTreeAutoCenter| for details.
" Default: 3
let NERDTreeAutoCenterThreshold = 3

" By default the NERDTree does not sort nodes case sensitively, i.e. nodes
" could appear like this:
"   bar.c
"   Baz.c
"   blarg.c
"   boner.c
"   Foo.c
" 
" But, if you set this setting to 1 then the case of the nodes will be taken
" into account. The above nodes would then be sorted like this:
"   Baz.c
"   Foo.c
"   bar.c
"   blarg.c
"   boner.c
" Default: 0
let NERDTreeCaseSensitiveSort = 0

" By default the NERDTree does not sort nodes in natural sort order, i.e.
" nodes could appear like this:
"   z1.txt
"   z10.txt
"   z100.txt
"   z11.txt
"   z110.txt
"   z2.txt
"   z20.txt
"   z3.txt
" But if you set this setting to 1 then the natural sort order will be used.
" The above nodes would then be sorted like this:
"   z1.txt
"   z2.txt
"   z3.txt
"   z10.txt
"   z11.txt
"   z20.txt
"   z100.txt
"   z110.txt
" Default: 0
let NERDTreeNaturalSort = 1

" By default, NERDTree will use the `:cd` command to change the current
" working directory. If this setting is turned on, and the `:tcd` command is
" available, it will be used instead.
let NERDTreeUseTCD = 0

" Use this setting to tell the script when (if at all) to change the current
" working directory (CWD) for vim.
" If it is set to 0 then the CWD is never changed by the NERDTree.
" If set to 1 then the CWD is changed when the NERDTree is first loaded to the
" directory it is initialized in. For example, if you start the NERDTree with
"     :NERDTree /home/marty/foobar
" then the CWD will be changed to /home/marty/foobar and will not be changed
" again unless you init another NERDTree with a similar command.
" If the setting is set to 2 then it behaves the same as if set to 1 except
" that the CWD is changed whenever the tree root is changed. For example,
" if the CWD is /home/marty/foobar and you make the node for
" /home/marty/foobar/baz the new root then the CWD will become
" /home/marty/foobar/baz.
" If the set to 3, then it behaves the same as if set to 2, and the CWD is
" changed whenever changing tabs to whatever the tree root is on that tab.
" Default: 0
let NERDTreeChDirMode = 0

" If set to 1, the current cursor line in the NERDTree buffer will be
" highlighted. This is done using the `'cursorline'` Vim option.
" Default: 1
let NERDTreeHighlightCursorline = 1

" If set to 1, doing a
"     :edit <some directory>
" will open up a window level NERDTree instead of a netrw in the target window.
" Window level trees behaves slightly different from a regular trees in the
" following respects:
"   1. 'o' will open the selected file in the same window as the tree,
"       replacing it.
"   2. you can have one tree per window - instead of per tab.
" Default: 1
let NERDTreeHijackNetrw = 1

" This setting is used to specify which files the NERDTree should ignore.  It
" must be a list of regular expressions. When the NERDTree is rendered, any
" files/directories that match any of the regex's in NERDTreeIgnore won't be
" displayed.
"
" For example if you put the following line in your vimrc:
"   let NERDTreeIgnore=['\.vim$', '\~$']
" then all files ending in .vim or ~ will be ignored.
"
"
" There are 3 magic flags that can be appended to the end of each regular
" expression to specify that the regex should match only filenames, only
" lowest level directories, or a full path. These flags are "[[dir]]",
" "[[file]]", and "[[path]]". Example:
"   let NERDTreeIgnore=['\.d$[[dir]]', '\.o$[[file]]', 'tmp/cache$[[path]]']
" This will cause all directories ending in ".d" to be ignored, all files
" ending in ".o" to be ignored, and the "cache" subdirectory of any "tmp"
" directory to be ignored. All other "cache" directories will be displayed.
"
" When using the "[[path]]" tag on Windows, make sure you use escaped
" backslashes for the separators in the regex, eg. 'Temp\\cache$[[path]]'
"
" Note: to tell the NERDTree not to ignore any files you must use the
" following line:
" let NERDTreeIgnore=[]
" Default: ['\~$']
let NERDTreeIgnore = ['\~$']

" If set to 1, the `'wildignore'` setting is respected.
" Default: 0
let NERDTreeRespectWildIgnore = 0

" This is where bookmarks are saved. See |NERDTreeBookmarkCommands|.
" Default: $HOME/.NERDTreeBookmarks
let NERDTreeBookmarksFile = $HOME/.NERDTreeBookmarks

" This setting controls the method by which the list of user bookmarks is
" sorted. When sorted, bookmarks will render in alphabetical order by name.
"
" If set to 0, the bookmarks list is not sorted.
" If set to 1, the bookmarks list is sorted in a case-insensitive manner.
" If set to 2, the bookmarks list is sorted in a case-sensitive manner.
" Default: 1
let NERDTreeBookmarksSort = 1

" If set to 1, Bookmarks will be specially marked whenever the NERDTree is
" rendered. Users of the |NERDTreeMinimalUI| setting may prefer to disable
" this setting for even less visual clutter.
" Default: 1
let NERDTreeMarkBookmarks = 1

" If set to 1 then a double click on a node is required to open it.
" If set to 2 then a single click will open directory nodes, while a double
" click will still be required for file nodes.
" If set to 3 then a single click will open any node.
"
" Note: a double click anywhere on a line that a tree node is on will
" activate it, but all single-click activations must be done on name of the
" node itself.
" For example, if you have the following node:
"     | | |-application.rb
" 
" then (to single click activate it) you must click somewhere in
" 'application.rb'.
" Default: 1
let NERDTreeMouseMode = 1

" This setting governs whether the NERDTree window or the bookmarks table
" closes
" after opening a file with the |NERDTree-o|, |NERDTree-i|, |NERDTree-t| and
" |NERDTree-T| mappings.
"
"  Value  | NERDTree Window Behavior
"  -------+-------------------------------------------------------
"  0      | No change
"  1      | Closes after opening a file
"  2      | Closes the bookmark table after opening a bookmark
"  3(1+2) | Same as both 1 and 2
"
" Default: 0
let NERDTreeQuitOnOpen = 0

" If this setting is set to 1 then the bookmarks table will be displayed.
"
" This setting can be toggled dynamically, per tree, with the |NERDTree-B|
" mapping.
" Default: 0
let NERDTreeShowBookmarks = 0

" If this setting is set to 1 then files are displayed in the NERDTree. If it
" is set to 0 then only directories are displayed.
"
" This setting can be toggled dynamically, per tree, with the |NERDTree-F|
" mapping and is useful for drastically shrinking the tree when you are
" navigating to a different part of the tree.
" Default: 1
let NERDTreeShowFiles = 1

" This setting tells vim whether to display hidden files by default. This
" setting can be dynamically toggled, per tree, with the |NERDTree-I| mapping.
" Use one of the follow lines for this setting:
"    let NERDTreeShowHidden=0
"    let NERDTreeShowHidden=1
" Default: 0
let NERDTreeShowHidden = 0

" This setting tells vim whether to display line numbers for the NERDTree
" window.  Use one of the follow lines for this setting:
"     let NERDTreeShowLineNumbers=0
"     let NERDTreeShowLineNumbers=1
" Default: 0
let NERDTreeShowLineNumbers = 0

" This setting is a list of regular expressions which are used to group or
" sort
" the nodes under their parent.
"
" For example, if the setting is:
"     ['\.vim$', '\.c$', '\.h$', '*', 'foobar']
" then all .vim files will be grouped at the top, followed by all .c files
" then
" all .h files. All files containing the string 'foobar' will be placed at the
" end.  The star is a special flag: it tells the script that every node that
" doesn't match any of the other regexps should be placed here.
"
" If no star is present in NERDTreeSortOrder, then one is automatically
" appended to the end of the list.
"
" The regex '\/$' should be used to match directory nodes.
"
" Files can also be sorted by 1) the modification timestamp, 2) the size, or
" 3)
" the extension. Directories are always sorted by name. To accomplish this,
" the
" following special flags are used:
"   [[timestamp]]   [[-timestamp]]   [[size]]   [[-size]]   [[extension]]
"   The hyphen specifies a descending sort; extensions are sorted in ascending
"   order only. If placed at the beginning of the list, files are sorted
"   according
"   to these flags first, and then grouped by the remaining items in the list.
"   If
"   the flags are in any other position of the list, this special sorting is
"   done
"   secondarily. See examples 4, 5, and 6 below.
"
"   After this sorting is done, the files in each group are sorted
"   alphabetically.
"
"   Examples:
"       (1) ['*', '\/$']
"       (2) []
"       (3) ['\/$', '\.rb$', '\.php$', '*', '\.swp$',  '\.bak$', '\~$']
"       (4) ['[[-size]]']
"       (5) ['\/$', '*', '[[timestamp]]']
"       (6) ['foo','\/$','[[extension]]']
"
" 1. Directories will appear last, everything else will appear above.
" 2. Everything will simply appear in alphabetical order.
" 3. Directories will appear first, then ruby and php. Swap files, bak files
"    and vim backup files will appear last with everything else preceding
"    them.
" 4. Everything is sorted by size, largest to smallest, with directories
"    considered to have size 0 bytes.
" 5. Directories will appear first alphabetically, followed by files,
"    sorted by timestamp, oldest first.
" 6. Files and directories matching 'foo' first, followed by other directories,
"    then all other files. Each section of files is sorted by file extension.
" Default: ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeSortOrder = ['\/$', '*', '\.swp$',  '\.bak$', '\~$']

" Defines the value for the `'statusline'` setting in NERDTree windows.
"
" Note: The setting is actually applied using |:let-&|, not |:set|, so
" escaping spaces is not necessary.
"
" Setting this to -1 will deactivate it so that your global `'statusline'`
" setting is used.
" Default: %{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
"let NERDTreeStatusline = %{exists('b:NERDTree')?b:NERDTree.root.path.str():''}

" This setting is used to determine where NERDTree window is placed on the
" screen.
"
" This setting makes it possible to use two different explorer plugins
" simultaneously. For example, you could have the taglist plugin on the left
" of the window and the NERDTree on the right.
" Default: 'left'
let NERDTreeWinPos = 'left'

" This setting is used to change the size of the NERDTree when it is loaded.
" Default: 31.
let NERDTreeWinSize = 31

" This setting disables the 'Bookmarks' label 'Press ? for help' text. Use one
" of the following lines for this setting:
"     let NERDTreeMinimalUI=0
"     let NERDTreeMinimalUI=1
" Default: 0
let NERDTreeMinimalUI = 0

" This setting makes NERDTree use a smaller, more compact menu for adding,
" copying, deleting nodes. This menu fits on a single line so Vim doesn't need
" to
" scroll down to present it. This setting is recommended for users already
" familiar with the menu items. It will look similar to this:
"
"   Menu: [ (a)dd ,m,d,r,o,q,c,l] (Use j/k/enter or shortcut):
"
" An action can be selected with its shortcut key or with the NERDTreeMenuUp
" and NERDTreeMenuDown keys, then pressing enter.
"
" Use one of the following lines for this setting:
"     let NERDTreeMinimalMenu=0
"     let NERDTreeMinimalMenu=1
" Default: 0
let NERDTreeMinimalMenu = 0

" When displaying directory nodes, this setting tells NERDTree to collapse
" directories that have only one child. Use one of the following lines for
" this setting:
"     let NERDTreeCascadeSingleChildDir=0
"     let NERDTreeCascadeSingleChildDir=1
" Default: 1
let NERDTreeCascadeSingleChildDir = 1

" When opening directory nodes, this setting tells NERDTree to recursively
" open directories that have only one child which is also a directory.
" NERDTree will stop when it finds a directory that contains anything but 
" another single directory. This setting also causes the |NERDTree-x| mapping
" to close directories in the same manner. This setting may be useful for Java
" projects.
" Use one of the following lines for this setting:
"     let NERDTreeCascadeOpenSingleChildDir=0
"     let NERDTreeCascadeOpenSingleChildDir=1
" Default: 1
let NERDTreeCascadeOpenSingleChildDir = 1

" When using a context menu to delete or rename a file you may also want to
" delete the buffer which is no more valid. If the setting is not set you will
" see a confirmation if you really want to delete an old buffer. If you always
" press 'y' then it's worth it to set this setting to 1. Use one of the
" following lines for this setting:
"     let NERDTreeAutoDeleteBuffer=0
"     let NERDTreeAutoDeleteBuffer=1
" Default: 0
let NERDTreeAutoDeleteBuffer = 0

" Values: Any valid command prefix.
" Default: "silent".
"
" Internally, NERDTree uses the |:edit| command to create a buffer in which to
" display its tree view. You can augment this behavior by specifying a prefix
" string such as "keepalt" or similar. For example, to have NERDTree create
" its tree window using `silent keepalt keepjumps edit`:
"     let NERDTreeCreatePrefix='silent keepalt keepjumps'
" Default: 'silent'
let NERDTreeAutoDeleteBuffer = 'silent'

" These characters indicate whether a directory is collapsible or expandable.
" Example:
"     let NERDTreeDirArrowExpandable=">"
"     let NERDTreeDirArrowCollapsible="v"
" 
" They can be set to "\u00a0" to replace the arrows with non-breaking space.
" If you do this you may need to change the node delimiter. See
" |NERDTreeNodeDelimiter|. You cannot use the same character for both the
" arrows and the delimiter.
" Alternatively, they can be set to '' (an empty string). This removes the
" arrows and the single space that follows them, shifting the entire tree two
" character positions to the left.
" Defaults:   Windows: ~ and + Others: ▾ and ▸
let NERDTreeDirArrowCollapsible = ▾
let NERDTreeDirArrowExpandable = ▸

" This character is used to separate the file or directory name from the rest
" of the characters in the line of text. It allows filenames to contain special
" characters that are otherwise used in the NERDTree, such as square brackets,
" braces, trailing asterisk, and leading space. For more details, see the
" responsible pull request: https://github.com/preservim/nerdtree/pull/868.
"
" The default value of this variable depends on the features compiled into
" your vim and the values of |NERDTreeDirArrowCollapsible| and 
" |NERDTreeDirArrowExpandable|.
"   * If your vim is compiled with the +conceal feature, it is the "\x07"
"     (BEL) character, and it is hidden by setting 'conceallevel' to 2. If you
"     use autocommands, make sure none of them change that setting in the
"     NERD_Tree_* buffers.
"   * If your vim does NOT have the +conceal feature and you're using "\u00a0"
"     (non-breaking space) to hide the directory arrows, "\u00b7" (middle dot)
"     is used as the default delimiter.
"   * If neither condition above applies, NERDTree uses "\u00a0" (non-breaking
"     space) as the default delimiter.
"
" In the 2nd and 3rd cases, NERDTree will use the Ignore highlight group to
" "hide" the delimiter. It should appear as an empty space.
"
" Other plugins can interfere with these defaults, so if you need to change
" the
" delimiter, be sure to choose a character that won't appear in your filenames
" or any of the flags set by your installed NERDTree plugins. The suggestions
" below are but a few of the many possibilities. Remember to use double quotes
" when specifying by hex or Unicode.
"     let NERDTreeNodeDelimiter="\x07"     "bell
"     let NERDTreeNodeDelimiter="\u00b7"   "middle dot
"     let NERDTreeNodeDelimiter="\u00a0"   "non-breaking space
"     let NERDTreeNodeDelimiter="😀"       "smiley face
" Default: varies
" let NERDTreeNodeDelimiter

" This dictionary contains two keys, 'file' and 'dir', whose values each are
" another dictionary. The inner dictionary is a set of parameters used by
" |NERDTree-<CR>| to open a file or directory. Setting these parameters allows
" you to customize the way the node is opened. The default value matches what
" |NERDTree-o| does. To change that behavior, use these keys and
" values in the inner dictionaries:
"
" 'where':    specifies whether the node should be opened in a new split ("h"
"             or "v"), in a new tab ("t") or, in the last window ("p").
" 'reuse':    if file is already shown in a window, jump there; takes values
"             "all", "currenttab", or empty
" 'keepopen': boolean (0 or 1); if true, the tree window will not be closed
" 'stay':     boolean (0 or 1); if true, remain in tree window after opening
"
"
" For example:
" To open files and directories (creating a new NERDTree) in a new tab,
"     {'file':{'where': 't'}, 'dir':{'where':'t'}}
" To open a file always in the current tab, and expand directories in place,
"     {'file': {'reuse':'currenttab', 'where':'p', 'keepopen':1, 'stay':1}}
" Default: {'file': {'reuse': 'all', 'where': 'p'}, 'dir': {}}
let NERDTreeCustomOpenArgs =  {'file': {'reuse': 'all', 'where': 'p'}, 'dir': {}}
