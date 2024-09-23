let g:colors_name = "packet"

set background=dark

"hi clear
syntax reset

" Set ANSI color codes
set t_ZH=[3m
set t_ZR=[23m

" Code
hi Constant ctermfg=160 ctermbg=None cterm=None
hi Boolean ctermfg=78 ctermbg=None cterm=None
hi String ctermfg=40 ctermbg=None cterm=None
hi Comment ctermfg=245 ctermbg=None cterm=None
hi PreProc ctermfg=123 ctermbg=None cterm=None
hi Type ctermfg=81 ctermbg=None cterm=None
hi Statement ctermfg=184 ctermbg=None cterm=None
hi Operator ctermfg=210 ctermbg=None cterm=None
hi Identifier ctermfg=214 ctermbg=None cterm=None
hi Function ctermfg=226 ctermbg=None cterm=None
hi Todo ctermfg=129 ctermbg=3 cterm=reverse,italic
hi Error ctermfg=7 ctermbg=52 cterm=None
hi Special ctermfg=38 ctermbg=None cterm=None
hi Delimeter ctermfg=226 ctermbg=None cterm=None
hi Tag ctermfg=226 ctermbg=None cterm=None
hi Ignore ctermfg=242 ctermbg=None cterm=italic
hi Underline ctermfg=81 ctermbg=None cterm=underline

" Display
hi Normal ctermfg=253 ctermbg=0 cterm=None 
hi Cursor ctermfg=253 ctermbg=57 cterm=None
hi SpecialKey ctermfg=39 ctermbg=None cterm=None
hi Directory ctermfg=83 ctermbg=16 cterm=None
hi ErrorMsg ctermfg=205 ctermbg=160 cterm=None
hi Search ctermfg=50 ctermbg=235 cterm=None
hi NonText ctermfg=63 ctermbg=None cterm=bold
hi DiffText ctermfg=218 ctermbg=244 cterm=bold
hi Status ctermbg=8 ctermfg=2 cterm=None

hi FoldColumn ctermfg=216 ctermbg=None cterm=None
hi Folded ctermfg=216 ctermbg=None cterm=bold

hi Visual ctermfg=232 ctermbg=69 cterm=None

hi Pmenu ctermfg=62 ctermbg=233 cterm=None
hi PmenuSel ctermfg=69 ctermbg=323 cterm=bold
hi PmenuSbar ctermfg=247 ctermbg=233 cterm=bold
hi PmenuThumb ctermfg=248 ctermbg=233 cterm=None

hi StatusLineNC ctermfg=120 ctermbg=233 cterm=None
hi StatusLine ctermfg=40 ctermbg=233 cterm=None
hi VertSplit ctermfg=233 ctermbg=233 cterm=bold

hi TabLine ctermfg=240 ctermbg=236 cterm=None
hi TabLineFill ctermfg=235 ctermbg=235 cterm=None
hi TabLineSel ctermfg=104 ctermbg=233 cterm=None

hi LineNr ctermbg=0 ctermfg=2 cterm=None
hi CursorLine ctermbg=233 ctermfg=None cterm=None
hi CursorLineNr ctermbg=233 ctermfg=2 cterm=None

" Gutter
hi SignColumn ctermbg=233 ctermfg=29 cterm=None

" For ALE linter
hi SpellBad ctermfg=124 ctermbg=None cterm=bold  
hi SpellCap ctermfg=20 ctermbg=245 cterm=bold
hi ALEErrorLine ctermbg=52
hi ALEWarningSign ctermbg=130
hi ALESignColumnWithoutError ctermbg=0

