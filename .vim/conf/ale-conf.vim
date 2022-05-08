"#----------------------------------------||-----------------------------------#
"#          _      _      _    __   __    ||                                   #
"#         | |    | |    | |  |__ \/_ |   || File:                             #
"#         | | ___| | ___| | __" ) || |   ||    $HOME/.vim/conf/ale-conf.vim   #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                   #
"#    | |__| |" __/ |" __/"  < / /_ | |   || Configuration file for ale        #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                   #
"#________________________________________||___________________________________#

" 
" Enables or disables the |airline|'s native extension for ale, which displays
" warnings and errors in the status line, prefixed by
" |airline#extensions#ale#error_symbol| and
" |airline#extensions#ale#warning_symbol|.
" Default: 1
let g:airline#extensions#ale#enabled = 1

" When set to `1`, ALE will cache failing executable checks for linters. By
" default, only executable checks which succeed will be cached.
"
" When this option is set to `1`, Vim will have to be restarted after new
" executables are installed for ALE to be able to run linters for those
" executables.
" Default: undefined
"let g:ale_cache_executable_check_failures


" When set to `1`, this option will set different highlights for the sign
" column itself when ALE reports problems with a file. This option can be
" combined with |g:ale_sign_column_always|.
"
" ALE uses the following highlight groups for highlighting the sign column:
"
" `ALESignColumnWithErrors`    -  Links to `error` by default.
" `ALESignColumnWithoutErrors` -  Uses the value for `SignColumn` by default.
"
" The sign column color can only be changed globally in Vim. The sign column
" might produce unexpected results if editing different files in split
" windows.
" Default: 0
let g:ale_change_sign_column_color = 0

" When this option is set to `1`, ALE's |preview-window| will be automatically
" closed upon entering Insert Mode. This option can be used in combination
" with |g:ale_cursor_detail| for automatically displaying the preview window
" on problem lines, and automatically closing it again when editing text.
" This setting must be set to `1` before ALE is loaded for this behavior
" to be enabled. See |ale-lint-settings-on-startup|.
" Default: 0
"let g:ale_close_preview_on_insert = 0

" An option for wrapping all commands that ALE runs, for linters, fixers,
" and LSP commands. This option can be set globally, or for specific buffers.
" This option can be used to apply nice to all commands. For example:
"   " Prefix all commands with nice.
"   let g:ale_command_wrapper = 'nice -n5'
" Use the |ALEInfo| command to view the commands that are run. All of the
" arguments for commands will be put on the end of the wrapped command by
" default. A `%*` marker can be used to spread the arguments in the wrapped
" command.
"   " Has the same effect as the above.
"   let g:ale_command_wrapper = 'nice -n5 %*'
" For passing all of the arguments for a command as one argument to a wrapper,
" `%@` can be used instead.
"   " Will result in say: /bin/bash -c 'other-wrapper -c "some command" -x'
"   let g:ale_command_wrapper = 'other-wrapper -c %@ -x'
" For commands including `&&` or `;`, only the last command in the list will
" be passed to the wrapper. `&&` is most commonly used in ALE to change the
" working directory before running a command.
" Default: ''
"let g:ale_command_wrapper = ''
"let b:ale_command_wrapper = ''

" The number of milliseconds before ALE will send a request to a language
" server for completions after you have finished typing.
" See |ale-completion|
" Default: 100
let g:ale_completion_delay = 100

" When this option is set to `1`, completion support will be enabled.
" This setting must be set to `1` before ALE is loaded for this behavior
" to be enabled.
" This setting should not be enabled if you wish to use ALE as a completion
" source for other completion plugins.
" ALE automatic completion will not work when 'paste' is active. Only set
" 'paste' when you are copy and pasting text into your buffers.
" A buffer-local version of this setting `b:ale_completion_enabled` can be set
" to `0` to disable ALE's automatic completion support for a single buffer.
" ALE's completion support must be enabled globally to be enabled locally.
" See |ale-completion|
" Default: 0
"let g:ale_completion_enabled = 0
"let b:ale_completion_enabled = 0

" When this option is set to `0`, ALE will return all completion items,
" including those that are a warning. Warnings can be excluded from completed
" items by setting it to `1`.
" Default: 0
let g:ale_completion_tsserver_remove_warnings = 0

" When this option is set to `1`, ALE will try to automatically import
" completion results from external modules. It can be disabled by setting it
" to `0`. Some LSP servers include auto imports on every completion item so
" disabling automatic imports may drop some or all completion items returnend
" by it (e.g. eclipselsp).
" Default: 1
let g:ale_completion_autoimport = 1

" This option can be set to a list of |String| values for "words" to exclude
" from completion results, as in the words for |complete-items|. The strings
" will be matched exactly in a case-sensitive manner. (|==#|)
" This setting can be configured in ftplugin files with buffer variables, so
" that different lists can be used for different filetypes. For example:
"   In ~/.vim/ftplugin/typescript.vim
"   " Don't suggest `it` or `describe` so we can use snippets for those words.
"   let b:ale_completion_excluded_words = ['it', 'describe']
" Default: []
"let b:ale_completion_excluded_words = []
let g:ale_completion_excluded_words = []

" A mapping from completion types to symbols for completions. See
" |ale-symbols| for more information.
"
" By default, this mapping only uses built in Vim completion kinds, but it can
" be updated to use any unicode character for the completion kind. For
" example:
"   let g:ale_completion_symbols = {
"     \ 'text': '',
"     \ 'method': '',
"     \ 'function': '',
"     \ 'constructor': '',
"     \ 'field': '',
"     \ 'variable': '',
"     \ 'class': '',
"     \ 'interface': '',
"     \ 'module': '',
"     \ 'property': '',
"     \ 'unit': 'v',
"     \ 'value': 'v',
"     \ 'enum': 't',
"     \ 'keyword': 'v',
"     \ 'snippet': 'v',
"     \ 'color': 'v',
"     \ 'file': 'v',
"     \ 'reference': 'v',
"     \ 'folder': 'v',
"     \ 'enum_member': 'm',
"     \ 'constant': 'm',
"     \ 'struct': 't',
"     \ 'event': 'v',
"     \ 'operator': 'f',
"     \ 'type_parameter': 'p',
"     \ '<default>': 'v'
"     \ })
"let g:ale_completion_symbols = {}

" The maximum number of items ALE will suggest in completion menus for
" automatic completion.
" Setting this number higher will require more processing time, and may
" suggest too much noise. Setting this number lower will require less
" processing time, but some suggestions will not be included, so you might not
" be able to see the suggestions you want.
" Adjust this option as needed, depending on the complexity of your codebase
" and your available processing power.
" Default: 50
let g:ale_completion_max_suggestions = 50

