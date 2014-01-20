
" Environment Specific Overrides "{{{
" Allow or disallow certain features based on current terminal emulator or 
" environment.

let s:terminal_italic = has("gui_running") || $TERM =~ 'rxvt\|gnome-term'

" }}}

" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
highlight clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "solarized"

let s:vmode       = has('gui_running') ? "gui" : "cterm"

let s:base03      = "#002b36"
let s:base02      = "#073642"
let s:base01      = "#586e75"
let s:base00      = "#657b83"
let s:base0       = "#839496"
let s:base1       = "#93a1a1"
let s:base2       = "#eee8d5"
let s:base3       = "#fdf6e3"
let s:yellow      = "#b58900"
let s:orange      = "#cb4b16"
let s:red         = "#dc322f"
let s:magenta     = "#d33682"
let s:violet      = "#6c71c4"
let s:blue        = "#268bd2"
let s:cyan        = "#2aa198"
"let s:green       = "#859900" "original
let s:green       = "#719e07" "experimental

" let s:base03      = "8"
" let s:base02      = "0"
" let s:base01      = "10"
" let s:base00      = "11"
" let s:base0       = "12"
" let s:base1       = "14"
" let s:base2       = "7"
" let s:base3       = "15"
" let s:yellow      = "3"
" let s:orange      = "9"
" let s:red         = "1"
" let s:magenta     = "5"
" let s:violet      = "13"
" let s:blue        = "4"
" let s:cyan        = "6"
" let s:green       = "2"

let s:back        = s:base03
"}}}

" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
let s:none            = "NONE"
let s:none            = "NONE"
let s:t_none          = "NONE"
let s:n               = "NONE"
let s:c               = ",undercurl"
let s:r               = ",reverse"
let s:s               = ",standout"
let s:ou              = ""
let s:ob              = ""
let s:i = s:terminal_italic ? ",italic" : ""
let s:u           = '' " ",underline"
if (&t_Co == 8 )
    let s:b = ""
    let s:bb = ",bold"
else
    let s:b = ",bold"
    let s:bb = ""
endif
"}}}

" Highlighting primitives"{{{
" ---------------------------------------------------------------------

let s:bg_none      = ' ' .s:vmode . "bg=".s:none
let s:bg_back      = ' ' .s:vmode . "bg=".s:back
let s:bg_base03    = ' ' .s:vmode . "bg=".s:base03
let s:bg_base02    = ' ' .s:vmode . "bg=".s:base02
let s:bg_base01    = ' ' .s:vmode . "bg=".s:base01
let s:bg_base00    = ' ' .s:vmode . "bg=".s:base00
let s:bg_base0     = ' ' .s:vmode . "bg=".s:base0
let s:bg_base1     = ' ' .s:vmode . "bg=".s:base1
let s:bg_base2     = ' ' .s:vmode . "bg=".s:base2
let s:bg_base3     = ' ' .s:vmode . "bg=".s:base3
let s:bg_green     = ' ' .s:vmode . "bg=".s:green
let s:bg_yellow    = ' ' .s:vmode . "bg=".s:yellow
let s:bg_orange    = ' ' .s:vmode . "bg=".s:orange
let s:bg_red       = ' ' .s:vmode . "bg=".s:red
let s:bg_magenta   = ' ' .s:vmode . "bg=".s:magenta
let s:bg_violet    = ' ' .s:vmode . "bg=".s:violet
let s:bg_blue      = ' ' .s:vmode . "bg=".s:blue
let s:bg_cyan      = ' ' .s:vmode . "bg=".s:cyan
let s:fg_none      = ' ' .s:vmode . "fg=".s:none
let s:fg_back      = ' ' .s:vmode . "fg=".s:back
let s:fg_base03    = ' ' .s:vmode . "fg=".s:base03
let s:fg_base02    = ' ' .s:vmode . "fg=".s:base02
let s:fg_base01    = ' ' .s:vmode . "fg=".s:base01
let s:fg_base00    = ' ' .s:vmode . "fg=".s:base00
let s:fg_base0     = ' ' .s:vmode . "fg=".s:base0
let s:fg_base1     = ' ' .s:vmode . "fg=".s:base1
let s:fg_base2     = ' ' .s:vmode . "fg=".s:base2
let s:fg_base3     = ' ' .s:vmode . "fg=".s:base3
let s:fg_green     = ' ' .s:vmode . "fg=".s:green
let s:fg_yellow    = ' ' .s:vmode . "fg=".s:yellow
let s:fg_orange    = ' ' .s:vmode . "fg=".s:orange
let s:fg_red       = ' ' .s:vmode . "fg=".s:red
let s:fg_magenta   = ' ' .s:vmode . "fg=".s:magenta
let s:fg_violet    = ' ' .s:vmode . "fg=".s:violet
let s:fg_blue      = ' ' .s:vmode . "fg=".s:blue
let s:fg_cyan      = ' ' .s:vmode . "fg=".s:cyan

let s:fmt_none     = ' ' .s:vmode . "=NONE".          " term=NONE"
let s:fmt_bold     = ' ' .s:vmode . "=NONE".s:b.      " term=NONE".s:b
let s:fmt_bldi     = ' ' .s:vmode . "=NONE".s:b.      " term=NONE".s:b
let s:fmt_undr     = ' ' .s:vmode . "=NONE".s:u.      " term=NONE".s:u
let s:fmt_undb     = ' ' .s:vmode . "=NONE".s:u.s:b.  " term=NONE".s:u.s:b
let s:fmt_undi     = ' ' .s:vmode . "=NONE".s:u.      " term=NONE".s:u
let s:fmt_uopt     = ' ' .s:vmode . "=NONE".s:ou.     " term=NONE".s:ou
let s:fmt_curl     = ' ' .s:vmode . "=NONE".s:c.      " term=NONE".s:c
let s:fmt_ital     = ' ' .s:vmode . "=NONE".s:i.      " term=NONE".s:i
let s:fmt_stnd     = ' ' .s:vmode . "=NONE".s:s.      " term=NONE".s:s
let s:fmt_revr     = ' ' .s:vmode . "=NONE".s:r.      " term=NONE".s:r
let s:fmt_revb     = ' ' .s:vmode . "=NONE".s:r.s:b.  " term=NONE".s:r.s:b
let s:fmt_revbb    = ' ' .s:vmode . "=NONE".s:r.s:bb.    " term=NONE".s:r.s:bb
let s:fmt_revbbu   = ' ' .s:vmode . "=NONE".s:r.s:bb.s:u." term=NONE".s:r.s:bb.s:u

if has("gui_running")
	let s:sp_none      = ' guisp='.s:none
	let s:sp_back      = ' guisp='.s:back
	let s:sp_base03    = ' guisp='.s:base03
	let s:sp_base02    = ' guisp='.s:base02
	let s:sp_base01    = ' guisp='.s:base01
	let s:sp_base00    = ' guisp='.s:base00
	let s:sp_base0     = ' guisp='.s:base0
	let s:sp_base1     = ' guisp='.s:base1
	let s:sp_base2     = ' guisp='.s:base2
	let s:sp_base3     = ' guisp='.s:base3
	let s:sp_green     = ' guisp='.s:green
	let s:sp_yellow    = ' guisp='.s:yellow
	let s:sp_orange    = ' guisp='.s:orange
	let s:sp_red       = ' guisp='.s:red
	let s:sp_magenta   = ' guisp='.s:magenta
	let s:sp_violet    = ' guisp='.s:violet
	let s:sp_blue      = ' guisp='.s:blue
	let s:sp_cyan      = ' guisp='.s:cyan
else
    let s:sp_none      = ""
    let s:sp_back      = ""
    let s:sp_base03    = ""
    let s:sp_base02    = ""
    let s:sp_base01    = ""
    let s:sp_base00    = ""
    let s:sp_base0     = ""
    let s:sp_base1     = ""
    let s:sp_base2     = ""
    let s:sp_base3     = ""
    let s:sp_green     = ""
    let s:sp_yellow    = ""
    let s:sp_orange    = ""
    let s:sp_red       = ""
    let s:sp_magenta   = ""
    let s:sp_violet    = ""
    let s:sp_blue      = ""
    let s:sp_cyan      = ""
endif

"}}}

" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "highlight! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back

exe "highlight! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
"       *Comment         any comment

exe "highlight! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "highlight! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "highlight! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "highlight! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "highlight! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "highlight! Special"        .s:fmt_none   .s:fg_red    .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "highlight! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "highlight! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "highlight! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
"       *Error           any erroneous construct

exe "highlight! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}

" Extended highlighting "{{{
" ---------------------------------------------------------------------

highlight! link NonText Special
highlight! link SpecialKey Special

exe "highlight! StatusLine"     .s:fmt_none   .s:fg_base1  .s:bg_base02 .s:fmt_revbb
exe "highlight! StatusLineNC"   .s:fmt_none   .s:fg_base00 .s:bg_base02 .s:fmt_revbb
exe "highlight! Visual"         .s:fmt_none   .s:fg_base01 .s:bg_base03 .s:fmt_revbb
exe "highlight! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
exe "highlight! ErrorMsg"       .s:fmt_revr   .s:fg_red    .s:bg_none
exe "highlight! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
exe "highlight! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none
exe "highlight! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "highlight! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "highlight! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
exe "highlight! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none
exe "highlight! VertSplit"      .s:fmt_none   .s:fg_base00 .s:bg_base00
exe "highlight! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
exe "highlight! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02 .s:fmt_revbb
exe "highlight! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "highlight! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02 .s:fmt_revbb
exe "highlight! Folded"         .s:fmt_undb   .s:fg_base0  .s:bg_base02  .s:sp_base03
exe "highlight! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02
if has("gui_running")
	exe "highlight! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green
	exe "highlight! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow
	exe "highlight! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
	exe "highlight! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue
else
	exe "highlight! DiffAdd"        .s:fmt_none   .s:fg_green  .s:bg_base02 .s:sp_green
	exe "highlight! DiffChange"     .s:fmt_none   .s:fg_yellow .s:bg_base02 .s:sp_yellow
	exe "highlight! DiffDelete"     .s:fmt_none   .s:fg_red    .s:bg_base02
	exe "highlight! DiffText"       .s:fmt_none   .s:fg_blue   .s:bg_base02 .s:sp_blue
endif

highlight! link SignColumn LineNr
exe "highlight! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "highlight! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red
exe "highlight! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet
exe "highlight! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan
exe "highlight! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow
exe "highlight! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02  .s:fmt_revbb
exe "highlight! PmenuSel"       .s:fmt_none   .s:fg_base01 .s:bg_base2   .s:fmt_revbb
exe "highlight! PmenuSbar"      .s:fmt_none   .s:fg_base2  .s:bg_base0   .s:fmt_revbb
exe "highlight! PmenuThumb"     .s:fmt_none   .s:fg_base0  .s:bg_base03  .s:fmt_revbb
exe "highlight! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "highlight! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "highlight! TabLineSel"     .s:fmt_undr   .s:fg_base01 .s:bg_base2   .s:sp_base0  .s:fmt_revbbu
exe "highlight! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
exe "highlight! CursorLine"     .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
exe "highlight! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
exe "highlight! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
highlight! link lCursor Cursor
exe "highlight! MatchParen"     .s:fmt_bold   .s:fg_red    .s:bg_base01

"}}}

" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
"exe "highlight! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital
"highlight! link vimComment Comment
"highlight! link vimLineComment Comment
highlight! link vimVar Identifier
highlight! link vimFunc Function
highlight! link vimUserFunc Function
highlight! link helpSpecial Special
highlight! link vimSet Normal
highlight! link vimSetEqual Normal
exe "highlight! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none
exe "highlight! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none
exe "highlight! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none
exe "highlight! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none
exe "highlight! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "highlight! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none
exe "highlight! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none
exe "highlight! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none
exe "highlight! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none
exe "highlight! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none
exe "highlight! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none
exe "highlight! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "highlight! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none
exe "highlight! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none
highlight! link vimGroup vimHiGroup
"}}}

" diff highlighting "{{{
" ---------------------------------------------------------------------
highlight! link diffAdded Statement
highlight! link diffLine Identifier
"}}}

" git & gitcommit highlighting "{{{
"git
"exe "highlight! gitDateHeader"
"exe "highlight! gitIdentityHeader"
"exe "highlight! gitIdentityKeyword"
"exe "highlight! gitNotesHeader"
"exe "highlight! gitReflogHeader"
"exe "highlight! gitKeyword"
"exe "highlight! gitIdentity"
"exe "highlight! gitEmailDelimiter"
"exe "highlight! gitEmail"
"exe "highlight! gitDate"
"exe "highlight! gitMode"
"exe "highlight! gitHashAbbrev"
"exe "highlight! gitHash"
"exe "highlight! gitReflogMiddle"
"exe "highlight! gitReference"
"exe "highlight! gitStage"
"exe "highlight! gitType"
"exe "highlight! gitDiffAdded"
"exe "highlight! gitDiffRemoved"
"gitcommit
"exe "highlight! gitcommitSummary"
exe "highlight! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none
highlight! link gitcommitUntracked gitcommitComment
highlight! link gitcommitDiscarded gitcommitComment
highlight! link gitcommitSelected  gitcommitComment
exe "highlight! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none
exe "highlight! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none
exe "highlight! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none
highlight! link gitcommitNoBranch gitcommitBranch
exe "highlight! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none
exe "highlight! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none
"exe "highlight! gitcommitUnmergedType"
"exe "highlight! gitcommitType"
"exe "highlight! gitcommitNoChanges"
"exe "highlight! gitcommitHeader"
exe "highlight! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
exe "highlight! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
exe "highlight! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
exe "highlight! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
exe "highlight! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
exe "highlight! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
highlight! link gitcommitDiscardedArrow gitcommitDiscardedFile
highlight! link gitcommitSelectedArrow  gitcommitSelectedFile
highlight! link gitcommitUnmergedArrow  gitcommitUnmergedFile
"exe "highlight! gitcommitArrow"
"exe "highlight! gitcommitOverflow"
"exe "highlight! gitcommitBlank"
" }}}

" html highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none
exe "highlight! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none
exe "highlight! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none
exe "highlight! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none
exe "highlight! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none
exe "highlight! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none
exe "highlight! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none
"}}}

" perl highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
exe "highlight! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "highlight! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none

"}}}

" tex highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none
exe "highlight! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "highlight! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "highlight! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "highlight! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none
"}}}

" ruby highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! rubyDefine"     . s:fg_base1  .s:bg_back   .s:fmt_bold
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"highlight! link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"highlight! link rubyClass             Keyword
"highlight! link rubyModule            Keyword
"highlight! link rubyKeyword           Keyword
"highlight! link rubyOperator          Operator
"highlight! link rubyIdentifier        Identifier
"highlight! link rubyInstanceVariable  Identifier
"highlight! link rubyGlobalVariable    Identifier
"highlight! link rubyClassVariable     Identifier
"highlight! link rubyConstant          Type
"}}}

" haskell syntax highlighting"{{{
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------
"
" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

exe "highlight! cPreCondit". s:fg_orange.s:bg_none   .s:fmt_none

exe "highlight! VarId"    . s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! ConId"    . s:fg_yellow .s:bg_none   .s:fmt_none
exe "highlight! hsImport" . s:fg_magenta.s:bg_none   .s:fmt_none
exe "highlight! hsString" . s:fg_base00 .s:bg_none   .s:fmt_none

exe "highlight! hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hs_hlFunctionName"  . s:fg_blue   .s:bg_none
exe "highlight! hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none
exe "highlight! hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none
exe "highlight! hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none
exe "highlight! hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr
exe "highlight! hsModuleStartLabel" . s:fg_magenta.s:bg_none   .s:fmt_none
highlight! link hsImportParams      Delimiter
highlight! link hsDelimTypeExport   Delimiter
highlight! link hsModuleStartLabel  hsStructure
highlight! link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
exe "highlight! hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none

"}}}

" pandoc markdown syntax highlighting "{{{
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
exe "highlight! pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "highlight! pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "highlight! pandocComment"                  .s:fg_base01 .s:bg_none   .s:fmt_ital
exe "highlight! pandocVerbatimBlock"            .s:fg_yellow .s:bg_none   .s:fmt_none
highlight! link pandocVerbatimBlockDeep         pandocVerbatimBlock
highlight! link pandocCodeBlock                 pandocVerbatimBlock
highlight! link pandocCodeBlockDelim            pandocVerbatimBlock
exe "highlight! pandocBlockQuote"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader1"        .s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader2"        .s:fg_cyan   .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader3"        .s:fg_yellow .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader4"        .s:fg_red    .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader5"        .s:fg_base0  .s:bg_none   .s:fmt_none
exe "highlight! pandocBlockQuoteLeader6"        .s:fg_base01 .s:bg_none   .s:fmt_none
exe "highlight! pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none
exe "highlight! pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr

" Definitions
" ---------------------------------------------------------------------
let s:fg_pdef = s:fg_violet
exe "highlight! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "highlight! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd
exe "highlight! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "highlight! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital
exe "highlight! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "highlight! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "highlight! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "highlight! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_revr
exe "highlight! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "highlight! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "highlight! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue
exe "highlight! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none
exe "highlight! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none
highlight! link pandocTableStructureTop             pandocTableStructre
highlight! link pandocTableStructureEnd             pandocTableStructre
exe "highlight! pandocTableZebraLight"              .s:fg_ptable.s:bg_base03.s:fmt_none
exe "highlight! pandocTableZebraDark"               .s:fg_ptable.s:bg_base02.s:fmt_none
exe "highlight! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital
exe "highlight! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold
exe "highlight! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_revr
exe "highlight! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none
exe "highlight! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none
exe "highlight! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_orange
exe "highlight! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold
exe "highlight! pandocHeadingMarker"                .s:fg_yellow.s:bg_none.s:fmt_bold
exe "highlight! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi
exe "highlight! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi
exe "highlight! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "highlight! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi
exe "highlight! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi
exe "highlight! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_revr
exe "highlight! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "highlight! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold
exe "highlight! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
exe "highlight! pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none
exe "highlight! pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr
exe "highlight! pandocLinkText"                 .s:fg_blue   .s:bg_none   .s:fmt_undb
exe "highlight! pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_undr
exe "highlight! pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_undi
exe "highlight! pandocLinkTitleDelim"           .s:fg_base01 .s:bg_none   .s:fmt_undi   .s:sp_base00
exe "highlight! pandocLinkDefinition"           .s:fg_cyan   .s:bg_none   .s:fmt_undr   .s:sp_base00
exe "highlight! pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "highlight! pandocImageCaption"             .s:fg_violet .s:bg_none   .s:fmt_undb
exe "highlight! pandocFootnoteLink"             .s:fg_green  .s:bg_none   .s:fmt_undr
exe "highlight! pandocFootnoteDefLink"          .s:fg_green  .s:bg_none   .s:fmt_bold
exe "highlight! pandocFootnoteInline"           .s:fg_green  .s:bg_none   .s:fmt_undb
exe "highlight! pandocFootnote"                 .s:fg_green  .s:bg_none   .s:fmt_none
exe "highlight! pandocCitationDelim"            .s:fg_magenta.s:bg_none   .s:fmt_none
exe "highlight! pandocCitation"                 .s:fg_magenta.s:bg_none   .s:fmt_none
exe "highlight! pandocCitationID"               .s:fg_magenta.s:bg_none   .s:fmt_undr
exe "highlight! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none

" Main Styles
" ---------------------------------------------------------------------
exe "highlight! pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none
exe "highlight! pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital
exe "highlight! pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold
exe "highlight! pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "highlight! pandocStrikeout"                .s:fg_base01 .s:bg_none  .s:fmt_revr
exe "highlight! pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none
exe "highlight! pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none
exe "highlight! pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none

exe "highlight! pandocRule"                     .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "highlight! pandocRuleLine"                 .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "highlight! pandocEscapePair"               .s:fg_red    .s:bg_none  .s:fmt_bold
exe "highlight! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none
exe "highlight! pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_revr
highlight! link pandocEscapedCharacter          pandocEscapePair
highlight! link pandocLineBreak                 pandocEscapePair

" Embedded Code
" ---------------------------------------------------------------------
exe "highlight! pandocMetadataDelim"            .s:fg_base01 .s:bg_none   .s:fmt_none
exe "highlight! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! pandocMetadataKey"              .s:fg_blue   .s:bg_none   .s:fmt_none
exe "highlight! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_bold
highlight! link pandocMetadataTitle             pandocMetadata

"}}}


