" Copyright © 2014 Grimy <Victor.Adam@derpymail.org>
" This work is free software. You can redistribute it and/or modify it under
" the terms of the Do What The Fuck You Want To Public License, Version 2, as
" published by Sam Hocevar. See the LICENCE file for more details.

" Scheme setup {{{
set background=dark
let colors_name="rainbow"
highlight clear

let g:rainbow_palette = [
			\ '#002b36', '#073642', '#586e75', '#657b83', '#839496', '#93a1a1', '#eee8d5', '#fdf6e3',
			\ '#b58900', '#cb4b16', '#dc322f', '#d33682', '#6c71c4', '#268bd2', '#2aa198', '#859900']

"*let s:bg = map('ctermbg=' . v:val . ' guibg=' . palette[v:val])*/
"*let s:fg = map('ctermfg=' . v:val . ' guifg=' . palette[v:val])*/
let s:bold = 'cterm=bold gui=bold'

"}}}
" Vim UI {{{
highlight Normal         ctermbg=none ctermfg=none
highlight CursorLine     gui=NONE
highlight CursorLineNr   ctermbg=0 cterm=bold ctermfg=3

highlight Directory      cterm=bold ctermfg=12

highlight Search         cterm=reverse

highlight ModeMsg        cterm=bold
highlight Question       cterm=bold ctermfg=10

highlight StatusLine     cterm=reverse
highlight StatusLineNC   cterm=reverse ctermfg=7

highlight Title          cterm=bold ctermfg=9
highlight Visual         ctermbg=0

highlight Folded         cterm=bold ctermfg=12 ctermbg=0

highlight DiffAdd        ctermbg=22
highlight DiffDelete     ctermfg=1
highlight DiffChange     ctermbg=17
highlight DiffText       cterm=reverse

highlight SpellBad       cterm=underline ctermfg=1

highlight Pmenu          cterm=reverse
highlight PmenuSel       cterm=reverse,bold ctermfg=8

highlight TabLine        cterm=underline ctermbg=8
highlight TabLineSel     cterm=bold,underline

highlight LineNr         ctermfg=3
highlight ColorColumn    ctermbg=0
highlight NonText        ctermfg=4

highlight MatchParen     cterm=reverse
highlight Underlined     cterm=underline

highlight link SpecialKey   NonText
highlight link ErrorMsg     Error
highlight link WarningMsg   Error
highlight link IncSearch    Search
highlight link MoreMsg      Question
highlight link VertSplit    StatusLine
highlight link TabLineFill  StatusLine
highlight link WildMenu     PMenuSel
highlight link FoldColumn   Folded
highlight link SpellCap     SpellBad
highlight link SpellRare    SpellBad
highlight link SpellLocal   SpellBad
"}}}
" Generic syntax {{{
highlight Comment        ctermfg=4
highlight Identifier     ctermfg=12
highlight Function       ctermfg=14
highlight Constant       ctermfg=15
highlight Special        ctermfg=5
highlight Statement      ctermfg=9
highlight Type           ctermfg=2
highlight Error          cterm=reverse ctermfg=1
highlight Todo           cterm=reverse ctermfg=11

