"#----------------------------------------||-------------------------------------#
"#          _      _      _    ___  __    ||                                     #
"#         | |    | |    | |  |__ \/_ |   || File:                               #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/emmet-conf.vim   #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                     #
"#    | |__| |  __/ |  __/   < / /_ | |   ||  Configuration file for emmet-vim   #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                     #
"#________________________________________||_____________________________________#

" If set to 1, enable HTML 5 support:
"   - use > instead of />:
"     <meta /> becomes <meta>
"   - omit some HTML 4 attributes:
"     <style type="text/css"> becomes <style>
"   - add attributes without values:
"     <input checked="checked" /> becomes <input checked>
" Default: 1
let g:emmet_html5 = 1

" |Dictionary| used by |<C-y>i|.
" Dictionary keys is path relative to http server root.
" Dictionary values is local file system absolute path
" to http server root directory.
" Default: {}
let g:emmet_docroot = {}

" Command to download web pages.
" Used by |emmet-html-syntax-item-numbering-base|,
" |emmet-html-syntax-item-numbering| and
" |emmet-lorem-ipsum| (for japanese).
" Default: 'curl -s -L -A Mozilla/5.0'
let g:emmet_curl_command = 'curl -s -L -A Mozilla/5.0'

" Use omni complete function, provided by Emmet.
" When user run |:EmmetInstall|,
" following command will be executed:
"   setlocal omnifunc=emmet#completeTag
" 
" let g:user_emmet_complete_tag

" Leading keys to run Emmet functions.
" |:EmmetInstall| will map Emmet keys to current buffer.
" See |emmet-customize-key-mappings|.
" Default: '<C-y>'.
let g:user_emmet_leader_key = '<C-y>'

" If set to 1, Emmet will create global mappings.
" Set to 0 to prevent these.
" Default: 1
let g:user_emmet_install_global = 1

" If set to 1, Emmet will create command |:Emmet|.
" Set to 0 to prevent these.
" Default: 1
let g:user_emmet_install_command = 1

" |Dictionary|, which contains user settings.
" User settings will override default settings.
" Default settings can be found in file
" 'emmet/autoload/emmet.vim';
" search for variable 's:emmet_settings'.
" Dictionary has the same structure
" as 's:emmet_settings'.
" See also: |emmet-indent-size|,
" |emmet-define-tags-behavior|, |emmet-custom-snippets|
" let g:user_emmet_settings

" String. Choose modes, in which
" Emmet mappings will be created.
"   'n' - normal mode.
"   'i' - insert mode.
"   'v' - visual mode.
" Default: 'a' - all modes.