" When this option is set to `1`, ALE's |preview-window| will be automatically
" opened when the cursor moves onto lines with problems. ALE will search for
" problems using the same logic that |g:ale_echo_cursor| uses. The preview
" window will be closed automatically when you move away from the line.
" Messages are only displayed after a short delay. See |g:ale_echo_delay|.
" The preview window is opened without stealing focus, which means your cursor
" will stay in the same buffer as it currently is.
" The preview window can be closed automatically upon entering Insert mode
" by setting |g:ale_close_preview_on_insert| to `1`.
" Either this setting or |g:ale_echo_cursor| must be set to `1` before ALE is
" loaded for messages to be displayed. See |ale-lint-settings-on-startup|.
" Default: 0
"let g:ale_cursor_detail" = 0

" The default method for navigating away from the current buffer to another
" buffer, such as for |ALEFindReferences|, or |ALEGoToDefinition|.
" Default: 'buffer'
"let b:ale_default_navigation = 'buffer'
let g:ale_default_navigation = 'buffer'

" When this option is set to `1`, Neovim or Vim with |popupwin| will use a
" floating window for ALEDetail output.
" Default: 0
"let b:ale_detail_to_floating_preview = 0
let g:ale_detail_to_floating_preview = 0 

" When this option is set to `1`, ALE ignores all linters powered by LSP,
" and also `tsserver`.
"
" Please see also |ale-lsp|.
" Default: 0
"let b:ale_disable_lsp = 0
let g:ale_disable_lsp = 0

" When this option is set to `1`, a truncated message will be echoed when a
" cursor is near a warning or error. ALE will attempt to find the warning or
" error at a column nearest to the cursor when the cursor is resting on a line
" which contains a warning or error. This option can be set to `0` to disable
" this behavior.
"
" Messages are only displayed after a short delay. See |g:ale_echo_delay|.
"
" The format of the message can be customized with |g:ale_echo_msg_format|.
"
" Either this setting or |g:ale_cursor_detail| must be set to `1` before ALE
" is loaded for messages to be displayed. See |ale-lint-settings-on-startup|.
" Default: 1
let g:ale_echo_cursor = 1


" Given any integer, this option controls the number of milliseconds before
" ALE will echo or preview a message for a problem near the cursor.
"
" The value can be increased to decrease the amount of processing ALE will do
" for files displaying a large number of problems.
" Default: 10
"let b:ale_echo_delay = 10
let g:ale_echo_delay = 10

" The string used for `%severity%` for errors. See |g:ale_echo_msg_format|
" Default: 'Error'
let g:ale_echo_msg_error_str = 'Error'

" This variable defines a message format for echoed messages. The following
" sequences of characters will be replaced.
"
"   `%s`           - replaced with the text for the problem
"   `%...code...% `- replaced with the error code
"   `%linter%`     - replaced with the name of the linter
"   `%severity%`   - replaced with the severity of the problem
"
" The strings for `%severity%` can be configured with the following options.
"
"   |g:ale_echo_msg_error_str|   - Defaults to 'Error'
"   |g:ale_echo_msg_info_str|    - Defaults to 'Info'
"   |g:ale_echo_msg_warning_str| - Defaults to 'Warning'
"
" `%code%` is replaced with the error code, and replaced with an empty string
" when there is no error code. Any extra characters between the percent signs
" will be printed when an error code is present. For example, a message like
" `(error code): message` will be printed for '%(code): %%s' and simply the
" message will be printed when there is no code.
"
" |g:ale_echo_cursor| needs to be set to 1 for messages to be displayed.
"
" The echo message format can also be configured separately for each buffer,
" so different formats can be used for different languages. (Say in ftplugin
" files.)
" Default: '%code: %%s'
"let b:ale_echo_msg_format = '%code: %%s'
let g:ale_echo_msg_format = '%code: %%s'

" The string used for `%severity%` for info. See |g:ale_echo_msg_format|
" Default: 'Info'
let g:ale_echo_msg_info_str = 'Info'

" The string used for `%severity%` for log, used only for handling LSP show
" message requests. See |g:ale_lsp_show_message_format|
" Default: 'Log'
let g:ale_echo_msg_log_str = 'Log'

" The string used for `%severity%` for warnings. See |g:ale_echo_msg_format|
" Default: 'Warning'
let g:ale_echo_msg_warning_str = 'Warning'

" When set to `0`, this option will completely disable ALE, such that no
" error checking will be performed, etc. ALE can be toggled on and off with
" the |ALEToggle| command, which changes this option.
"
" ALE can be disabled in each buffer by setting `let b:ale_enabled = 0
" Disabling ALE based on filename patterns can be accomplished by setting
" a regular expression for |g:ale_pattern_options|. For example:
"
"   Disable linting for all minified JS files.
" let g:ale_pattern_options = {'\.min.js$': {'ale_enabled': 0}}
"
"
" See |g:ale_pattern_options| for more information on that option.
" Default: 1
"let b:ale_enabled = 1
let g:ale_enabled = 1

" A list of regular expressions for matching against highlight messages to
" remove. For example:

" " Do not highlight messages matching strings like these.
" let b:ale_exclude_highlights = ['line too long', 'foo.*bar']

" See also: |g:ale_set_highlights|
" Default: []
"let b:ale_exclude_highlights = []
let g:ale_exclude_highlights = []


" A mapping from filetypes to |List| values for functions for fixing errors.
" See |ale-fix| for more information.

" This variable can be overridden with variables in each buffer.
" `b:ale_fixers` can be set to a |List| of callbacks instead, which can be
" more convenient.

" A special '*' key be used as a wildcard filetype for configuring fixers
" for every other type of file. For example:

"     Fix Python files with 'bar'.
"     Don't fix 'html' files.
"     Fix everything else with 'foo'.
"   let g:ale_fixers = {'python': ['bar'], 'html': [], '*': ['foo']}
" Default: {}
"let b:ale_fixers = {}
let g:ale_fixers = {}


" When set to 1, ALE will fix files when they are saved.

" If |g:ale_lint_on_save| is set to 1, files will be checked with linters
" after files are fixed, only when the buffer is open, or re-opened. Changes
" to the file will be saved to the file on disk.

" Files will not be fixed on `:wq`, so you should check your code before
" closing a buffer.

" Fixing files can be disabled or enabled for individual buffers by setting
" `b:ale_fix_on_save` to `0` or `1`.

" Some fixers can be excluded from being run automatically when you save files
" with the |g:ale_fix_on_save_ignore| setting.
" Default: 0
"let b:ale_fix_on_save = 0
let g:ale_fix_on_save = 0

