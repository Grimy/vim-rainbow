" Colorscheme initialization {{{1
highlight clear
syntax reset
let colors_name = 'rainbow'

let s:bg_base    = ' guibg=#002b36 ctermbg=8'
let s:bg_bright  = ' guibg=#073642 ctermbg=0'

let s:fg_soft    = ' guifg=#586e75 ctermfg=10'
let s:fg_base    = ' guifg=#839496 ctermfg=12'
let s:fg_bright  = ' guifg=#eee8d5 ctermfg=7'

let s:sp_red     = ' guisp=#dc322f'
let s:fg_red     = ' guifg=#dc322f ctermfg=1'
let s:fg_orange  = ' guifg=#cb4b16 ctermfg=9'
let s:fg_yellow  = ' guifg=#b58900 ctermfg=3'
let s:fg_green   = ' guifg=#719e07 ctermfg=2'
let s:fg_blue    = ' guifg=#268bd2 ctermfg=4'
let s:fg_purple  = ' guifg=#6c71c4 ctermfg=13'

let s:fg_none    = ' guifg=NONE ctermfg=NONE'
let s:fmt_none   = ' gui=NONE'
let s:fmt_bold   = ' gui=NONE,bold'
let s:fmt_line   = ' gui=NONE,underline'
let s:fmt_curl   = ' gui=NONE,undercurl'
let s:fmt_ital   = ' gui=NONE,italic'
let s:fmt_rev    = ' gui=NONE,reverse'
let s:fmt_revb   = ' gui=NONE,reverse,bold'

" let s:dark0       = '#657b83'
" let s:light1      = '#93a1a1'
" let s:light3      = '#fdf6e3'
" let s:magenta     = '#d33682'
" let s:cyan        = '#2aa198'

" Syntax highlighting{{{1

exe "highlight! Normal"         .s:fmt_none   .s:fg_base  .s:bg_base

exe "highlight! Comment"        .s:fmt_ital   .s:fg_soft .s:bg_base

exe "highlight! String"         .s:fmt_none   .s:fg_orange .s:bg_base
highlight! link Constant Normal
highlight! link Character Normal
highlight! link Number Normal
highlight! link Boolean Normal
highlight! link Float Normal

highlight! link Identifier Normal
highlight! link Function Normal

highlight! link Statement Normal
highlight! link Conditional Keyword
highlight! link Repeat Keyword
highlight! link Label Keyword
highlight! link Operator Normal
exe "highlight! Keyword"        .s:fmt_none   .s:fg_yellow  .s:bg_base
highlight! link Exception Keyword

exe "highlight! PreProc"        .s:fmt_none   .s:fg_purple .s:bg_base
highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc

highlight! link Type Keyword
highlight! link StorageClass Keyword
highlight! link Structure Keyword
highlight! link Typedef Keyword

highlight! link Special Comment
highlight! link SpecialChar Comment
highlight! link Tag Underlined
highlight! link Delimiter Normal
highlight! link SpecialComment Comment
highlight! link Debug PreProc

exe "highlight! Underlined"     .s:fmt_line
exe "highlight! Error"          .s:fmt_bold   .s:fg_red     .s:bg_base
exe "highlight! Todo"           .s:fmt_bold   .s:fg_yellow  .s:bg_base

" UI colors {{{1

exe "highlight! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_bright
" exe "highlight! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_base
" exe "highlight! Cursor"         .s:fmt_rev   .s:fg_base
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn

exe "highlight! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base
exe "highlight! DiffChange"     .s:fmt_bold   .s:fg_none   .s:bg_bright
exe "highlight! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base
exe "highlight! DiffText"       .s:fmt_bold   .s:fg_yellow .s:bg_base
exe "highlight! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_base
highlight! link ErrorMsg Error
exe "highlight! Folded"         .s:fmt_bold   .s:fg_none  .s:bg_bright
exe "highlight! IncSearch"      .s:fmt_revb   .s:fg_orange .s:bg_base
exe "highlight! LineNr"         .s:fmt_none   .s:fg_soft . s:bg_bright
hi! link MatchParen IncSearch

