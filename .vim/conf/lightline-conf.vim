" ################################
" # Lightline configuration file #
" ################################
"
" All the configurations are stored in this global variable.
" g:lightline

" g:lightline.active
" g:lightline.inactive
" g:lightline.tabline
" Dictionaries to store the statusline/tabline components.
" Note that right groups of components are stored from right to left.
" The default values are:
" let g:lightline.active = {
"        \ 'left': [ [ 'mode', 'paste' ],
"        \           [ 'readonly', 'filename', 'modified' ] ],
"        \ 'right': [ [ 'lineinfo' ],
"        \            [ 'percent' ],
"        \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
"  let g:lightline.inactive = {
"        \ 'left': [ [ 'filename' ] ],
"        \ 'right': [ [ 'lineinfo' ],
"        \            [ 'percent' ] ] }
"  let g:lightline.tabline = {
"        \ 'left': [ [ 'tabs' ] ],
"        \ 'right': [ [ 'close' ] ] }
let g:lightline.active = {
       \ 'left': [ [ 'mode', 'paste' ],
       \           [ 'readonly', 'filename', 'modified' ] ],
       \ 'right': [ [ 'lineinfo' ],
       \            [ 'percent' ],
       \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
 let g:lightline.inactive = {
       \ 'left': [ [ 'filename' ] ],
       \ 'right': [ [ 'lineinfo' ],
       \            [ 'percent' ] ] }
 let g:lightline.tabline = {
       \ 'left': [ [ 'tabs' ] ],
       \ 'right': [ [ 'close' ] ] }

" g:lightline.tab
" A dictionary to store the tab components in each tabs.
" The default values are:
" let g:lightline.tab = {
"         \ 'active': [ 'tabnum', 'filename', 'modified' ],
"         \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
let g:lightline.tab = {
        \ 'active': [ 'tabnum', 'filename', 'modified' ],
        \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

"  g:lightline.component
"  A dictionary for statusline/tabline components.
"  The default value is:
"  let g:lightline.component = {
"          \ 'mode': '%{lightline#mode()}',
"          \ 'absolutepath': '%F',
"          \ 'relativepath': '%f',
"          \ 'filename': '%t',
"          \ 'modified': '%M',
"          \ 'bufnum': '%n',
"          \ 'paste': '%{&paste?"PASTE":""}',
"          \ 'readonly': '%R',
"          \ 'charvalue': '%b',
"          \ 'charvaluehex': '%B',
"          \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
"          \ 'fileformat': '%{&ff}',
"          \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
"          \ 'percent': '%3p%%',
"          \ 'percentwin': '%P',
"          \ 'spell': '%{&spell?&spelllang:""}',
"          \ 'lineinfo': '%3l:%-2c',
"          \ 'line': '%l',
"          \ 'column': '%c',
"          \ 'close': '%999X X ',
"          \ 'winnr': '%{winnr()}' }
let g:lightline.component = {
         \ 'mode': '%{lightline#mode()}',
         \ 'absolutepath': '%F',
         \ 'relativepath': '%f',
         \ 'filename': '%t',
         \ 'modified': '%M',
         \ 'bufnum': '%n',
         \ 'paste': '%{&paste?"PASTE":""}',
         \ 'readonly': '%R',
         \ 'charvalue': '%b',
         \ 'charvaluehex': '%B',
         \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
         \ 'fileformat': '%{&ff}',
         \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
         \ 'percent': '%3p%%',
         \ 'percentwin': '%P',
         \ 'spell': '%{&spell?&spelllang:""}',
         \ 'lineinfo': '%3l:%-2c',
         \ 'line': '%l',
         \ 'column': '%c',
         \ 'close': '%999X X ',
         \ 'winnr': '%{winnr()}' }

" g:lightline.component_visible_condition
" A dictionary to store the visible condition of the components.
" Note that this configuration is used to control the visibility
" of the subseparators, not to control the visibility of the
" components themselves. Each expression should correspond to
" the condition on which each component is not empty.
" The default value is:
" let g:lightline.component_visible_condition = {
"         \ 'modified': '&modified||!&modifiable',
"         \ 'readonly': '&readonly',
"         \ 'paste': '&paste',
"         \ 'spell': '&spell' }
let g:lightline.component_visible_condition = {
        \ 'modified': '&modified||!&modifiable',
        \ 'readonly': '&readonly',
        \ 'paste': '&paste',
        \ 'spell': '&spell' }

" g:lightline.component_function
" A dictionary to store the function components.
" This is useful to write a complex component configuration and
" to integrate with other plugins. If a component set in both
" component and component_function, the configuration of
" component_function has priority.
" The default value is:
" let g:lightline.component_function = {}
" For example, if you want to display the name of the git branch,
" install |vim-fugitive| plugin and then configure as:
" let g:lightline = {
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ },
"       \ }
let g:lightline.component_function = {}

" g:lightline.component_function_visible_condition
" A dictionary to store the visible conditions of the function
" components. Each expression should correspond to the condition
" each component is not empty. This configuration is used to
" control the visibility of the sub-separators. You can use this
" configuration to reduce the number of function calls for
" performance improvement by setting the value 1 (to tell lightline
" that the component is always visible).
" The default value is:
" let g:lightline.component_function_visible_condition = {}
let g:lightline.component_function_visible_condition = {}

" g:lightline.component_expand
" A dictionary to store expanding components. You can create
" warning and critical components. The values should be the name
" of functions should return either one of:
"   + a string
"   + an array of three elements:
"       [[ left ], [ middle ], [ right ]]
" The component in this dictionary has priority over
" |g:lightline.component| and |g:lightline.component_function|.
" Note that the return string is appended to the statusline
" string without any conversion. So you should replace all the
" % signs with %%. Otherwise, lightline will be disabled in case
" the text has a % sign.
" (example: return substitute(text, '%', '%%', 'g')).
" See |lightline-component-expansion| for more detail.
" let g:lightline.component_expand = { 'tabs': 'lightline#tabs' }

" g:lightline.component_type
" A dictionary to specify the types for components in
" |g:lightline.component_expand|. The types are used to specify
" the color. Specifically, the type raw is used to specify a
" component which should not be wrapped by item group: %(...%).
" If you want to specify the type of a raw component, please use
" |g:lightline.component_raw|.
" The default value is:
" let g:lightline.component_type = { 'tabs': 'tabsel', 'close': 'raw' }
let g:lightline.component_type = { 'tabs': 'tabsel', 'close': 'raw' }

" g:lightline.component_raw
" A dictionary to specify the raw type components. When you
" register a component to this dictionary (like
" let g:lightline.component_raw = { 'example': 1 }
" ), the example component is not wrapped by item group: %(...%).
" The default value is:
" let g:lightline.component_raw = {}
let g:lightline.component_raw = {}

" g:lightline.tab_component
" A dictionary for components in one tab.
" The default value is:
" let g:lightline.tab_component = {}
let g:lightline.tab_component = {}

" g:lightline.tab_component_function
" Another dictionary for components in one tab.
" A function specified as a tab component takes one argument:
" the tab [count].
" The default value is:
" let g:lightline.tab_component_function = {
"           \ 'filename': 'lightline#tab#filename',
"           \ 'modified': 'lightline#tab#modified',
"           \ 'readonly': 'lightline#tab#readonly',
"           \ 'tabnum': 'lightline#tab#tabnum' }
let g:lightline.tab_component_function = {
          \ 'filename': 'lightline#tab#filename',
          \ 'modified': 'lightline#tab#modified',
          \ 'readonly': 'lightline#tab#readonly',
          \ 'tabnum': 'lightline#tab#tabnum' }

" g:lightline.colorscheme
" The colorscheme for lightline.vim.
" Currently, wombat, solarized, powerline, powerlineish, jellybeans, molokai,
" seoul256, darcula, selenized_dark, selenized_black, selenized_light,
" selenized_white, Tomorrow, Tomorrow_Night, Tomorrow_Night_Blue,
" Tomorrow_Night_Bright, Tomorrow_Night_Eighties, PaperColor, landscape, one,
" materia, material, OldHope, nord, deus, simpleblack, srcery_drk, ayu_mirage,
" ayu_light, ayu_dark and 16color are available.
" The default value is:
" let g:lightline.colorscheme = 'default'
" Note that the default colorscheme is exactly the same as the
" powerline theme.
let g:lightline.colorscheme = 'default'

" g:lightline.mode_map
" A dictionary of names for the modes. The keys are the return
" values of |mode()|.
" The default value is:
" let g:lightline.mode_map = {
"         \ 'n' : 'NORMAL',
"         \ 'i' : 'INSERT',
"         \ 'R' : 'REPLACE',
"         \ 'v' : 'VISUAL',
"         \ 'V' : 'V-LINE',
"         \ "\<C-v>": 'V-BLOCK',
"         \ 'c' : 'COMMAND',
"         \ 's' : 'SELECT',
"         \ 'S' : 'S-LINE',
"         \ "\<C-s>": 'S-BLOCK',
"         \ 't': 'TERMINAL',
"         \ }
" When you search a word, you get into the command mode. But if
" you want to keep the mode indicator as 'NORMAL', add
" let g:lightline = { 'mode_map': { 'c': 'NORMAL' } }
" to your .vimrc.
let g:lightline.mode_map = {
        \ 'n' : 'NORMAL',
        \ 'i' : 'INSERT',
        \ 'R' : 'REPLACE',
        \ 'v' : 'VISUAL',
        \ 'V' : 'V-LINE',
        \ "\<C-v>": 'V-BLOCK',
        \ 'c' : 'COMMAND',
        \ 's' : 'SELECT',
        \ 'S' : 'S-LINE',
        \ "\<C-s>": 'S-BLOCK',
        \ 't': 'TERMINAL',
        \ }

" g:lightline.separator
" g:lightline.subseparator
" Dictionaries to store separators.
" The default value is
" let g:lightline.separator = { 'left': '', 'right': '' }
" let g:lightline.subseparator = { 'left': '|', 'right': '|' }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '|', 'right': '|' }

" g:lightline.tabline_separator
" g:lightline.tabline_subseparator
" Dictionaries to store separators for the tabline.
" The default value is
" let g:lightline.tabline_separator = g:lightline.separator
" let g:lightline.tabline_subseparator = g:lightline.subseparator
let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator

" g:lightline.enable
" A dictionary to specify which feature is turned on.
" The default value is
" let g:lightline.enable = {
"         \ 'statusline': 1,
"         \ 'tabline': 1
"         \ }
let g:lightline.enable = {
        \ 'statusline': 1,
        \ 'tabline': 1
        \ }