" Given a |Dictionary| mapping filetypes to |Lists| of fixers to ignore, or
" just a |List| of fixers to ignore, exclude those fixers from being run
" automatically when files are saved.

" You can disable some fixers in your ftplugin file:

" " Disable fixers 'b' and 'c' when fixing on safe for this buffer.
" let b:ale_fix_on_save_ignore = ['b', 'c']
" " Alternatively, define ignore lists for different filetypes.
" let b:ale_fix_on_save_ignore = {'foo': ['b'], 'bar': ['c']}

" You can disable some fixers globally per filetype like so:

" let g:ale_fixers = {'foo': ['a', 'b'], 'bar': ['c', 'd']}
" let g:ale_fix_on_save = 1
" " For filetype `foo.bar`, only fixers 'b' and 'd' will be run on save.
" let g:ale_fix_on_save_ignore = {'foo': ['a'], 'bar': ['c']}
" " Alternatively, disable these fixers on save for all filetypes.
" let g:ale_fix_on_save_ignore = ['a', 'c']

" You can ignore fixers based on matching |Funcref| values too:

" let g:AddBar = {buffer, lines -> lines + ['bar']}
" let g:ale_fixers = {'foo': g:AddBar}
" " The lambda fixer will be ignored, as it will be found in the ignore list.
" let g:ale_fix_on_save_ignore = [g:AddBar]
" Default: {}
"let b:ale_fix_on_save_ignore = {}
let g:ale_fix_on_save_ignore = {}

" When set to `1`, Neovim or Vim with |popupwin| will use a floating window
" for ale's preview window.
" This is equivalent to setting |g:ale_hover_to_floating_preview| and
" |g:ale_detail_to_floating_preview| to `1`.
" Default: 0
let g:ale_floating_preview = 0

" When set to `[]`, window borders are disabled. The elements in the list set
" the horizontal, top, top-left, top-right, bottom-right and bottom-left
" border characters, respectively.

" If the terminal supports Unicode, you might try setting the value to
" ` ['│', '─', '╭', '╮', '╯', '╰']`, to make it look nicer.
" Default: ['|', '-', '+', '+', '+', '+']
let g:ale_floating_window_border = ['|', '-', '+', '+', '+', '+']

" When set to `1`, ALE will remember the last few commands which were run
" for every buffer which is open. This information can be viewed with the
" |ALEInfo| command. The size of the buffer can be controlled with the
" |g:ale_max_buffer_history_size| option.

" This option can be disabled if storing a command history is not desired.
" Default: 1
let g:ale_history_enabled = 1

" When set to `1`, ALE will store the output of commands which have completed
" successfully in the command history, and the output will be displayed when
" using |ALEInfo|.

" |g:ale_history_enabled| must be set to `1` for this output to be stored or
" printed.

" Some memory will be consumed by this option. It is very useful for figuring
" out what went wrong with linters, and for bug reports. Turn this option off
" if you want to save on some memory usage.
" Default: 1
let g:ale_history_log_output = 1

" If set to `1`, ALE will show truncated information in the echo line about
" the symbol at the cursor automatically when the |CursorHold| event is fired.
" The delay before requesting hover information is based on 'updatetime', as
" with all |CursorHold| events.

" If there's a problem on the line where the cursor is resting, ALE will not
" show any hover information.

" See |ale-hover| for more information on hover information.

" This setting must be set to `1` before ALE is loaded for this behavior
" to be enabled. See |ale-lint-settings-on-startup|.
" Default: 1
let g:ale_hover_cursor = 1

" If set to `1`, hover messages will be displayed in the preview window,
" instead of in balloons or the message line.
" Default: 0
"let b:ale_hover_to_preview = 0
let g:ale_hover_to_preview = 0

" If set to `1`, Neovim or Vim with |popupwin| will use floating windows for
" hover messages.
" Default: 0
"let b:ale_hover_to_floating_preview = 0
let g:ale_hover_to_floating_preview = 0

" When set to `1`, this option will keep the loclist or quickfix windows event
" after all warnings/errors have been removed for files. By default the
" loclist or quickfix windows will be closed automatically when there are no
" warnings or errors.

" See |g:ale_open_list|
" Default: 0
"let b:ale_keep_list_window_open = 0
let g:ale_keep_list_window_open = 0

" This number configures the number of lines to set for the height of windows
" opened automatically for ALE problems. The default of `10` matches the Vim
" default height.

" See |g:ale_open_list| for information on automatically opening windows
" for quickfix or the loclist.
" Default: 10
"let b:ale_list_window_size = 10
let g:ale_list_window_size = 10

" This variable controls the milliseconds delay after which the linters will
" be run after text is changed. This option is only meaningful with the
" |g:ale_lint_on_text_changed| variable set to `always`, `insert`, or `normal`.

" A buffer-local option, `b:ale_lint_delay`, can be set to change the delay
" for different buffers, such as in |ftplugin| files.
" Default: 200
"let b:ale_lint_delay = 200
let g:ale_lint_delay = 200

" When this option is set to `1`, the |BufWinEnter| event will be used to
" apply linters when buffers are first opened. If this is not desired, this
" variable can be set to `0` in your vimrc file to disable this behavior.

" The |FileChangedShellPost| and |BufEnter| events will be used to check if
" files have been changed outside of Vim. If a file is changed outside of
" Vim, it will be checked when it is next opened.

" You should set this setting once before ALE is loaded, and restart Vim if
" you want to change your preferences. See |ale-lint-settings-on-startup|.
" Default: 1
let g:ale_lint_on_enter = 1

" This option will cause ALE to run when the filetype for a file is changed
" after a buffer has first been loaded. A short delay will be used before
" linting will be done, so the filetype can be changed quickly several times
" in a row, but resulting in only one lint cycle.

" You should set this setting once before ALE is loaded, and restart Vim if
" you want to change your preferences. See |ale-lint-settings-on-startup|.
" Default: 1
let g:ale_lint_on_filetype_changed = 1

" This option will make ALE run the linters whenever a file is saved when it
" it set to `1` in your vimrc file. This option can be used in combination
" with the |g:ale_lint_on_enter| and |g:ale_lint_on_text_changed| options to
" make ALE only check files after that have been saved, if that is what is
" desired.
" Default: 1
let g:ale_lint_on_save = 1

" This option controls how ALE will check your files as you make changes.
" The following values can be used.

" 'always', '1', or `1` - Check buffers on |TextChanged| or |TextChangedI|.
" 'normal'              - Check buffers only on |TextChanged|.
" 'insert'              - Check buffers only on |TextChangedI|.
" 'never', '0', or `0`  - Never check buffers on changes.

" ALE will check buffers after a short delay, with a timer which resets on
" each change. The delay can be configured by adjusting the |g:ale_lint_delay|
" variable.

