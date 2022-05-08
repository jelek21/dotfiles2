" ##############################
" # Airline configuration file #
" ##############################
" For compatibility issues:
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" This function allows you to change symbols between powerline and unicode on
" the go
function! s:ChangeAirlineSym(symName)
  if a:symName == 'unicode'
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'
  elseif a:symName == 'powerline'
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
  else
    echo 'Invalid value (unicode, powerline)'
  endif
  exe ':AirlineRefresh'
endfunction
command! -nargs=1 AirlineSymbols call s:ChangeAirlineSym(<f-args>)

" The separator used on the left side >
"  let g:airline_left_sep='>'

" The separator used on the right side >
"  let g:airline_right_sep='<'

" Enable modified detection
  let g:airline_detect_modified=1

" Enable paste detection
  let g:airline_detect_paste=1

" Enable crypt detection
  let g:airline_detect_crypt=1

" Enable spell detection
  let g:airline_detect_spell=1

" Display spelling language when spell detection is enabled
" (if enough space is available)
  let g:airline_detect_spelllang=1

" Enable iminsert detection
"  let g:airline_detect_iminsert=0

" Determine whether inactive windows should have the left section collapsed
" to only the filename of that buffer.
"  let g:airline_inactive_collapse=1

" Use alternative seperators for the statusline of inactive windows
"  let g:airline_inactive_alt_sep=1

" Themes are automatically selected based on the matching colorscheme. this
" can be overridden by defining a value.
"  let g:airline_theme='dark'

" Note: Only the dark theme is distributed with vim-airline. For more themes,
" checkout the vim-airline-themes repository
" (github.com/vim-airline/vim-airline-themes)

" If you want to patch the airline theme before it gets applied, you can
" supply the name of a function where you can modify the palette. >
"  let g:airline_theme_patch_func = 'AirlineThemePatch'
"  function! AirlineThemePatch(palette)
"    if g:airline_theme == 'badwolf'
"      for colors in values(a:palette.inactive)
"        let colors[3] = 245
"      endfor
"    endif
"  endfunction

" If you want to update your highlights without effecting the airline theme,
" you can do so using the AirlineAfterTheme autocmd. >
"  function! s:update_highlights()
"    hi CursorLine ctermbg=none guibg=none
"    hi VertSplit ctermbg=none guibg=none
"  endfunction
"  autocmd User AirlineAfterTheme call s:update_highlights()

" By default, airline will use unicode symbols if your encoding matches
" utf-8. If you want the powerline symbols set this variable: >
  let g:airline_powerline_fonts = 1

" If you want to use plain ascii symbols, set this variable: >
"  let g:airline_symbols_ascii = 1

" Define the set of text to display for each mode.  >
"  let g:airline_mode_map = {} " see source for the defaults

  " or copy paste the following into your vimrc for shortform text
"  let g:airline_mode_map = {
"      \ '__'     : '-',
"      \ 'c'      : 'C',
"      \ 'i'      : 'I',
"      \ 'ic'     : 'I',
"      \ 'ix'     : 'I',
"      \ 'n'      : 'N',
"      \ 'multi'  : 'M',
"      \ 'ni'     : 'N',
"      \ 'no'     : 'N',
"      \ 'R'      : 'R',
"      \ 'Rv'     : 'R',
"      \ 's'      : 'S',
"      \ 'S'      : 'S',
"      \ ''     : 'S',
"      \ 't'      : 'T',
"      \ 'v'      : 'V',
"      \ 'V'      : 'V',
"      \ ''     : 'V',
"      \ }
"  Note: 'multi' is for displaying the multiple cursor mode

" Define the set of filename match queries which excludes a window from
" having its statusline modified >
"  let g:airline_exclude_filenames = [] " see source for current list

" Define the set of filetypes which are excluded from having its window
" statusline modified >
"  let g:airline_exclude_filetypes = [] " see source for current list

" Define the set of names to be displayed instead of a specific filetypes
" (for section a and b): >

"  let g:airline_filetype_overrides = {
"      \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
"      \ 'gundo': [ 'Gundo', '' ],
"      \ 'help':  [ 'Help', '%f' ],
"      \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
"      \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
"      \ 'startify': [ 'startify', '' ],
"      \ 'vim-plug': [ 'Plugins', '' ],
"      \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
"      \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
"      \ }

" Defines whether the preview window should be excluded from have its window
" statusline modified (may help with plugins which use the preview window
" heavily)
"  let g:airline_exclude_preview = 0

" Disable the Airline statusline customization for selected windows (this is a
" window-local variable so you can disable it per-window) >
"  let w:airline_disable_statusline = 1

" See also the following options, for disabling setting the statusline
" globally or per-buffer
" Disable setting the statusline option:
  " disable globally
"  let g:airline_disable_statusline = 1

  " disable per-buffer
"  let b:airline_disable_statusline = 1
" This setting disables setting the 'statusline' option. This allows to use
"e.g. the tabline extension (|airline-tabline|) but keep the 'statusline'
"option totally configurable by a custom configuration.

" Do not draw separators for empty sections (only for the active window) >
"  let g:airline_skip_empty_sections = 1

" This variable can be overriden by setting a window-local variable with
" the same name (in the correct window):
"  let w:airline_skip_empty_sections = 0

" Caches the changes to the highlighting groups, should therefore be faster.
" Set this to one, if you experience a sluggish Vim: >
"  let g:airline_highlighting_cache = 0

" Disable airline on FocusLost autocommand (e.g. when Vim loses focus): >
"  let g:airline_focuslost_inactive = 1

" Configure the fileformat output
" By default, it will display something like 'utf-8[unix]', however, you can
" skip displaying it, if the output matches a configured string. To do so,
" set:
"  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Display the statusline in the tabline (first top line):
  let g:airline_statusline_ontop = 0
" Setting this option, allows to use the statusline option to be used by
" a custom function or another plugin, since airline won't change it.
" Note: This setting is experimental and works on a best effort approach.
" Updating the statusline might not always happen as fast as needed, but that
" is a limitation, that comes from Vim. airline tries to force an update if
" needed, but it might not always work as expected.
" To force updating the tabline on mode changes, call `airline#check_mode()`
" in your custom statusline setting: `:set stl=%!airline#check_mode(winnr())`
" will correctly update the tabline on mode changes.


" Display a short path in statusline:
"  let g:airline_stl_path_style = 'short'

" ###############
" # Airline ALE #
" ###############
if (exists('g:loaded_ale') && g:loaded_ale)
  " enable/disable ale integration >
  let g:airline#extensions#ale#enabled = 1

  " ale error_symbol
  let airline#extensions#ale#error_symbol = 'E:'

  " ale warning
  let airline#extensions#ale#warning_symbol = 'W:'

  " ale show_line_numbers
  let airline#extensions#ale#show_line_numbers = 1

  " ale open_lnum_symbol
  let airline#extensions#ale#open_lnum_symbol = '(L'

  " ale close_lnum_symbol
  let airline#extensions#ale#close_lnum_symbol = ')'
endif

