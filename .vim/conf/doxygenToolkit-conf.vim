"#----------------------------------------||--------------------------------------------#
"#          _      _      _    ___  __    ||                                            #
"#         | |    | |    | |  |__ \/_ |   || File:                                      #
"#         | | ___| | ___| | __  ) || |   ||    $HOME/.vim/conf/doxygenToolkit-conf.vim #
"#     _   | |/ _ \ |/ _ \ |/ / / / | |   ||                                            #
"#    | |__| |  __/ |  __/   < / /_ | |   || Config file for DoxygenToolkit             #
"#     \____/ \___|_|\___|_|\_\____||_|   ||                                            #
"#________________________________________||____________________________________________#

" Not much comments in this file as variable names are quite clear

" Licence author name
let s:license_author = "Jerome Lekieffre"
let s:license_type = "MIT"

" Common standard constants
let g:DoxygenToolkit_briefTag_pre = "@brief "
let g:DoxygenToolkit_briefTag_post = ""
let g:DoxygenToolkit_templateParamTag_pre = "@tparam "
let g:DoxygenToolkit_templateParamTag_post = ""
let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_paramTag_post = ""
let g:DoxygenToolkit_returnTag = "@return "
let g:DoxygenToolkit_throwTag_pre = "@throw " " @exception is also valid
let g:DoxygenToolkit_throwTag_post = ""
let g:DoxygenToolkit_blockHeader = ""
let g:DoxygenToolkit_blockFooter = ""
let g:DoxygenToolkit_fileTag = "@file "
let g:DoxygenToolkit_authorTag = "@author "
let g:DoxygenToolkit_dateTag = "@date "
let g:DoxygenToolkit_versionTag = "@version "
let g:DoxygenToolkit_undocTag = "DOX_SKIP_BLOCK"
let g:DoxygenToolkit_blockTag = "@name "
let g:DoxygenToolkit_classTag = "@class "
let g:DoxygenToolkit_cinoptions = "c1C1"
let g:DoxygenToolkit_startCommentTag = "/** "
let g:DoxygenToolkit_startCommentBlock = "/* "
let g:DoxygenToolkit_interCommentTag = "* "
let g:DoxygenToolkit_interCommentBlock = "* "
let g:DoxygenToolkit_endCommentTag = "*/"
let g:DoxygenToolkit_endCommentBlock = "*/"
let g:DoxygenToolkit_commentType = "C"

"MIT Licence:
if (s:license_type == "MIT")
  let s:license = "Copyright (c) " . strftime('%Y')
  let s:license = s:license . " "
  let s:license = s:license . s:license_author
  let s:license = s:license . "\<enter>\<enter>"
  let s:license = s:license . "Permission is hereby granted, free of charge, to any person obtaining a copy\<enter>"
  let s:license = s:license . "of this software and associated documentation files (the \"Software\"), to deal\<enter>"
  let s:license = s:license . "in the Software without restriction, including without limitation the rights\<enter>"
  let s:license = s:license . "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\<enter>"
  let s:license = s:license . "copies of the Software, and to permit persons to whom the Software is\<enter>"
  let s:license = s:license . "furnished to do so, subject to the following conditions:\<enter>\<enter>"
  let s:license = s:license . "The above copyright notice and this permission notice shall be included in all\<enter>"
  let s:license = s:license . "copies or substantial portions of the Software.\<enter>\<enter>"
  let s:license = s:license . "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\<enter>"
  let s:license = s:license . "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\<enter>"
  let s:license = s:license . "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\<enter>"
  let s:license = s:license . "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\<enter>"
  let s:license = s:license . "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\<enter>"
  let s:license = s:license . "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\<enter>"
  let s:license = s:license . "SOFTWARE.\<enter>"
  let g:DoxygenToolkit_licenseTag = s:license
endif

" Compact documentation
" /**
"  * \brief foo      --->    /** \brief foo */
"  */
let g:DoxygenToolkit_compactOneLineDoc = "no"
" /**
"  * \brief foo             /**
"  *                         * \brief foo
"  * \param bar      --->    * \param bar
"  *                         * \return
"  * \return                 */
"  */
let g:DoxygenToolkit_compactDoc = "yes"

" Necessary '\<' and '\>' will be added to each item of the list.
" For example: ['template', 'explicit', 'inline', 'static', 'virtual',
" 'void\([[:blank:]]*\*\)\@!', 'const', 'volatile', 'struct', 'extern']
" (This is the default list)
let g:DoxygenToolkit_ignoreForReturn = []

" Maximum number of lines to check for function parameters
let g:DoxygenToolkit_maxFunctionProtoLines = 10

" Add name of function/class/struct... after pre brief tag if you want
let g:DoxygenToolkit_briefTag_className = "no"
let g:DoxygenToolkit_briefTag_structName = "no"
let g:DoxygenToolkit_briefTag_enumName = "no"
let g:DoxygenToolkit_briefTag_namespaceName = "no"
let g:DoxygenToolkit_briefTag_funcName = "no"

" Keep empty line (if any) between comment and function/class/...
let g:DoxygenToolkit_keepEmptyLineAfterComment = "no"

" PYTHON specific
"""""""""""""""""
" Remove automatically self parameter from function to avoid its documantation
let g:DoxygenToolkit_python_autoRemoveSelfParam = "yes"
" Consider functions as if they always return something (default: yes)
let g:DoxygenToolkit_python_autoFunctionReturn = "yes"