" Due to a bug in Vim, ALE can interrupt mappings with pending key presses,
" per |timeoutlen|. If this happens, follow the advice for enabling
" |g:ale_lint_on_insert_leave| below, and set this option to 'normal', or
" disable it entirely.

" You should set this setting once before ALE is loaded, and restart Vim if
" you want to change your preferences. See |ale-lint-settings-on-startup|.
" Default: 'normal'
let g:ale_lint_on_text_changed = 'normal'

" When set to `1` in your vimrc file, this option will cause ALE to run
" linters when you leave insert mode.

" ALE will not lint files when you escape insert mode with |CTRL-C| by
" default. You can make ALE lint files with this option when you use |CTRL-C|
" with the following mapping.

"     Make using Ctrl+C do the same as Escape, to trigger autocmd commands
" " inoremap <C-c> <Esc>

" A buffer-local version of this setting `b:ale_lint_on_insert_leave` can be
" set to `0` to disable linting when leaving insert mode. The setting must
" be enabled globally to be enabled locally.

" You should set this setting once before ALE is loaded, and restart Vim if
" you want to change your preferences. See |ale-lint-settings-on-startup|.
" Default: 1
"let b:ale_lint_on_insert_leave = 1
let g:ale_lint_on_insert_leave = 1

" The |g:ale_linter_aliases| option can be used to set aliases from one
" filetype to another. A given filetype can be mapped to use the linters
" run for another given filetype.

" This |Dictionary| will be merged with a default dictionary containing the
" following values:

" {
" \"  'Dockerfile': 'dockerfile',
" \"  'csh': 'sh',
" \"  'javascriptreact': ['javascript', 'jsx'],
" \"  'plaintex': 'tex',
" \"  'ps1': 'powershell',
" \"  'rmarkdown': 'r',
" \"  'rmd': 'r',
" \"  'svelte': ['svelte', 'javascript'],
" \"  'systemverilog': 'verilog',
" \"  'typescriptreact': ['typescript', 'tsx'],
" \"  'verilog_systemverilog': ['verilog_systemverilog', 'verilog'],
" \"  'vimwiki': 'markdown',
" \"  'vue': ['vue', 'javascript'],
" \"  'xsd': ['xsd', 'xml'],
" \"  'xslt': ['xslt', 'xml'],
" \"  'zsh': 'sh',
" \}

" For example, if you wish to map a new filetype 'foobar' to run the 'php'
" linters, you could set the following:

" let g:ale_linter_aliases = {'foobar': 'php'}

" When combined with the |g:ale_linters| option, the original filetype
" ('foobar') will be used for determining which linters to run,
" not the aliased type ('php'). This allows an aliased type to run a
" different set of linters from the type it is being mapped to.

" Passing a list of filetypes is also supported. Say you want to lint
" javascript and css embedded in HTML (using linters that support that).
" You could alias `html` like so:

" `let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}

" Note that `html` itself was included as an alias. That is because aliases
" will override the original linters for the aliased filetype.

" Linter aliases can be configured in each buffer with buffer-local variables.
" ALE will first look for aliases for filetypes in the `b:ale_linter_aliases
" variable, then `g:ale_linter_aliases`, and then a default Dictionary.

" `b:ale_linter_aliases` can be set to a |List| or a |String|, to tell ALE to
" load the linters for specific filetypes for a given buffer.

" let b:ale_linter_aliases = ['html', 'javascript', 'css']
" " OR, Alias a filetype to only a single filetype with a String.
" let b:ale_linter_aliases = 'javascript'

" No linters will be loaded when the buffer's filetype is empty.
" Default: {}
"let b:ale_linter_aliases = {}
let g:ale_linter_aliases = {}

" Either a |Dictionary| mapping a linter or fixer name, as displayed in
" |:ALEInfo|, to a |List| of two-item |List|s for filename mappings, or just a
" |List| of two-item |List|s. When given some paths to files, the value of
" this setting will be used to convert filenames on a local file system to
" filenames on some remote file system, such as paths in a Docker image,
" virtual machine, or network drive.

" For example:

" let g:ale_filename_mappings = {
" \   'pylint': [
" \       ['/home/john/proj', '/data'],
" \   ],
" \}

" With the above configuration, a filename such as `/home/john/proj/foo.py
" will be provided to the linter/fixer as `/data/foo.py`, and paths parsed
" from linter results such as `/data/foo.py` will be converted back to
" `/home/john/proj/foo.py`.

" You can use `*` as to apply a |List| of filename mappings to all other
" linters or fixers not otherwise matched.

" " Use one List of paths for pylint.
" " Use another List of paths for everything else.
" let g:ale_filename_mappings = {
" \   'pylint': [
" \       ['/home/john/proj', '/data'],
" \   ],
" \   '*': [
" \       ['/home/john/proj', '/other-data'],
" \   ],
" \}

" If you just want every single linter or fixer to use the same filename
" mapping, you can just use a |List|.

" " Same as above, but for ALL linters and fixers.
" let g:ale_filename_mappings = [
" \"  ['/home/john/proj', '/data'],
" \]

" You can provide many such filename paths for multiple projects. Paths are
" matched by checking if the start of a file path matches the given strings,
" in a case-sensitive manner. Earlier entries in the |List| will be tried
" before later entries when mapping to a given file system.

" Buffer-local options can be set to the same values to override the global
" options, such as in |ftplugin| files.

" NOTE: Only fixers registered with a short name can support filename mapping
" by their fixer names. See |ale-fix|. Filename mappings set for all tools by
" using only a |List| for the setting will also be applied to fixers not in
" the registry.

" NOTE: In order for this filename mapping to work correctly, linters and
" fixers must exclusively determine paths to files to lint or fix via ALE
" command formatting as per |ale-command-format-strings|, and paths parsed
" from linter files must be provided in `filename` keys if a linter returns
" results for more than one file at a time, as per |ale-loclist-format|. If
" you discover a linter or fixer which does not behave properly, please report
" it as an issue.

" If you are running a linter or fixer through Docker or another remote file
" system, you may have to mount your temporary directory, which you can
" discover with the following command:

" :echo fnamemodify(tempname(), ':h:h')

" You should provide a mapping from this temporary directory to whatever you
" mount this directory to in Docker, or whatever remote file system you are
" working with.

" You can inspect the filename mappings ALE will use with the
" |ale#GetFilenameMappings()| function.
" Default: {}
"let b:ale_filename_mappings = {}
let g:ale_filename_mappings = {}

" The |g:ale_linters| option sets a |Dictionary| mapping a filetype to a
" |List| of linter programs to be run when checking particular filetypes.