" ###################
" # Airline Battery #
" ###################
" enable/disable battery integration if the plugin is loaded
"  default: 0
if (exists('g:loaded_battery') && g:loaded_battery)
  let g:airline#extensions#battery#enabled = 1
else
  let g:airline#extensions#battery#enabled = 0
endif

" ####################
" # Airline Bookmark #
" ####################
" enable/disable bookmark integration if the plugin is loaded
if (exists('g:bm_has_any') && g:bm_has_any)
  let g:airline#extensions#bookmark#enabled = 1
else
  let g:airline#extensions#bookmark#enabled = 0
endif

" ##################
" # Airline Branch #
" ##################
" Works with :
"     -fugitive
"     -gina
"     -lawrencium
"     -vscommand

" Enable/disable fugitive/lawrencium integration >
  let g:airline#extensions#branch#enabled = 1

" Change the text for when no branch is detected >
  let g:airline#extensions#branch#empty_message = ''

" Define the order in which the branches of different vcs systems will be
" displayed on the statusline (currently only for fugitive and lawrencium) >
  let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]

" Use vcscommand.vim if available >
  let g:airline#extensions#branch#use_vcscommand = 0

" Truncate long branch names to a fixed length >
  let g:airline#extensions#branch#displayed_head_limit = 10

" Customize formatting of branch name >
  " default value leaves the name unmodifed
"  let g:airline#extensions#branch#format = 0

  " to only show the tail, e.g. a branch 'feature/foo' becomes 'foo', use
"  let g:airline#extensions#branch#format = 1

  " to truncate all path sections but the last one, e.g. a branch
  " 'foo/bar/baz' becomes 'f/b/baz', use
"  let g:airline#extensions#branch#format = 2

  " If a string is provided, it should be the name of a function that
  " takes a string and returns the desired value
"  let g:airline#extensions#branch#format = 'CustomBranchName'
"  function! CustomBranchName(name)
"    return '[' . a:name . ']'
"  endfunction

" Truncate sha1 commits at this number of characters
  let g:airline#extensions#branch#sha1_len = 6

" Customize branch name retrieval for any version control system
"  let g:airline#extensions#branch#custom_head = 'GetScmBranch'
"  function! GetScmBranch()
"    if !exists('b:perforce_client')
"      let b:perforce_client = system('p4 client -o | grep Client')
      " Invalidate cache to prevent stale data when switching clients. Use a
      " buffer-unique group name to prevent clearing autocmds for other
      " buffers.
"      exec 'augroup perforce_client-'. bufnr("%")
"          au!
"          autocmd BufWinLeave <buffer> silent! unlet! b:perforce_client
"      augroup END
"    endif
"    return b:perforce_client
"  endfunction

" Configure additional vcs checks to run
" By default, vim-airline will check if the current edited file is untracked
" in the repository. If so, it will append the `g:airline_symbols.notexists`
" symbol to the branch name.
" In addition, it will check if the repository is clean, else it will append
" the `g:airline_symbols.dirty` symbol to the branch name (if the current
" file is not untracked). Configure, by setting the following variable: >

"  let g:airline#extensions#branch#vcs_checks = ['untracked', 'dirty']

" ######################
" # Airline Bufferline #
" ######################
if (exists('g:loaded_bufferline') && g:loaded_bufferline)
  " Enable bufferline integration
  let g:airline#extensions#bufferline#enabled = 1
  " Determine whether bufferline will overwrite customization variables >
  let g:airline#extensions#bufferline#overwrite_variables = 1
else
  " Disable bufferline integration
  let g:airline#extensions#bufferline#enabled = 0
endif

" ######################
" # Airline Capslock   #
" ######################
" vim-capslock <https://github.com/tpope/vim-capslock>
" Enable/disable vim-capslock integration
let g:airline#extensions#capslock#enabled = 1
" change vim-capslock symbol
let g:airline#extensions#capslock#symbol = 'CAPS' " (default)

" ###############
" # Airline Coc #
" ###############
" coc <https://github.com/neoclide/coc.nvim>
if (exists('g:did_coc_loaded') && g:did_coc_loaded)
  " Enable/disable coc integration
  let g:airline#extensions#coc#enabled = 1
  " Change error symbol:
  let airline#extensions#coc#error_symbol = 'E:'
  " Change warning symbol:
  let airline#extensions#coc#warning_symbol = 'W:'
  " Change error format:
  let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
  " Change warning format:
  let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
else
  let g:airline#extension#coc#enabled = 0
endif

" ###############
" # Airline csv #
" ###############
" csv.vim <https://github.com/chrisbra/csv.vim>
if (exists('g:loaded_csv') && g:loaded_csv)
  " Enable csv integration for displaying the current column.
  let g:airline#extensions#csv#enabled = 1
  " Change how columns are displayed. >
  let g:airline#extensions#csv#column_display = 'Number' (default)
  let g:airline#extensions#csv#column_display = 'Name'
else
  " Disable csv integration for displaying the current column.
  let g:airline#extensions#csv#enabled = 1
endif

" #################
" # Airline Ctrlp #
" #################
" ctrlp <https://github.com/ctrlpvim/ctrlp.vim>
if (exists('g:loaded_ctrlp') && g:loaded_ctrlp)
  " Configure which mode colors should ctrlp window use (takes effect
  " only if the active airline theme doesn't define ctrlp colors)
  let g:airline#extensions#ctrlp#color_template = 'insert' (default)
  let g:airline#extensions#ctrlp#color_template = 'normal'
  let g:airline#extensions#ctrlp#color_template = 'visual'
  let g:airline#extensions#ctrlp#color_template = 'replace'

  " Configure whether to show the previous and next modes (mru, buffer,
  " etc...)
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
endif

" #####################
" # Airline Ctrlspace #
" #####################
" vim-ctrlspace <https://github.com/szw/vim-ctrlspace>

if (exists('g:CtrlSpaceLoaded') && g:CtrlSpaceLoaded)
  " Enable vim-ctrlspace integration
  let g:airline#extensions#ctrlspace#enabled = 1
  " To make the vim-ctrlspace integration work you will need to make the
  " ctrlspace statusline function call the correct airline function.
  let g:CtrlSpaceStatuslineFunction = "airline#extensions#ctrlspace#statusline()"
else
  " Disable vim-ctrlspace integration
  let g:airline#extensions#ctrlspace#enabled = 0
endif

" ######################
" # Airline Cursormode #
" ######################
" cursormode <https://github.com/vheon/vim-cursormode>
" Built-in extension to displays cursor in different colors depending on the
" current mode (only works in terminals iTerm, AppleTerm and xterm)