exe "highlight! Pmenu"          .s:fmt_revb   . s:fg_base  . s:bg_base
exe "highlight! PmenuSel"       .s:fmt_revb   . s:fg_soft . s:bg_base

exe "highlight! Question"       .s:fmt_bold   . s:fg_yellow . s:bg_base
highlight! link MoreMsg Question
highlight! link NonText Special

exe "highlight! Search"         .s:fmt_rev   .s:fg_yellow .s:bg_base
exe "highlight! SpellBad"       .s:fmt_curl  .s:sp_red
highlight! link SpellCap SpellBad
highlight! link SpellLocal SpellBad
highlight! link SpellRare SpellBad

exe "highlight! Title"          .s:fmt_bold   .s:fg_orange .s:bg_base
highlight! link VertSplit Normal
exe "highlight! Visual"         .s:fmt_rev   . s:fg_soft . s:bg_base
exe "highlight! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_base
exe "highlight! StatusLine"     .s:fmt_revb   .s:fg_base  .s:bg_bright
exe "highlight! WildMenu"       .s:fmt_revb   .s:fg_bright  .s:bg_base
highlight! link SignColumn LineNr
highlight! link SpecialKey Comment
highlight! link lCursor Cursor
exe "highlight! YcmWarningSign" .s:fmt_none   .s:fg_yellow  .s:bg_base

" Obsolete
exe "highlight! PmenuSbar"      .s:fmt_revb
exe "highlight! FoldColumn"     .s:fmt_none   .s:fg_base  .s:bg_bright
exe "highlight! StatusLineNC"   .s:fmt_none   .s:fg_base .s:bg_bright .s:fmt_revb
exe "highlight! TabLine"        .s:fmt_line   .s:fg_base  .s:bg_bright
exe "highlight! TabLineFill"    .s:fmt_line   .s:fg_base  .s:bg_bright
exe "highlight! TabLineSel"     .s:fmt_revb   .s:fg_soft .s:bg_bright
exe "highlight! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_base
exe "highlight! PmenuThumb"     .s:fmt_none   .s:fg_base  .s:bg_bright  .s:fmt_revb

" git & gitcommit highlighting {{{1

highlight! link gitcommitComment   Comment
highlight! link gitcommitUntracked gitcommitComment
highlight! link gitcommitDiscarded gitcommitComment
highlight! link gitcommitSelected  gitcommitComment
exe "highlight! gitcommitUnmerged"      .s:fmt_bold     .s:fg_green   .s:bg_base
exe "highlight! gitcommitOnBranch"      .s:fmt_bold     .s:fg_soft    .s:bg_base
exe "highlight! gitcommitBranch"        .s:fmt_bold     .s:fg_blue    .s:bg_base
highlight! link gitcommitNoBranch gitcommitBranch
exe "highlight! gitcommitDiscardedType" .s:fmt_none     .s:fg_red     .s:bg_base
exe "highlight! gitcommitSelectedType"  .s:fmt_none     .s:fg_green   .s:bg_base
exe "highlight! gitcommitHeader"        .s:fmt_none     .s:fg_soft    .s:bg_base
exe "highlight! gitcommitUntrackedFile" .s:fmt_bold     .s:fg_red     .s:bg_base
exe "highlight! gitcommitDiscardedFile" .s:fmt_bold     .s:fg_red     .s:bg_base
exe "highlight! gitcommitSelectedFile"  .s:fmt_bold     .s:fg_green   .s:bg_base
exe "highlight! gitcommitUnmergedFile"  .s:fmt_bold     .s:fg_yellow  .s:bg_base
exe "highlight! gitcommitFile"          .s:fmt_bold     .s:fg_base    .s:bg_base
highlight! link gitcommitDiscardedArrow gitcommitDiscardedFile
highlight! link gitcommitSelectedArrow  gitcommitSelectedFile
highlight! link gitcommitUnmergedArrow  gitcommitUnmergedFile