" This |Dictionary| will be merged with a default dictionary containing the
" following values:

" {
" \"  'apkbuild': ['apkbuild_lint', 'secfixes_check'],
" \"  'csh': ['shell'],
" \"  'elixir': ['credo', 'dialyxir', 'dogma'],
" \"  'go': ['gofmt', 'golint', 'gopls', 'govet'],
" \"  'hack': ['hack'],
" \"  'help': [],
" \"  'inko': ['inko'],
" \"  'json': ['jsonlint', 'spectral'],
" \"  'json': ['jsonlint', 'spectral', 'vscodejson'],
" \"  'json5': [],
" \"  'jsonc': [],
" \"  'perl': ['perlcritic'],
" \"  'perl6': [],
" \"  'python': ['flake8', 'mypy', 'pylint', 'pyright'],
" \"  'rust': ['cargo', 'rls'],
" \"  'spec': [],
" \"  'text': [],
" \"  'vue': ['eslint', 'vls'],
" \"  'zsh': ['shell'],
" \"  'v': ['v'],
" \}

" This option can be used to enable only a particular set of linters for a
" file. For example, you can enable only `eslint` for JavaScript files:

" let g:ale_linters = {'javascript': ['eslint']}

" If you want to disable all linters for a particular filetype, you can pass
" an empty list of linters as the value:

" let g:ale_linters = {'javascript': []}

" All linters will be run for unspecified filetypes. All available linters can
" be enabled explicitly for a given filetype by passing the string 'all',
" instead of a List.

" let g:ale_linters = {'c': 'all'}

" Linters can be configured in each buffer with buffer-local variables. ALE
" will first look for linters for filetypes in the `b:ale_linters` variable,
" then `g:ale_linters`, and then the default Dictionary mentioned above.

" `b:ale_linters` can be set to a List, or the string 'all'. When linters
" for two different filetypes share the same name, the first linter loaded
" will be used. Any ambiguity can be resolved by using a Dictionary specifying
" which linter to run for which filetype instead.

" " Use ESLint for the buffer if the filetype includes 'javascript'.
" let b:ale_linters = {'javascript': ['eslint'], 'html': ['tidy']}
" " Use a List for the same setting. This will work in most cases.
" let b:ale_linters = ['eslint', 'tidy']
" " Disable all linters for the buffer.
" let b:ale_linters = []
" " Explicitly enable all available linters for the filetype.
" let b:ale_linters = 'all'

" ALE can be configured to disable all linters unless otherwise specified with
" `g:ale_enabled` or `b:ale_enabled` with the option |g:ale_linters_explicit|.
" Default: {}
"let b:ale_linters = {}
let g:ale_linters = {}

" When set to `1`, only the linters from |g:ale_linters| and |b:ale_linters|
" will be enabled. The default behavior for ALE is to enable as many linters
" as possible, unless otherwise specified.
" Default: 0
let g:ale_linters_explicit = 0

" Linters to ignore. Commands for ignored linters will not be run, and
" diagnostics for LSP linters will be ignored. (See |ale-lsp|)

" This setting can be set to a |Dictionary| mapping filetypes to linter names,
" just like |g:ale_linters|, to list linters to ignore. Ignore lists will be
" applied after everything else.

" " Select flake8 and pylint, and ignore pylint, so only flake8 is run.
" let g:ale_linters = {'python': ['flake8', 'pylint']}
" let g:ale_linters_ignore = {'python': ['pylint']}

" This setting can be set to simply a |List| of linter names, which is
" especially more convenient when using the setting in ftplugin files for
" particular buffers.

" " The same as above, in a ftplugin/python.vim.
" let b:ale_linters = ['flake8', 'pylint']
" let b:ale_linters_ignore = ['pylint']
" Default: {}
"let b:ale_linters_ignore = {}
let g:ale_linters_ignore = {}

" When set to `1`, this will cause ALE to open any windows (loclist or
" quickfix) vertically instead of horizontally (|vert| |lopen|) or (|vert|
" |copen|)
" Default: 0
let b:ale_list_vertical = 0
let g:ale_list_vertical = 0


" This option is the same as |g:ale_echo_msg_format|, but for formatting the
" message used for the loclist and the quickfix list.

" The strings for configuring `%severity%` are also used for this option.
" Default: g:ale_echo_msg_format
" let b:ale_loclist_msg_format = g:ale_msg_format
"let g:ale_loclist_msg_format = g:ale_msg_format

" This variable defines the format that messages received from an LSP will
" have when echoed. The following sequences of characters will be replaced.

"   `%s`           - replaced with the message text
"   `%linter%`     - replaced with the name of the linter
"   `%severity%`   - replaced with the severity of the message

" The strings for `%severity%` levels "error", "info" and "warning" are shared
" with |g:ale_echo_msg_format|. Severity "log" is unique to
" |g:ale_lsp_show_message_format| and it can be configured via

"   |g:ale_echo_msg_log_str|     - Defaults to 'Log'

" Please note that |g:ale_lsp_show_message_format| *can not* be configured
" separately for each buffer like |g:ale_echo_msg_format| can.
" Default: '%severity%:%linter%: %s'
let g:ale_lsp_show_message_format = '%severity%:%linter%: %s'

" This variable defines the minimum severity level an LSP message needs to be
" displayed. Messages below this level are discarded; please note that
" messages with `Log` severity level are always discarded.

" Possible values follow the LSP spec `MessageType` definition:

" 'error'       - Displays only errors.
" 'warning'     - Displays errors and warnings.
" 'information' - Displays errors, warnings and infos
" 'log'         - Same as 'information'
" 'disabled'    - Doesn't display any information at all.
" Default: 'error'
let g:ale_lsp_show_message_severity = 'error'

" If set to `1`, show hints/suggestions from LSP servers or tsserver, in
" addition to warnings and errors.
" Default: 0
let g:ale_lsp_suggestions = 0

" This setting controls the maximum number of commands which will be stored in
" the command history used for |ALEInfo|. Command history will be rotated in
" a FIFO manner. If set to a number <= 0, then the history will be
" continuously set to an empty |List|.

" History can be disabled completely with |g:ale_history_enabled|.
" Default: 20
let g:ale_max_buffer_history_size = 20

" When set to any positive integer, ALE will not render any more than the
" given number of signs for any one buffer.

" When set to `0`, no signs will be set, but sign processing will still be
" done, so existing signs can be removed.

" When set to any other value, no limit will be imposed on the number of signs
" set.

" For disabling sign processing, see |g:ale_set_signs|.
" Default: -1
"let b:ale_max_signs = -1
let g:ale_max_signs = -1

