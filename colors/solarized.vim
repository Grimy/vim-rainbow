" Colorscheme initialization {{{1
if !has('gui_running') | finish | end
highlight clear
syntax reset
let colors_name = 'solarized'

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

" Formatting options and null values for passthrough effect {{{1
let s:none        = "NONE"
let s:none        = "NONE"
let s:t_none      = "NONE"
let s:n           = "NONE"
let s:c           = ",undercurl"
let s:r           = ",reverse"
let s:s           = ",standout"
let s:ou          = ""
let s:ob          = ""
let s:i           = ",italic"
let s:u           = '' " ",underline"
if (&t_Co == 8 )
    let s:b = ""
    let s:bb = ",bold"
else
    let s:b = ",bold"
    let s:bb = ""
endif

" Highlighting primitives{{{1
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
" Basic highlighting{{{1

exe "highlight! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back
exe "highlight! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
exe "highlight! Constant"       .s:fmt_none   .s:fg_orange .s:bg_none
exe "highlight! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
exe "highlight! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
exe "highlight! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
exe "highlight! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
highlight! link String Constant
highlight! link NonText Comment
highlight! link SpecialKey Comment
highlight! link Special Comment

exe "highlight! Underlined"     .s:fmt_none   .s:fg_violet  .s:bg_none
exe "highlight! Ignore"         .s:fmt_none   .s:fg_none    .s:bg_none
exe "highlight! Error"          .s:fmt_bold   .s:fg_red     .s:bg_none
exe "highlight! Todo"           .s:fmt_bold   .s:fg_magenta .s:bg_none

" Extended highlighting {{{1

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
exe "highlight! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green
exe "highlight! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow
exe "highlight! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
exe "highlight! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue
highlight! link DiffAdded Statement
highlight! link DiffLine Identifier

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
" git & gitcommit highlighting {{{1
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
exe "highlight! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
exe "highlight! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
exe "highlight! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
exe "highlight! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
exe "highlight! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
exe "highlight! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
highlight! link gitcommitDiscardedArrow gitcommitDiscardedFile
highlight! link gitcommitSelectedArrow  gitcommitSelectedFile
highlight! link gitcommitUnmergedArrow  gitcommitUnmergedFile