if (exists('g:loaded_cursormode') && g:loaded_cursormode)
  " Enable cursormode integration
  let g:airline#extensions#cursormode#enabled = 1
  " Mode function. Return value is used as key for the color mapping. Default
  " is |mode()|
  "let g:cursormode_mode_func = 'mode'
  " Color mapping. Keys come from `g:cursormode_mode_func`
  " (a background value can be appended)
  "let g:cursormode_color_map = {
  "\ "nlight": '#000000',`
  "\ "ndark": '#BBBBBB',`
  "\ "i":
  "g:airline#themes#{g:airline_theme}#palette.insert.airline_a[1],`
  "`\ "R":
  "g:airline#themes#{g:airline_theme}#palette.replace.airline_a[1],`
  "`\ "v":
  "g:airline#themes#{g:airline_theme}#palette.visual.airline_a[1],`
  "`\ "V":
  "g:airline#themes#{g:airline_theme}#palette.visual.airline_a[1],`
  "`\ "\<C-V>":
  "g:airline#themes#{g:airline_theme}#palette.visual.airline_a[1],`
  "`\ }`
else
  " Disable cursormode integration
  let g:airline#extensions#cursormode#enabled = 0
endif

" ##################
" # Airline Denite #
" ##################
" Denite <https://github.com/Shougo/denite.nvim>
if (exists('g:loaded_denite') && g:loaded_denite)
  " Enable denite integration
  let g:airline#extensions#denite#enabled = 1
else
  " Disable denite integration
  let g:airline#extensions#denite#enabled = 0
endif

" ###################
" # Airline Dirvish #
" ###################
" vim-dirvish <https://github.com/justinmk/vim-dirvish>
if (exists('g:loaded_dirvish') && g:loaded_dirvish)
  " Enable vim-dirvish integration
  let g:airline#extensions#dirvish#enabled = 1
else
  " Disable vim-dirvish integration
  let g:airline#extensions#dirvish#enabled = 1
endif

" #################
" # Airline Eclim #
" #################
" eclim <https://eclim.org>
" Enable eclim integration, which works well with the
" |airline-syntastic| extension.
let g:airline#extensions#eclim#enabled = 0

" ################
" # Airline Fern #
" ################
"fern.vim <https://github.com/lambdalisue/fern.vim>
" Airline displays the fern.vim specific statusline.
if (exists('g:loaded_fern') && g:loaded_fern)
" Enable fern integration
  let g:airline#extensions#fern#enabled = 1
else
  " Disable fern integration
  let g:airline#extensions#fern#enabled = 0
endif

" ########################
" # Airline FugitiveLine #
" ########################
" This extension hides the fugitive://**// part of the buffer names, to only
" show the file name as if it were in the current working tree.
" It is deactivated by default if |airline-bufferline| is activated.
if (exists('g:loaded_fugitive') && g:loaded_fugitive)
  " Enable fugitiveline integration
  let g:airline#extensions#fugitiveline#enabled = 1
  " If enabled, the buffer that comes from fugitive, will have added a trailing
  " "[git]" to be able do distinguish between fugitive and non-fugitive buffers.
else
  " Disable fugitiveline integration >
  let g:airline#extensions#fugitiveline#enabled = 0
endif

" ###############
" # Airline fzf #
" ###############
" fzf <https://github.com/junegunn/fzf>
" fzf.vim <https://github.com/junegunn/fzf.vim>
if (exists('g:loaded_fzf') && g:loaded_fzf)
  " Enable fzf integration
  let g:airline#extensions#fzf#enabled = 1
else
  " Disable fzf integration
  let g:airline#extensions#fzf#enabled = 0
endif

" ################
" # Airline Gina #
" ################
" gina.vim <https://github.com/lambdalisue/gina.vim>
" Airline displays the gina.vim specific statusline.
if (exists('g:loaded_gina') && g:loaded_gina)
  " Enable bufferline integration
  let g:airline#extensions#gina#enabled = 1
else
  " Disable bufferline integration
  let g:airline#extensions#gina#enabled = 0
endif

" ###################
" # Airline Grepper #
" ###################
" vim-grepper <https://github.com/mhinz/vim-grepper>
if (exists('g:loaded_grepper') && g:loaded_grepper)
  " Enable vim-grepper integration
  let g:airline#extensions#grepper#enabled = 1
else
  " Disable vim-grepper integration
  let g:airline#extensions#grepper#enabled = 0
endif

" #####################
" # Airline Gutentags #
" #####################
" vim-gutentags <https://github.com/ludovicchabant/vim-gutentags>
if (exists('g:loaded_gutentags') && g:loaded_gutentags)
  " Enable vim-gutentags integration
  let g:airline#extensions#gutentags#enabled = 1
else
  " Enable vim-gutentags integration
  let g:airline#extensions#gutentags#enabled = 0
endif

" #################
" # Airline Hunks #
" #################
" vim-gitgutter <https://github.com/airblade/vim-gitgutter>
" vim-signify <https://github.com/mhinz/vim-signify>
" changesPlugin <https://github.com/chrisbra/changesPlugin>
" quickfixsigns <https://github.com/tomtom/quickfixsigns_vim>
" coc-git <https://github.com/neoclide/coc-git>
"
" You can use `airline#extensions#hunks#get_raw_hunks()` to get the full hunks,
" without shortening. This allows for advanced customization, or a quick way of
" querying how many changes you got. It will return something like '+4 ~2 -1'.
" Enable showing a summary of changed hunks under source control.
let g:airline#extensions#hunks#enabled = 1
" Enable showing only non-zero hunks.
let g:airline#extensions#hunks#non_zero_only = 0
" Set hunk count symbols.
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
" Enable coc-git extension.
" If not set to 1, vim-airline will not consider to use coc-git for the
" hunks extension. Make sure to have the coc-git extension enabled.
if (exists('g:loaded_coc_git') && g:loaded_coc_git)
  let g:airline#extensions#hunks#coc_git = 1
else
  let g:airline#extensions#hunks#coc_git = 0
endif

" ##################
" # Airline Keymap #
" ##################
" vim-keymap
" This extension displays the current 'keymap' in use.
if (exists('g:loaded_keymaps') && g:loaded_keymaps)
  " Enable vim-keymap extension
  let g:airline#extensions#keymap#enabled = 1
else
  " Enable vim-keymap extension
  let g:airline#extensions#keymap#enabled = 0
endif

" ##########################
" # Airline LanguageClient #
" ##########################
" LanguageClient <https://github.com/autozimu/LanguageClient-neovim>
" (despite its name, it can be used for Vim and Neovim).
if exists('g:LanguageClient_serverCommands')
  " Enable LanguageClient integration
  let g:airline#extensions#languageclient#enabled = 1
  " languageclient error_symbol
  let airline#extensions#languageclient#error_symbol = 'E:'
  " languageclient warning_symbol
  let airline#extensions#languageclient#warning_symbol = 'W:'
  " languageclient show_line_numbers
  let airline#extensions#languageclient#show_line_numbers = 1
  " languageclient open_lnum_symbol
  let airline#extensions#languageclient#open_lnum_symbol = '(L'
  " languageclient close_lnum_symbol
  let airline#extensions#languageclient#close_lnum_symbol = ')'
else
  " Disable LanguageClient integration
  let g:airline#extensions#languageclient#enabled = 0
endif

" #######################
" # Airline Localsearch #
" #######################
" localsearch <https://github.com/mox-mox/vim-localsearch>
if (exists('g:loaded_localsearch') && g:loaded_localsearch)
  " Enable localsearch indicator integration
  let g:airline#extensions#localsearch#enabled = 1