" A maximum file size in bytes for ALE to check. If set to any positive
" number, ALE will skip checking files larger than the given size.
" Default: undefined
"let g:ale_maximum_file_size
"let g:ale_maximum_file_size

" When set to `1`, this will cause ALE to automatically open a window for the
" loclist (|lopen|) or for the quickfix list instead if |g:ale_set_quickfix|
" is `1`. (|copen|)

" When set to any higher numberical value, ALE will only open the window when
" the number of warnings or errors are at least that many.

" When set to 'on_save', ALE will only open the loclist after buffers have
" been saved. The list will be opened some time after buffers are saved and
" any linter for a buffer returns results.

" The window will be kept open until all warnings or errors are cleared,
" including those not set by ALE, unless |g:ale_keep_list_window_open| is set
" to `1`, in which case the window will be kept open when no problems are
" found.

" The window size can be configured with |g:ale_list_window_size|.

" Windows can be opened vertically with |g:ale_list_vertical|.

" If you want to close the loclist window automatically when the buffer is
" closed, you can set up the following |autocmd| command:

" augroup CloseLoclistWindowGroup
" " autocmd!
" " autocmd QuitPre * if empty(&buftype) | lclose | endif
" augroup END
" Default: 0
"let b:ale_open_list = 0
let g:ale_open_list = 0

" This option maps regular expression patterns to |Dictionary| values for
" buffer variables. This option can be set to automatically configure
" different settings for different files. For example:

" " Use just ESLint for linting and fixing files which end in '.foo.js'
" let g:ale_pattern_options = {
" \   '\.foo\.js$': {
" \       'ale_linters': ['eslint'],
" \       'ale_fixers': ['eslint'],
" \   },
" \}

" See |b:ale_linters| and |b:ale_fixers| for information for those options.

" Filenames are matched with |match()|, and patterns depend on the |magic|
" setting, unless prefixed with the special escape sequences like '\v', etc.
" The patterns can match any part of a filename. The absolute path of the
" filename will be used for matching, taken from `expand('%:p')`.

" The options for every match for the filename will be applied, with the
" pattern keys sorted in alphabetical order. Options for 'zebra' will
" override the options for 'alpha' for a filename `alpha-zebra`.
" Default: undefined
"let g:ale_pattern_options

" This option can be used for disabling pattern options. If set to `0`, ALE
" will not set buffer variables per |g:ale_pattern_options|.
" Default: undefined
"let g:ale_pattern_options_enabled

" When this option is set to `1`, ALE will show code actions and rename
" capabilities in the right click mouse menu when there's a LSP server or
" tsserver available. See |ale-refactor|.

" This feature is only supported in GUI versions of Vim.

" This setting must be set to `1` before ALE is loaded for this behavior
" to be enabled. See |ale-lint-settings-on-startup|.
" Default: has('gui_running')
"let g:ale_popup_menu_enabled

" If enabled, this option will tell tsserver to find and replace text in
" comments when calling |ALERename|. It can be enabled by settings the value
" to `1`.
" Default: 0
let g:ale_rename_tsserver_find_in_comments = 0

" If enabled, this option will tell tsserver to find and replace text in
" strings when calling |ALERename|. It can be enabled by settings the value to
" `1`.
" Default: 0
let g:ale_rename_tsserver_find_in_strings = 0

" This option is used to determine the project root for a linter. If the value
" is a |Dictionary|, it maps a linter to either a |String| containing the
" project root or a |Funcref| to call to look up the root. The |Funcref| is
" provided the buffer number as its argument.

" The buffer-specific variable may additionally be a string containing the
" project root itself.

" If neither variable yields a result, a linter-specific function is invoked to
" detect a project root. If this, too, yields no result, and the linter is an
" LSP linter, it will not run.
" Default: {}
"let b:ale_root = {}
let g:ale_root = {}

" When this option is set to `1`, balloon messages will be displayed for
" problems or hover information if available.

" Problems nearest to the line the mouse cursor is over will be displayed. If
" there are no problems to show, and one of the linters is an LSP linter
" supporting "Hover" information, per |ale-hover|, then brief information
" about the symbol under the cursor will be displayed in a balloon.

" This option can be set to 'hover' to only enable balloons for hover
" message, so diagnostics are never shown in balloons. You may wish to
" configure use this setting only in GUI Vim like so:

" let g:ale_set_balloons = has('gui_running') ? 'hover' : 0


" Balloons can be enabled for terminal versions of Vim that support balloons,
" but some versions of Vim will produce strange mouse behavior when balloons
" are enabled. To configure balloons for your terminal, you should first
" configure your |ttymouse| setting, and then consider setting
" `g:ale_set_balloons` to `1` before ALE is loaded.

" `b:ale_set_balloons` can be set to `0` to disable balloons for a buffer.
" Balloons cannot be enabled for a specific buffer when not initially enabled
" globally.

" Balloons will not be shown when |g:ale_enabled| or |b:ale_enabled| is `0`.
" Default: has('balloon_eval') && has('gui_running')
"let b:ale_set_balloons
"let g:ale_set_balloons

" If set to `1`, moving your mouse over documents in Vim will make ALE ask
" `tsserver` or `LSP` servers for information about the symbol where the mouse
" cursor is, and print that information into Vim's echo line. This is an
" option for supporting older versions of Vim which do not properly support
" balloons in an asynchronous manner.

" If your version of Vim supports the |balloon_show| function, then this
" option does nothing meaningful.
" Default: undefined
"let g:ale_set_balloons_legacy_echo
"let g:ale_set_balloons_legacy_echo

" When this option is set to `1`, highlights will be set for problems.

" ALE will use the following highlight groups for problems:

" |ALEError|        - Items with 'type': 'E'
" |ALEWarning|      - Items with 'type': 'W'
" |ALEInfo.|        - Items with 'type': 'I'
" |ALEStyleError|   - Items with 'type': 'E' and 'sub_type': 'style'
" |ALEStyleWarning| - Items with 'type': 'W' and 'sub_type': 'style'

" When |g:ale_set_signs| is set to `0`, the following highlights for entire
" lines will be set.

" |ALEErrorLine|   - All items with 'type': 'E'
" |ALEWarningLine| - All items with 'type': 'W'
" |ALEInfoLine|    - All items with 'type': 'I'

" Vim can only highlight the characters up to the last column in a buffer for
" match highlights, whereas the line highlights when signs are enabled will
" run to the edge of the screen.

" Highlights can be excluded with the |g:ale_exclude_highlights| option.
" Default: has('syntax')
"let g:ale_set_highlights

" When this option is set to `1`, the |loclist| will be populated with any
" warnings and errors which are found by ALE. This feature can be used to
" implement jumping between errors through typical use of |lnext| and |lprev|.
" Default: 1
let g:ale_set_loclist = 1