highlight link Ignore          NonText
highlight link String          Constant
highlight link Character       Constant
highlight link Number          Constant
highlight link Boolean         Constant
highlight link Float           Number
highlight link Conditional     Statement
highlight link Repeat          Statement
highlight link Label           Statement
highlight link Operator        Statement
highlight link Keyword         Statement
highlight link Exception       Statement
highlight link Include         PreProc
highlight link Define          PreProc
highlight link Macro           PreProc
highlight link PreCondit       PreProc
highlight link StorageClass    Type
highlight link Structure       Type
highlight link Typedef         Type
highlight link Tag             Special
highlight link SpecialChar     Special
highlight link Delimiter       Special
highlight link SpecialComment  Special
highlight link PreProc         Special
highlight link Debug           Special
"}}}
" HTML {{{
highlight htmlTagName              ctermfg=2
highlight htmlTag                  ctermfg=2
highlight htmlArg                  ctermfg=10
highlight htmlH1                   cterm=bold
highlight htmlBold                 cterm=bold
highlight htmlItalic               cterm=underline
highlight htmlUnderline            cterm=underline
highlight htmlBoldItalic           cterm=bold,underline
highlight htmlBoldUnderline        cterm=bold,underline
highlight htmlUnderlineItalic      cterm=underline
highlight htmlBoldUnderlineItalic  cterm=bold,underline
highlight! link htmlLink           Underlined
highlight! link htmlEndTag         htmlTag
"}}}
" XML {{{
highlight xmlTagName       ctermfg=4
highlight xmlTag           ctermfg=12
highlight! link xmlString  xmlTagName
highlight! link xmlAttrib  xmlTag
highlight! link xmlEndTag  xmlTag
highlight! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
highlight! link javaScript        Normal
highlight! link javaScriptBraces  Delimiter
"}}}

" Markdown {{{
highlight! link markdownHeadingRule        NonText
highlight! link markdownHeadingDelimiter   markdownHeadingRule
highlight! link markdownLinkDelimiter      Delimiter
highlight! link markdownURLDelimiter       Delimiter
highlight! link markdownCodeDelimiter      NonText
highlight! link markdownLinkTextDelimiter  markdownLinkDelimiter
highlight! link markdownUrl                markdownLinkText
highlight! link markdownAutomaticLink      markdownLinkText
highlight! link markdownCodeBlock          String
highlight markdownCode                     cterm=bold
highlight markdownBold                     cterm=bold
highlight markdownItalic                   cterm=underline

"}}}
" Ruby {{{
highlight! link rubyDefine                 Statement
highlight! link rubyLocalVariableOrMethod  Identifier
highlight! link rubyConstant               Constant
highlight! link rubyInstanceVariable       Number
highlight! link rubyStringDelimiter        rubyString

"}}}
" Git {{{

highlight gitCommitBranch               ctermfg=3
highlight gitCommitSelectedType         ctermfg=10
highlight gitCommitSelectedFile         ctermfg=2
highlight gitCommitUnmergedType         ctermfg=9
highlight gitCommitUnmergedFile         ctermfg=1
highlight! link gitCommitFile           Directory
highlight! link gitCommitUntrackedFile  gitCommitUnmergedFile
highlight! link gitCommitDiscardedType  gitCommitUnmergedType
highlight! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" VimScript {{{
highlight! link vimSetSep    Delimiter
highlight! link vimContinue  Delimiter
highlight! link vimHiAttrib  Constant
"}}}
" LESS {{{
highlight lessVariable             ctermfg=11
highlight! link lessVariableValue  Normal

"}}}
" NERDTree {{{
highlight! link NERDTreeHelp      Comment
highlight! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
highlight! link VimwikiHeaderChar  markdownHeadingDelimiter
highlight! link VimwikiList        markdownListMarker
highlight! link VimwikiCode        markdownCode
highlight! link VimwikiCodeChar    markdownCodeDelimiter

"}}}
" Help {{{
"}}}
" CtrlP {{{
highlight! link CtrlPMatch    String
highlight! link CtrlPLinePre  Comment

"}}}
" Mustache {{{
highlight mustacheSection           ctermfg=14  cterm=bold
highlight mustacheMarker            ctermfg=6
highlight mustacheVariable          ctermfg=14
highlight mustacheVariableUnescape  ctermfg=9
highlight mustachePartial           ctermfg=13

"}}}
" Shell {{{
highlight shDerefSimple     ctermfg=11
highlight! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
highlight SyntasticWarningSign  ctermfg=3   ctermbg=NONE
highlight SyntasticErrorSign    ctermfg=1   ctermbg=NONE

"}}}