else
  " Disable localsearch indicator integration
  let g:airline#extensions#localsearch#enabled = 0
endif

" ###############
" # Airline lsp #
" ###############
" lsp <https://github.com/prabirshrestha/vim-lsp>
if (exists('g:lsp_loaded') && g:lsp_loaded)
  " Enable lsp integration
  let g:airline#extensions#lsp#enabled = 1
  " lsp error_symbol
  let airline#extensions#lsp#error_symbol = 'E:'
  " lsp warning
  let airline#extensions#lsp#warning_symbol = 'W:'
  " lsp show_line_numbers
  let airline#extensions#lsp#show_line_numbers = 1
  " lsp open_lnum_symbol
  let airline#extensions#lsp#open_lnum_symbol = '(L'
  " lsp close_lnum_symbol
  let airline#extensions#lsp#close_lnum_symbol = ')'
else
  " Enable lsp integration
  let g:airline#extensions#lsp#enabled = 0
endif

" ###################
" # Airline Neomake #
" ###################
" neomake <https://github.com/neomake/neomake>
if (exists('g:loaded_neomake') && g:loaded_neomake)
  " Enable neomake integration
  let g:airline#extensions#neomake#enabled = 1
  " neomake error_symbol
  let airline#extensions#neomake#error_symbol = 'E:'
  " neomake warning
  let airline#extensions#neomake#warning_symbol = 'W:'
else
  " Enable neomake integration
  let g:airline#extensions#neomake#enabled = 0
endif

" ####################
" # Airline NerdTree #
" ####################
" NerdTree <https://github.com/preservim/nerdtree.git>
" Airline displays the Nerdtree specific statusline (which can be configured
" using the |'NerdTreeStatusline'| variable (for details, see the help of
" NerdTree)
if (exists('g:loaded_nerd_tree') && g:loaded_nerd_tree)
  " Enable nerdtree's statusline integration
  let g:airline#extensions#nerdtree_statusline = 1
else
  " Disable nerdtree's statusline integration
  let g:airline#extensions#nerdtree_statusline = 0
endif

" ###################
" # Airline NrrwRgn #
" ###################
" NrrwRgn <https://github.com/chrisbra/NrrwRgn>
if (exists('g:loaded_nrrw_rgn') && g:loaded_nrrw_rgn)
  " Enable NrrwRgn integration
  let g:airline#extensions#nrrwrgn#enabled = 1
else
  " Disable NrrwRgn integration
  let g:airline#extensions#nrrwrgn#enabled = 0
endif

" ####################
" # Airline Nvim-lsp #
" ####################
" nvimlsp <https://github.com/neovim/nvim-lsp>
if (has('nvim') && exists('g:nvim_lsp') && g:nvim_lsp)
  " Enable nvimlsp integration
  let g:airline#extensions#nvimlsp#enabled = 1
  " nvimlsp error_symbol
  let airline#extensions#nvimlsp#error_symbol = 'E:'
  " nvimlsp warning
  let airline#extensions#nvimlsp#warning_symbol = 'W:'
else
  " Enable nvimlsp integration
  let g:airline#extensions#nvimlsp#enabled = 0
endif

" #####################
" # Airline Obsession #
" #####################
" vim-obsession <https://github.com/tpope/vim-obsession>
if (exists('g:loaded_obsession') && g:loaded_obsession)
  " Enable vim-obsession integration
  let g:airline#extensions#obsession#enabled = 1
  " Set marked window indicator string
  let g:airline#extensions#obsession#indicator_text = '$'
else
  " Disable vim-obsession integration
  let g:airline#extensions#obsession#enabled = 0
endif

" #####################
" # Airline Omnisharp #
" #####################
" OmniSharp <https://github.com/OmniSharp/omnisharp-vim>
if (exists('g:OmniSharp_loaded') && g:OmniSharp_loaded)
  " Enable OmniSharp integration
  let g:airline#extensions#omnisharp#enabled = 1
else
  " Enable OmniSharp integration
  let g:airline#extensions#omnisharp#enabled = 0
endif

" ##############
" # Airline Po #
" ##############
" This extension will display the currently translated, untranslated and fuzzy
" messages when editing translations (po files). Related plugin (not necessary)
" for this extension is po.vim from
" <http://www.vim.org/scripts/script.php?script_id=2530>
" It will be enabled if the `msgfmt` executable is available and one is editing
" files with the 'filetype' "po".
" Enable po integration
let g:airline#extensions#po#enabled = 0
" Truncate width names to a fixed length
let g:airline#extensions#po#displayed_limit = 0

" #################
" # Airline Poetv #
" #################
" poetv <https://github.com/petobens/poet-v>
if (exists('g:poetv_loaded') && g:poetv_loaded)
  " Enable poetv integration
  let g:airline#extensions#poetv#enabled = 1
else
  " Disable poetv integration
  let g:airline#extensions#poetv#enabled = 0
endif

" ######################
" # Airline Promptline #
" ######################
" promptline <https://github.com/edkolev/promptline.vim>
if !empty(glob("~/.promptline.sh"))
  " Enable promptline integration
  let g:airline#extensions#promptline#enabled = 1
  " Configure the path to the snapshot .sh file. Mandatory option.
  " The created file should be sourced by the shell on login
  let airline#extensions#promptline#snapshot_file = "~/.shell_prompt.sh"
  " in .bashrc/.zshrc
  " [ -f ~/.shell_prompt.sh ] && source ~/.shell_prompt.sh

  " Configure which mode colors should be used in prompt
  " ('normal', 'insert', 'visual', 'replace') default is 'normal'
  let airline#extensions#promptline#color_template = 'normal'
else
  " Enable promptline integration
  let g:airline#extensions#promptline#enabled = 0
endif

" ####################
" # Airline Quickfix #
" ####################
" The quickfix extension is a simple built-in extension which determines
" whether the buffer is a quickfix or location list buffer, and adjusts the
" title accordingly.
" Configure the title text for quickfix buffers
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
" Configure the title text for location list buffers
let g:airline#extensions#quickfix#location_text = 'Location'

" #######################
" # Airline SearchCount #
" #######################
" The searchcount extension supports the searchcount() function in Vim script.
" Enable/disable searchcount integration
let g:airline#extensions#searchcount#enabled = 1

" #####################
" # Airline Syntastic #
" #####################
" syntastic <https://github.com/vim-syntastic/syntastic>
if (exists('g:loaded_syntastic_plugin') && g:loaded_syntastic_plugin)
" Enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1
" Note: The recommendation from syntastic to modify the statusline directly
" does not apply, if you use vim-airline, since it will take care for you of
" adjusting the statusline.
" Syntastic error_symbol
let airline#extensions#syntastic#error_symbol = 'E:'
" Syntastic statusline error format (see |syntastic_stl_format|)
let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
" Syntastic warning
let airline#extensions#syntastic#warning_symbol = 'W:'
" Syntastic statusline warning format (see |syntastic_stl_format|)
let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'
else
  let g:airline#extensions#syntastic#enabled = 0