" When this option is set to `1`, the |quickfix| list will be populated with
" any problems which are found by ALE, instead of the |loclist|. The loclist
" will never be populated when this option is on.

" Problems from every buffer ALE has checked will be included in the quickfix
" list, which can be checked with |:copen|. Problems will be de-duplicated.

" This feature should not be used in combination with tools for searching for
" matches and commands like |:cfdo|, as ALE will replace the quickfix list
" pretty frequently. If you wish to use such tools, you should populate the
" loclist or use |ALEPopulateQuickfix| instead.
" Default: 0
let g:ale_set_quickfix = 0

" When this option is set to `1`, the |sign| column will be populated with
" signs marking where problems appear in the file.

" ALE will use the following highlight groups for problems:

" |ALEErrorSign|        - Items with 'type': 'E'
" |ALEWarningSign|      - Items with 'type': 'W'
" |ALEInfoSign|         - Items with 'type': 'I'
" |ALEStyleErrorSign|   - Items with 'type': 'E' and 'sub_type': 'style'
" |ALEStyleWarningSign| - Items with 'type': 'W' and 'sub_type': 'style'

" In addition to the style of the signs, the style of lines where signs appear
" can be configured with the following highlights:

" |ALEErrorLine|   - All items with 'type': 'E'
" |ALEWarningLine| - All items with 'type': 'W'
" |ALEInfoLine|    - All items with 'type': 'I'

" With Neovim 0.3.2 or higher, ALE can use the `numhl` option to highlight the
" 'number' column. It uses the following highlight groups.

" |ALEErrorSignLineNr|        - Items with 'type': 'E'
" |ALEWarningSignLineNr|      - Items with 'type': 'W'
" |ALEInfoSignLineNr|         - Items with 'type': 'I'
" |ALEStyleErrorSignLineNr|   - Items with 'type': 'E' and 'sub_type': 'style'
" |ALEStyleWarningSignLineNr| - Items with 'type': 'W' and 'sub_type': 'style'

" To enable line number highlighting |g:ale_sign_highlight_linenrs| must be
" set to `1` before ALE is loaded.

" The markers for the highlights can be customized with the following options:

" |g:ale_sign_error|
" |g:ale_sign_warning|
" |g:ale_sign_info|
" |g:ale_sign_style_error|
" |g:ale_sign_style_warning|

" When multiple problems exist on the same line, the signs will take
" precedence in the order above, from highest to lowest.

" To limit the number of signs ALE will set, see |g:ale_max_signs|.
" Default: has('signs')
"let g:ale_set_signs

" From Neovim 0.4.0 and Vim 8.1, ALE can set sign priority to all signs. The
" larger this value is, the higher priority ALE signs have over other plugin
" signs. See |sign-priority| for further details on how priority works.
" Default: 30
let g:ale_sign_priority = 30

" Override the shell used by ALE for executing commands. ALE uses 'shell' by
" default, but falls back in `/bin/sh` if the default shell looks like `fish`
" or `pwsh`, which are not compatible with all of the commands run by ALE. The
" shell specified with this option will be used even if it might not work in
" all cases.

" For Windows, ALE uses `cmd` when this option isn't set. Setting this option
" will apply shell escaping to the command string, even on Windows.

" NOTE: Consider setting |g:ale_shell_arguments| if this option is defined.
" Default: not set
"let b:ale_shell
"let g:ale_shell

" This option specifies the arguments to use for executing a command with a
" custom shell, per |g:ale_shell|. If this option is not set, 'shellcmdflag'
" will be used instead.
" Default: not set
"let b:ale_shell_arguments
"let g:ale_shell_arguments

" By default, the sign gutter will disappear when all warnings and errors have
" been fixed for a file. When this option is set to `1`, the sign column will
" remain open. This can be preferable if you don't want the text in your file
" to move around as you edit a file.
" Default: 0
let g:ale_sign_column_always = 0

" The sign for errors in the sign gutter.
" Default: '>>'
let g:ale_sign_error = '>>'

" The sign for "info" markers in the sign gutter.
" Default: g:ale_sign_warning
"let g:ale_sign_info

" The sign for style errors in the sign gutter.
" Default: g:ale_sign_error
"let g:ale_sign_style_error

" The sign for style warnings in the sign gutter.
" Default: g:ale_sign_warning
"let g:ale_sign_style_warning

" This variable controls offset from which numeric IDs will be generated for
" new signs. Signs cannot share the same ID values, so when two Vim plugins
" set signs at the same time, the IDs have to be configured such that they do
" not conflict with one another. If the IDs used by ALE are found to conflict
" with some other plugin, this offset value can be changed, and hopefully both
" plugins will work together. See |sign-place| for more information on how
" signs are set.
" Default: 1000000
let g:ale_sign_offset = 1000000

" The sign for warnings in the sign gutter.
" Default: '--'
let g:ale_sign_warning = '--'

" When set to `1`, this option enables highlighting problems on the 'number'
" column in Vim versions that support `numhl` highlights. This option must be
" configured before ALE is loaded.
" Default: 0
let g:ale_sign_highlight_linenrs = 0

" This option can be set to disable updating Vim's |tagstack| automatically.
" Default: 1
"let b:ale_update_tagstack = 1
let g:ale_update_tagstack = 1

" This option can be set re-map problem types for linters. Each key in the
" |Dictionary| should be the name of a linter, and each value must be a
" |Dictionary| mapping problem types from one type to another. The following
" types are supported:

" 'E'" - {'type': 'E'}
" 'ES' - {'type': 'E', 'sub_type': 'style'}
" 'W'" - {'type': 'W'}
" 'WS' - {'type': 'W', 'sub_type': 'style'}
" 'I'" - {'type': 'I'}

" For example, if you want to turn flake8 errors into warnings, you can write
" the following:

" let g:ale_type_map = {'flake8': {'ES': 'WS', 'E': 'W'}}

" If you wanted to turn style errors and warnings into regular errors and
" warnings, you can write the following:

" let g:ale_type_map = {'flake8': {'ES': 'E', 'WS': 'W'}}

" Type maps can be set per-buffer with `b:ale_type_map`.
" Default: {}
"let b:ale_type_map = {}
let g:ale_type_map = {}


" This option can be set to change the default for all `_use_global` options.
" This option must be set before ALE is loaded, preferably in a vimrc file.

" See |ale-integrations-local-executables| for more information on those
" options.
" Default: not set
" let g:ale_use_global_executables

" When this option is set to `1`, a message will be shown when a cursor is
" near a warning or error. ALE will attempt to find the warning or error at a
" column nearest to the cursor when the cursor is resting on a line which
" contains a warning or error. This option can be set to `0` to disable this
" behavior.