endif

" ###################
" # Airline Tabline #
" ###################
" Note: If you're using the ctrlspace tabline only the option marked with (c)
" are supported!

" Enable/disable enhanced tabline. (c)
let g:airline#extensions#tabline#enabled = 1

if g:airline#extensions#tabline#enabled
  " Enable/disable displaying open splits per tab (only when tabs are opened)
  let g:airline#extensions#tabline#show_splits = 1

  " Switch position of buffers and tabs on splited tabline (c)
  " (only supported for ctrlspace plugin).
  if exists('g:CtrlSpaceLoaded')
    let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
  else
    let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
  endif
  " Enable/disable displaying buffers with a single tab. (c)
  let g:airline#extensions#tabline#show_buffers = 1

  " Note: If you are using neovim (has('tablineat') = 1), then you can click
  " on the tabline with the left mouse button to switch to that buffer, and
  " with the middle mouse button to delete that buffer.

  " If you want to show the current active buffer like this:
  " ----------------------
  " buffer <buffer> buffer `
  "let g:airline#extensions#tabline#alt_sep = 1
  " Only makes sense, if g:airline_right_sep is not empty. (default: 0)

  " Enable/disable displaying tabs, regardless of number. (c)
  let g:airline#extensions#tabline#show_tabs = 1

  " Enable/disable displaying number of tabs in the right side (c)
  let g:airline#extensions#tabline#show_tab_count = 1

  " Note: Not displayed if the number of tabs is less than 1
  " Always displaying number of tabs in the right side (c)
  "let g:airline#extensions#tabline#show_tab_count = 2
  " Configure filename match rules to exclude from the tabline.
  "let g:airline#extensions#tabline#excludes = []

  " Enable/disable display preview window buffer in the tabline.
  let g:airline#extensions#tabline#exclude_preview = 1

  " Configure how numbers are displayed in tab mode.
  let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
  "let g:airline#extensions#tabline#tab_nr_type = 1 " Tab number
  "let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
  " Note: last option can be used to specify a different formatter for
  " displaying the numbers. By default tabline/formatter/tabnr.vim is used
  " The argument of that setting should either be a filename that exists
  " autoload/airline/extensions/tabline/formatter/ (without .vim extension)
  " and needs to provide a format() function. Alternatively you can use a
  " custom function name, that is defined e.g. in your .vimrc file. In any
  " case, the function needs to take 2 arguments, tab_nr_type and tabpage number.
  " For an example, have a look at the default tabline/formatter/tabnr.vim
  " Enable/disable displaying tab number in tabs mode.
  let g:airline#extensions#tabline#show_tab_nr = 1

  " Enable/disable displaying tab number in tabs mode for ctrlspace. (c)
  let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 0

  " Enable/disable displaying tab type (e.g. [buffers]/[tabs])
  let g:airline#extensions#tabline#show_tab_type = 1

  " Show buffer label at first position:
  let g:airline#extensions#tabline#buf_label_first = 1

  " Rename label for buffers (default: 'buffers') (c)
  "let g:airline#extensions#tabline#buffers_label = 'b'

  " Rename label for tabs (default: 'tabs') (c)
  "let g:airline#extensions#tabline#tabs_label = 't'

  " Change the symbol for skipped tabs/buffers (default '...')
  let g:airline#extensions#tabline#overflow_marker = '…'

  " Always show current tabpage/buffer first (default: 0)
  let airline#extensions#tabline#current_first = 1

  " Enable/disable displaying index of the buffer.

  " `buffer_idx_mode` allows 3 different modes to access buffers from the
  " tabline. When enabled, numbers will be displayed in the tabline and
  " mappings will be exposed to allow you to select a buffer directly.
  " In default mode, when the variable is 1 Up to 11 mappings will be exposed:

  let g:airline#extensions#tabline#buffer_idx_mode = 1
  "nmap <leader>1 <Plug>AirlineSelectTab1
  "nmap <leader>2 <Plug>AirlineSelectTab2
  "nmap <leader>3 <Plug>AirlineSelectTab3
  "nmap <leader>4 <Plug>AirlineSelectTab4
  "nmap <leader>5 <Plug>AirlineSelectTab5
  "nmap <leader>6 <Plug>AirlineSelectTab6
  "nmap <leader>7 <Plug>AirlineSelectTab7
  "nmap <leader>8 <Plug>AirlineSelectTab8
  "nmap <leader>9 <Plug>AirlineSelectTab9
  "nmap <leader>- <Plug>AirlineSelectPrevTab
  "nmap <leader>+ <Plug>AirlineSelectNextTab

  " In mode 2, (when the variable is 2) 89 mappings will be exposed:
  "let g:airline#extensions#tabline#buffer_idx_mode = 2
  "nmap <Leader>10 <Plug>AirlineSelectTab10
  "nmap <Leader>11 <Plug>AirlineSelectTab11
  "nmap <Leader>12 <Plug>AirlineSelectTab12
  "nmap <Leader>13 <Plug>AirlineSelectTab13
  "...
  "nmap <Leader>99 <Plug>AirlineSelectTab99
  " The <Plug>AirlineSelect<Prev/Next>Tab mapping handles counts as well,
  " so one can handle arbirtrarily number of buffers/tabs.

  " Mode 3 is exactly the same as mode 2, except the indexing
  " start at 01, exposing 99 mappings:
  "let g:airline#extensions#tabline#buffer_idx_mode = 3
  "nmap <Leader>01 <Plug>AirlineSelectTab01
  "nmap <Leader>02 <Plug>AirlineSelectTab02
  "nmap <Leader>03 <Plug>AirlineSelectTab03
  "...
  "nmap <Leader>99 <Plug>AirlineSelectTab99
  " This matches that of the numbering scheme of |:buffers|,
  " letting `<Plug>AirlineSelectTab67` to reference buffer 67.

  " Note: To avoid ambiguity, there won't be
  " <Plug>AirlineSelectTab1 - <Plug>AirlineSelectTab9 maps in mode 2 and 3.

  " Note: Mappings will be ignored for filetypes that match
  " `g:airline#extensions#tabline#keymap_ignored_filetypes`.

  " Note: In buffer_idx_mode these mappings won't change  the current tab, but
  " switch to the buffer `visible` in the current tab. If you want to switch to
  " a buffer, that is not visible use the `AirlineSelectPrev/NextTab`
  " mapping (it supports using a count).
  " Use |gt| for switching tabs.
  " In tabmode, those mappings will be exposed as well and will switch
  " to the specified tab.
  " Define the set of filetypes which are ignored for the selectTab keymappings:
  "let g:airline#extensions#tabline#keymap_ignored_filetypes =
  "      \ ['vimfiler', 'nerdtree']

  " Change the display format of the buffer index
  "let g:airline#extensions#tabline#buffer_idx_format = {
  "      \ '0': '0 ',
  "      \ '1': '1 ',
  "      \ '2': '2 ',
  "      \ '3': '3 ',
  "      \ '4': '4 ',
  "      \ '5': '5 ',
  "      \ '6': '6 ',
  "      \ '7': '7 ',
  "      \ '8': '8 ',
  "      \ '9': '9 '
  "      \}
  " Defines the name of a formatter for how buffer names are displayed. (c)
  let g:airline#extensions#tabline#formatter = 'default'

  " Here is how you can define a 'foo' formatter:
  " create a file in the dir autoload/airline/extensions/tabline/formatters/
  " called foo.vim
  "function! airline#extensions#tabline#formatters#foo#format(bufnr, buffers)
  "  return fnamemodify(bufname(a:bufnr), ':t')
  "endfunction
  "let g:airline#extensions#tabline#formatter = 'foo'

  " Note: the following variables are used by the 'default' formatter.
  " When no disambiguation is needed, both 'unique_tail_improved' and
  " 'unique_tail' delegate formatting to 'default', so these variables also
  " control rendering of unique filenames when using these formatters.

  " Configure whether buffer numbers should be shown.
  "let g:airline#extensions#tabline#buffer_nr_show = 0
  " Configure how buffer numbers should be formatted with |printf()|.
  "let g:airline#extensions#tabline#buffer_nr_format = '%s: '
  " Configure the formatting of filenames (see |filename-modifiers|).
  "let g:airline#extensions#tabline#fnamemod = ':p:.'
  " Configure collapsing parent directories in buffer name.
  "let g:airline#extensions#tabline#fnamecollapse = 1
  " Configure truncating non-active buffer names to specified length.
  "let g:airline#extensions#tabline#fnametruncate = 0

  " The `unique_tail` algorithm will display the tail of the filename, unless
  " there is another file of the same name, in which it will display it along
  " with the containing parent directory.
  let g:airline#extensions#tabline#formatter = 'unique_tail'

  " The following variables are also used by `unique_tail` formatter.
  " the meanings are the same as the ones in default formatter.
  "let g:airline#extensions#tabline#fnamemod = ':p:.'
  "let g:airline#extensions#tabline#fnamecollapse = 1

  " The `unique_tail_improved` - another algorithm, that will smartly
  " uniquify buffers names with similar filename, suppressing common
  " parts of paths.
  "let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

  " The `short_path` - is a simple formatter, that will show the filename,
  " with its extension, and the first parent directory only.
  "
  " e.g. /home/user/project/subdir/file.ext -> subdir/file.ext
  "let g:airline#extensions#tabline#formatter = 'short_path'

  " Defines the customized format() function to display tab title in tab mode.
  "let g:airline#extensions#tabline#tabtitle_formatter = 'MyTabTitleFormatter'
  " Then define the MyTabTitleFormatter() function in your vimrc.
  "function MyTabTitleFormatter(n)
  "  let buflist = tabpagebuflist(a:n)
  "  let winnr = tabpagewinnr(a:n)
  "  let bufnr = buflist[winnr - 1]
  "  let winid = win_getid(winnr, a:n)
  "  let title = bufname(bufnr)
  "
  "  if empty(title)
  "    if getqflist({'qfbufnr' : 0}).qfbufnr == bufnr
  "      let title = '[Quickfix List]'
  "    elseif winid && getloclist(winid, {'qfbufnr' : 0}).qfbufnr == bufnr
  "      let title = '[Location List]'
  "    else
  "      let title = '[No Name]'
  "    endif
  "  endif
  "
  "  return
  "  title
  "endfunction

  " Configure the minimum number of buffers needed to show the tabline.
  let g:airline#extensions#tabline#buffer_min_count = 2
  " Note: this setting only applies to a single tab and
  " when `show_buffers` is true.

  " Configure the minimum number of tabs needed to show the tabline.
  let g:airline#extensions#tabline#tab_min_count = 2
  " Note: this setting only applies when `show_buffers` is false.

  " Configure separators for the tabline only.
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''

  " Configure whether close button should be shown:
  let g:airline#extensions#tabline#show_close_button = 0

  " Configure symbol used to represent close button
  "let g:airline#extensions#tabline#close_symbol = 'X'

  " Configure pattern to be ignored on BufAdd autocommand
  " Fixes unnecessary redraw, when e.g. opening Gundo window
  "let airline#extensions#tabline#ignore_bufadd_pat = \
  "                                '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'

  " Note: Enabling this extension will modify 'showtabline' and 'guioptions'.

  " Enable Refresh of tabline buffers on |BufAdd| autocommands
  " (set this to one, if you note 'AirlineTablineRefresh', however,
  " this won't update airline on |:badd| commands)
  "let airline#extensions#tabline#disable_refresh = 0

  " Preserve windows when closing a buffer from the bufferline
  " (neovim specific, only works with buffers and not real tabs, default:0)
  "let airline#extensions#tabline#middle_click_preserves_windows = 0
endif

" #################
" # Airline Taboo #
" #################
" taboo.vim <https://github.com/gcmt/taboo.vim>
" Enable/disable taboo.vim integration
if (exists('g:loaded_taboo') && g:loaded_taboo)
  let g:airline#extensions#taboo#enabled = 1
else
  let g:airline#extensions#taboo#enabled = 0
endif

" ################
" # Airline Term #
" ################
" Vim-Airline comes with a small extension for the styling the builtin
" |terminal|. This requires Nvim or a Vim compiled with terminal support.
" Enable/disable terminal integration (default: 1)
let g:airline#extensions#term#enabled = 1

" #################
" # Airline Tabws #
" #################
" vim-tabws <https://github.com/s1341/vim-tabws>
" Enable/disable tabws integration >
if (exists('g:tabws_loaded') && g:tabws_loaded)
  let g:airline#extensions#tabws#enabled = 1
else
  let g:airline#extensions#tabws#enabled = 0
endif

" ##################
" # Airline Tagbar #
" ##################
" tagbar <https://github.com/majutsushi/tagbar>
if (exists('g:loaded_tagbar') && g:loaded_tagbar)
  " Enable tagbar integration
  let g:airline#extensions#tagbar#enabled = 1
  " Change how tags are displayed (:help tagbar-statusline)
  let g:airline#extensions#tagbar#flags = '' " (default)
  "let g:airline#extensions#tagbar#flags = 'f'
  "let g:airline#extensions#tagbar#flags = 's'
  "let g:airline#extensions#tagbar#flags = 'p'
else
  " Disable tagbar integration
  let g:airline#extensions#tagbar#enabled = 0
endif

" ####################
" # Airline TmuxLine #
" ####################
" tmuxline <https://github.com/edkolev/tmuxline.vim>
if !strlen($TMUX) || !executable('tmux')
  " Enable tmuxline integration
  let g:airline#extensions#tmuxline#enabled = 1

  " Configure which mode colors should be used in tmux statusline
  let airline#extensions#tmuxline#color_template = 'normal' " (default)
  "let airline#extensions#tmuxline#color_template = 'insert'
  "let airline#extensions#tmuxline#color_template = 'visual'
  "let airline#extensions#tmuxline#color_template = 'replace'

  " If specified, setting this option will trigger writing to the file whenever
  " the airline theme is applied, i.e. when :AirlineTheme is executed and on
  " vim startup
  "let airline#extensions#tmuxline#snapshot_file =
  "      \  "~/.tmux-statusline-colors.conf"