" Messages are only displayed after a short delay. See |g:ale_virtualtext_delay|.

" Messages can be prefixed prefixed with a string. See |g:ale_virtualtext_prefix|.

" ALE will use the following highlight groups for problems:

" |ALEVirtualTextError|        - Items with 'type': 'E'
" |ALEVirtualTextWarning|      - Items with 'type': 'W'
" |ALEVirtualTextInfo|         - Items with 'type': 'I'
" |ALEVirtualTextStyleError|   - Items with 'type': 'E' and 'sub_type': 'style'
" |ALEVirtualTextStyleWarning| - Items with 'type': 'W' and 'sub_type': 'style'
" Default: 0
let g:ale_virtualtext_cursor = 0

" Given any integer, this option controls the number of milliseconds before
" ALE will show a message for a problem near the cursor.

" The value can be increased to decrease the amount of processing ALE will do
" for files displaying a large number of problems.
" Default: 10
"let b:ale_virtualtext_delay = 10
let g:ale_virtualtext_delay = 10

" Prefix to be used with |g:ale_virtualtext_cursor|.
" Default: '> '
let g:ale_virtualtext_prefix = '> '

" A list of directory names to be used when searching upwards from Python
" files to discover virtulenv directories with.

" For directory named 'foo', ALE will search for 'foo/bin/activate'
" (foo\Scripts\activate\ on Windows) in all directories on and above the
" directory containing the Python file to find virtualenv paths.
" Default: ['.env', '.venv', 'env', 've-py3', 've', 'virtualenv', 'venv']
"let b:ale_virtualenv_dir_names = ['.env', '.venv', 'env', 've-py3', 've', 'virtualenv', 'venv']
let g:ale_virtualenv_dir_names = ['.env', '.venv', 'env', 've-py3', 've', 'virtualenv', 'venv']

" When this option is set to 1, warnings about trailing blank lines will be
" shown.

" This option behaves similarly to |g:ale_warn_about_trailing_whitespace|.
" Default: 1
"let b:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_blank_lines = 1


" When this option is set to `1`, warnings relating to trailing whitespace on
" lines will be shown. If warnings are too irritating while editing buffers,
" and you have configured Vim to automatically remove trailing whitespace,
" you can disable these warnings by setting this option to `0`.

" Not all linters may respect this option. If a linter does not, please file a
" bug report, and it may be possible to add such support.

" This option may be configured on a per buffer basis.
" Default: 1
"let b:ale_warn_about_trailing_whitespace = 1
let g:ale_warn_about_trailing_whitespace = 1

" This variable is used as the path to the executable to use for executing
" scripts with Node.js on Windows.

" For Windows, any file with a `.js` file extension needs to be executed with
" the node executable explicitly. Otherwise, Windows could try and open the
" scripts with other applications, like a text editor. Therefore, these
" scripts are executed with whatever executable is configured with this
" setting.
" Default: 'node.exe'
"let b:ale_windows_node_executable_path = 'node.exe'
let g:ale_windows_node_executable_path = 'node.exe'

" Highlights
"ALEError
" The highlight for highlighted errors. See |g:ale_set_highlights|.
" Default: highlight link ALEError SpellBad

"ALEErrorLine
" The highlight for an entire line where errors appear. Only the first
" line for a problem will be highlighted.

" See |g:ale_set_signs| and |g:ale_set_highlights|.
" Default: Undefined

"ALEErrorSign
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEErrorSign error

"ALEInfo
" The highlight for highlighted info messages. See |g:ale_set_highlights|.
" Default: highlight link ALEInfo ALEWarning

"ALEInfoSign
" The highlight for info message signs. See |g:ale_set_signs|.
" Default: highlight link ALEInfoSign ALEWarningSign

"ALEInfoLine
" The highlight for entire lines where info messages appear. Only the first
" line for a problem will be highlighted.
" See |g:ale_set_signs| and |g:ale_set_highlights|.
" Default: Undefined

"ALEStyleError
" The highlight for highlighted style errors. See |g:ale_set_highlights|.
" Default: highlight link ALEStyleError ALEError

"ALEStyleErrorSign
" The highlight for style error signs. See |g:ale_set_signs|.
" Default: highlight link ALEStyleErrorSign ALEErrorSign

"ALEStyleWarning
" The highlight for highlighted style warnings. See |g:ale_set_highlights|.
" Default: highlight link ALEStyleWarning ALEError

"ALEStyleWarningSign
" The highlight for style warning signs. See |g:ale_set_signs|.
" Default: highlight link ALEStyleWarningSign ALEWarningSign

"ALEVirtualTextError
" The highlight for virtualtext errors. See |g:ale_virtualtext_cursor|.
" Default: highlight link ALEVirtualTextError ALEError

"ALEVirtualTextInfo
" The highlight for virtualtext info. See |g:ale_virtualtext_cursor|.
" Default: highlight link ALEVirtualTextInfo ALEVirtualTextWarning

"ALEVirtualTextStyleError
" The highlight for virtualtext style errors. See |g:ale_virtualtext_cursor|.
" Default: highlight link ALEVirtualTextStyleError ALEVirtualTextError

"ALEVirtualTextStyleWarning
" The highlight for virtualtext style warnings. See |g:ale_virtualtext_cursor|.
" Default: highlight link ALEVirtualTextStyleWarning ALEVirtualTextWarning

"ALEVirtualTextWarning
" The highlight for virtualtext errors. See |g:ale_virtualtext_cursor|.
" Default: highlight link ALEVirtualTextWarning ALEWarning

"ALEWarning
" The highlight for highlighted warnings. See |g:ale_set_highlights|.
" Default: highlight link ALEWarning SpellCap

"ALEWarningLine
" The highlight for entire lines where warnings appear. Only the first line
" for a problem will be highlighted.
" See |g:ale_set_signs| and |g:ale_set_highlights|.
" Default: Undefined

"ALEWarningSign
" The highlight for warning signs. See |g:ale_set_signs|.
" Default: highlight link ALEWarningSign todo

if (has('nvim-0.3.2')) 
" NOTE: Those highlight are only available on Neovim 0.3.2 or higher.
"ALEWarningSignLineNr
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEWarningSignLineNr CursorLineNr

"ALEStyleWarningSignLineNr
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEStyleWarningSignLineNr CursorLineNr

"ALEStyleErrorSignLineNr
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEStyleErrorSignLineNr CursorLineNr

"ALEInfoSignLineNr
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEInfoSignLineNr CursorLineNr

"ALEErrorSignLineNr
" The highlight for error signs. See |g:ale_set_signs|.
" Default: highlight link ALEErrorSignLineNr CursorLineNr

endif