else
  " Disable tmuxline integration
  let g:airline#extensions#tmuxline#enabled = 0
endif

" #################
" # Airline Unite #
" #################
" Unite <https://github.com/Shougo/unite.vim>
if (exists('g:loaded_unite') && g:loaded_unite)
  " Enable unite integration
  let g:airline#extensions#unite#enabled = 1
else
  " Disable unite integration
  let g:airline#extensions#unite#enabled = 0
endif

" ###################
" # Airline Vimagit #
" ###################
" vimagit <https://github.com/jreybert/vimagit>
if (exists('g:loaded_magit') && g:loaded_magit)
  " Enable vimagit integration
  let g:airline#extensions#vimagit#enabled = 1
else
  " Disable vimagit integration
  let g:airline#extensions#vimagit#enabled = 0
endif

" #####################
" # Airline Vim-CMake #
" #####################
" Vim-CMake <https://github.com/cdelledonne/vim-cmake>
if (exists('g:loaded_cmake_plugin') && g:loaded_cmake_plugin)
" Enable Vim-CMake integration
  let g:airline#extensions#vimcmake#enabled = 1
else
  " Disable Vim-CMake integration
  let g:airline#extensions#vimcmake#enabled = 0
endif

" ##################
" # Airline Vimtex #
" ##################
" vimtex <https://github.com/lervag/vimtex>
" Shows the current file's vimtex related info.
if (exists('g:vimtex_enabled') && g:vimtex_enabled)
  " Enable vimtex integration
  let g:airline#extensions#vimtex#enabled = 1
  " Left and right delimiters (shown only when status string is not empty)
  let g:airline#extensions#vimtex#left = "{"
  let g:airline#extensions#vimtex#right = "}"
  " State indicators:
  " The current tex file is the main project file (nothing is shown by default)
  let g:airline#extensions#vimtex#main = ""
  " The current tex file is a subfile of the project and the compilation
  " is set for the main file
  let g:airline#extensions#vimtex#sub_main = "m"
  " The current tex file is a subfile of the project and the compilation
  " is set for this subfile
  let g:airline#extensions#vimtex#sub_local = "l"
  " Single compilation is running
  let g:airline#extensions#vimtex#compiled = "c₁"
  " Continuous compilation is running
  let g:airline#extensions#vimtex#continuous = "c"
  " Viewer is opened
  let g:airline#extensions#vimtex#viewer = "v"
else
  " Disable vimtex integration
  let g:airline#extensions#vimtex#enabled = 0
endif

" ######################
" # Airline Virtualenv #
" ######################
" virtualenv <https://github.com/jmcantrell/vim-virtualenv>
if (exists('g:virtualenv_loaded') && g:virtualenv_loaded)
  " Enable virtualenv integration
  let g:airline#extensions#virtualenv#enabled = 1
else
  " Disable virtualenv integration
  let g:airline#extensions#virtualenv#enabled = 0
endif

" #################
" # Airline Vista #
" #################
" vista.vim <https://github.com/liuchengxu/vista.vim>
if (exists('g:loaded_vista') && g:loaded_vista)
  " Enable vista integration
  let g:airline#extensions#vista#enabled = 1
else
  " Disable vista integration
  let g:airline#extensions#vista#enabled = 0
endif

" ######################
" # Airline Whitespace #
" ######################
" Enable detection of whitespace errors.
let g:airline#extensions#whitespace#enabled = 1

if g:airline#extensions#whitespace#enabled
  " Disable detection of whitespace errors.
  " useful to call for particular file types (e.g., in "ftplugin/*")
  "silent! call airline#extensions#whitespace#disable()

  " Customize the type of mixed indent checking to perform.
  " must be all spaces or all tabs before the first non-whitespace
  " character
  let g:airline#extensions#whitespace#mixed_indent_algo = 0 " (default)

  " Certain number of spaces are allowed after tabs, but not in between
  " this algorithm works well for /* */ style comments in a tab-indented file
  let g:airline#extensions#whitespace#mixed_indent_algo = 1

  " Spaces are allowed after tabs, but not in between
  " this algorithm works well with programming styles that use tabs for
  " indentation and spaces for alignment
  let g:airline#extensions#whitespace#mixed_indent_algo = 2

  " Customize the whitespace symbol.
  let g:airline#extensions#whitespace#symbol = '!'

  " Configure which whitespace checks to enable.
  "  indent: mixed indent within a line
  "  long:   overlong lines
  "  trailing: trailing whitespace
  "  mixed-indent-file: different indentation in different lines
  " conflicts: checks for conflict markers
  let g:airline#extensions#whitespace#checks = 
        \  [ 'indent', 'trailing', 'long', 'mixed-indent-file', 'conflicts' ]
  " This can also be configured for an individual buffer
  let b:airline_whitespace_checks = 
        \  [ 'indent', 'trailing', 'long', 'mixed-indent-file', 'conflicts' ]

  " Configure the max number of lines where whitespace checking is enabled.
  let g:airline#extensions#whitespace#max_lines = 20000

  " Configure whether a message should be displayed.
  let g:airline#extensions#whitespace#show_message = 1

  " Configure the formatting of the warning messages.
  let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
  let g:airline#extensions#whitespace#mixed_indent_format =
        \ 'mixed-indent[%s]'
  let g:airline#extensions#whitespace#long_format = 'long[%s]'
  let g:airline#extensions#whitespace#mixed_indent_file_format = 
        \ 'mix-indent-file[%s]'
  let g:airline#extensions#whitespace#conflicts_format = 'conflicts[%s]'

  " Configure custom trailing whitespace regexp rule
  " let g:airline#extensions#whitespace#trailing_regexp = '\s$'

  " Configure, which filetypes have special treatment of /* */ comments,
  " matters for mix-indent-file algorithm:
  "let airline#extensions#c_like_langs =
  "      \ ['arduino', 'c', 'cpp', 'cuda', 'go', 'javascript', 'ld', 'php']

  " Disable whitespace checking for an individual buffer
  " Checking is enabled by default because b:airline_whitespace_disabled
  " is by default not defined:
  " unlet b:airline_whitespace_disabled

  " If b:airline_whitespace_disabled is defined and is non-zero for a buffer,
  " then whitespace checking will be disabled for that buffer; for example:
  " let b:airline_whitespace_disabled = 1

  " Disable specific whitespace checks for individual filetypes
  " The global variable g:airline#extensions#whitespace#skip_indent_check_ft
  " defines what whitespaces checks to skip per filetype.
  " The list can contain any of the available checks,
  " (see above at g:airline#extensions#whitespace#checks)
  " To disable mixed-indent-file for go files use: 
  " let g:airline#extensions#whitespace#skip_indent_check_ft = 
  "      \ {'go': ['mixed-indent-file']}
endif

" ######################
" # Airline WindowSwap #
" ######################
" vim-windowswap <https://github.com/wesQ3/vim-windowswap>
if exists('g:windowswap_map_keys')
  " Enable vim-windowswap integration >
  let g:airline#extensions#windowswap#enabled = 1

  " Set marked window indicator string >
  let g:airline#extensions#windowswap#indicator_text = 'WS'
else
  " Disable vim-windowswap integration
  let g:airline#extensions#windowswap#enabled = 0
endif

" #####################
" # Airline WordCount #
" #####################
" Enable word counting of the document/visual selection
let g:airline#extensions#wordcount#enabled = 1

if g:airline#extensions#wordcount#enabled == 1
  " Set list of filetypes for which word counting is enabled:
  " The default value matches filetypes typically used for documentation
  " such as markdown and help files. Default is:
  let g:airline#extensions#wordcount#filetypes =
        \ ['asciidoc', 'help', 'mail', 'markdown', 'org', 'plaintex', 'rst', 'tex', 'text']
  " Use ['all'] to enable for all filetypes.

  " Defines the name of a formatter for word count will be displayed:
  " The default will try to guess LC_NUMERIC and format number accordingly
  " e.g. 1,042 in English and 1.042 in German locale
  let g:airline#extensions#wordcount#formatter = 'default'

  " Enable reading time formatter
  let g:airline#extensions#wordcount#enabled = 'readingtime'

  " Here is how you can define a 'foo' formatter:
  " create a file in autoload/airline/extensions/wordcount/formatters/
  " called foo.vim, which defines the following function signature:
  " function! airline#extensions#wordcount#formatters#foo#to_string(wordcount)
  "   return a:wordcount == 0 ? 'NONE' :
  "        \ a:wordcount > 100 ? 'okay' : 'not enough')
  " endfunction
  " let g:airline#extensions#wordline#formatter = 'foo'
  " The function is passed the word count of the document or visual selection

  " Defines how to display the wordcount statistics for the default formatter
  " Defaults are below.  If fmt_short isn't defined, fmt is used.
  " '%s' will be substituted by the word count " fmt_short is displayed when window
  " width is less than 80
  let g:airline#extensions#wordcount#formatter#default#fmt = '%s words'
  let g:airline#extensions#wordcount#formatter#default#fmt_short = '%sW'
endif

" #####################
" # Airline XkbLayout #
" #####################
" The vim-xkblayout extension will only be enabled, if the global variable
" `g:XkbSwitchLib` is set. It should be set to a C library that will be called
" using |libcall()| with the function name `Xkb_Switch_getXkbLayout`. For
" details on how to use it, see e.g. <https://github.com/ierton/xkb-switch>

" Enable/disable vim-xkblayout extension
let g:airline#extensions#xkblayout#enabled = 1

" Redefine keyboard layout short codes to shown in status
"let g:airline#extensions#xkblayout#short_codes =
"      \  {'Russian-Phonetic': 'RU', 'ABC': 'EN'}
"'RU' instead of system 'Russian-Phonetic',
"'EN' instead of system 'ABC'.
"Default: >
"let g:airline#extensions#xkblayout#short_codes =
"      \ {'2SetKorean': 'KR', 'Chinese': 'CN', 'Japanese': 'JP'}

" Define path to the backend switcher library Linux
" (Install https://github.com/ierton/xkb-switch):
"let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'

" macOS (Install https://github.com/vovkasm/input-source-switcher):
"let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

" ####################
" # Airline XtabLine #
" ####################
" xtabline <https://github.com/mg979/vim-xtabline>
" This is a simplified and stand-alone version of the original extension.
" The bigger version adds fzf commands, session management, tab bookmarks, and
" features that you may not need. They both require |vim-airline| anyway.

" Main features and default mappings of this extension are:

" Tab cwd persistance, also across sessions if vim-obsession is being used.

" Buffer filtering in the tabline: only buffers whose path is within the tab
" cwd will be shown in the tabline.

" Toggle tabs/buffer view on the tabline, toggle buffer filtering:
nmap <F5>          <Plug>XTablineToggleTabs
nmap <leader><F5>  <Plug>XTablineToggleFiltering

" Reopen last closed tab, restoring its cwd and buffers:
nmap <leader>tr    <Plug>XTablineReopen <SID>ReopenLastTab

" Switch among filtered buffers (accepts count):
nmap ]l            <Plug>XTablineNextBuffer
nmap [l            <Plug>XTablinePrevBuffer

" Go to N buffer (a count must be provided):
nmap <BS>          <Plug>XTablineSelectBuffer

" Alternative command if count is not provided:
let g:xtabline_alt_action = "buffer #"

" Note: Make sure to also enable
" let g:airline#extensions#tabline#show_buffers = 1
" otherwise the tabline might not actually be displayed correctly
" (see |airline-tabline|)

" Exclude fugitive logs and files that share part of the real * buffer path:
let g:xtabline_include_previews = 0 " (default 1)

" Activate fast cwd selection mappings:
let g:xtabline_cd_commands = 1 " (default 0)

" Default mappings for them are:
map <leader>cdc       <Plug>XTablineCdCurrent
map <leader>cdd       <Plug>XTablineCdDown1
map <leader>cd2       <Plug>XTablineCdDown2
map <leader>cd3       <Plug>XTablineCdDown3
map <leader>cdh       <Plug>XTablineCdHome

"Note: if you don't use these mappings and change the cwd, the tabline won't
" be updated automatically. Either re-enter the tab or press <F5> two times.

" Here are some easier mappings to change tab buffer:
"nnoremap <silent> <expr> <Right> v:count ?
"      \ airline#extensions#tabline#xtabline#next_buffer(v:count) : "\<Right>"
"nnoremap <silent> <expr> <Left>  v:count ?
"      \ airline#extensions#tabline#xtabline#prev_buffer(v:count) : "\<Left>"

" ###############
" # Airline YCM #
" ###############
" YouCompleteMe <https://github.com/ycm-core/YouCompleteMe>

" Shows number of errors and warnings in the current file detected by YCM.
if (exists('g:loaded_youcompleteme') && g:loaded_youcompleteme)
  " Enable YCM integration
  let g:airline#extensions#ycm#enabled = 1
  " Set error count prefix
  let g:airline#extensions#ycm#error_symbol = 'E:'
  " Set warning count prefix
  let g:airline#extensions#ycm#warning_symbol = 'W:'
else
  " Disable YCM integration
  let g:airline#extensions#ycm#enabled = 0
endif

" ######################
" # Airline ZoomWinTab #
" ######################
" zoomwintab <https://github.com/troydm/zoomwintab.vim>
if (exists('g:zoomwintab_remap') && g:zoomwintab_remap)
  " Enable zoomwintab integration
  let g:airline#extensions#zoomwintab#enabled = 1

  " Zoomwintab's zoomin symbol
  let g:airline#extensions#zoomwintab#status_zoomed_in = 'Currently Zoomed In'
  " default: '> Zoomed'

  " Zoomwintab's zoomout symbol
  let g:airline#extensions#zoomwintab#status_zoomed_out ='Currently Zoomed Out'
  " default: ''
else
  " Disable zoomwintab integration
  let g:airline#extensions#zoomwintab#enabled = 0
endif
