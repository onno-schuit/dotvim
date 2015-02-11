" ir_white color scheme
" More at: http://blog.infinitered.com/entries/show/8


" ********************************************************************************
" Standard colors used in all ir_white themes:
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
" 
"  string: #A8FF60  168:255:96                   
"    string inner (punc, code, etc): #00A0A0  0:160:160
"  number: #FF73FD  255:115:253                 
"  comments: #7C7C7C  124:124:124
"  keywords: #96CBFE  150:203:254             
"  operators: black
"  class: #FFFFB6  255:255:182
"  method declaration name: #FFD2A7  255:210:167
"  regular expression: #E9C062  233:192:98
"    regexp alternate: #FF8000  255:128:0
"    regexp alternate 2: #B18A3D  177:138:61
"  variable: #C6C5FE  198:197:254
"  
" Misc colors:
"  red color (used for whatever): #FF6C60   255:108:96 
"     light red: #FFB6B0   255:182:176
"
"  brown: #E18964  good for special
"
"  lightpurpleish: #FFCCFF
" 
" Interface colors:
"  background color: white
"  cursor (where underscore is used): #FFA560  255:165:96
"  cursor (where block is used): black
"  visual selection: #1D1E2C 
"  current line: #151515  21:21:21
"  search selection: #07281C  7:40:28
"  line number: #3D3D3D  61:61:61


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "ir_white"


"hi Example         guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi Normal           guifg=black       guibg=white       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText          guifg=black       guibg=white       gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

hi Cursor           guifg=white       guibg=black       gui=NONE      ctermfg=white       ctermbg=black       cterm=reverse
hi LineNr           guifg=#3D3D3D     guibg=white       gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi VertSplit        guifg=#202020     guibg=#202020     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=italic    ctermfg=black       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=white       guibg=#202020     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE  
hi Folded           guifg=#a0a8b0     guibg=#384048     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" NERDTree uses Title for styling file names, and treeDir for directories' color
hi Title            guifg=black       guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi treeDir          guifg=#729FCF     guibg=white       gui=bold

" Color of selection block:
hi Visual           guifg=NONE        guibg=#9999FF     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu         guifg=green       guibg=yellow      gui=NONE      ctermfg=white       ctermbg=yellow      cterm=NONE
hi PmenuSbar        guifg=white       guibg=black       gui=NONE      ctermfg=white       ctermbg=black       cterm=NONE
"hi Ignore          guifg=gray        guibg=white       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=black       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=black       guibg=#FF6C60     gui=BOLD      ctermfg=black       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=black       guibg=#FF6C60     gui=BOLD      ctermfg=black       ctermbg=red         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=white       guibg=#C6C5FE     gui=BOLD      ctermfg=white       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  " Color of selected line:
  hi CursorLine     guifg=NONE        guibg=#FFFF99     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=black       ctermbg=darkgray    cterm=NONE
  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search         guifg=NONE        guibg=#B2FFFF     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment          guifg=#006600     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String           guifg=#0000cc     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Number           guifg=black       guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Keyword          guifg=#800000     guibg=NONE        gui=bold      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi PreProc          guifg=#800000     guibg=NONE        gui=bold      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi Conditional      guifg=#800000     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE  " if else end

hi Todo             guifg=#006600     guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Constant         guifg=#660066     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier       guifg=black       guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function         guifg=black       guibg=NONE        gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi Type             guifg=black       guibg=NONE        gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Statement        guifg=black       guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

hi Special          guifg=black       guibg=NONE        gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE
hi Delimiter        guifg=black       guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Operator         guifg=black       guibg=NONE        gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE
hi Boolean          guifg=black       guibg=NONE        gui=bold      ctermfg=black       ctermbg=NONE        cterm=NONE




hi link Character       Constant
"hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

"Invisible character colors
highlight NonText guifg=#CCCCCC     guibg=white
highlight SpecialKey guifg=#CCCCCC  guibg=white

" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=black        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=black        guibg=NONE      gui=bold      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable         guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
hi rubyInstanceVariable        guifg=#855500      guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE        cterm=NONE

"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
"hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for PHP

hi link phpConstant  Constant
hi link phpCoreConstant  Constant
hi link phpComment Comment
hi link phpException Exception
hi link phpBoolean Boolean
hi link phpStorageClass  StorageClass
hi link phpSCKeyword StorageClass
hi link phpFCKeyword Define
hi link phpStructure Keyword
hi link phpStringSingle  String
hi link phpStringDouble  String
hi link phpBacktick  String
hi link phpNumber  Number
hi link phpFloat Float
hi link phpMethods Function
hi link phpFunctions Function
hi link phpBaselib Function
hi link phpRepeat  Repeat
hi link phpConditional Conditional
hi link phpLabel Label
hi link phpStatement Statement
hi link phpKeyword Statement
hi link phpType  Type
hi link phpInclude Include
hi link phpDefine  Define
hi link phpSpecialChar SpecialChar
"hi link phpParent  Delimiter
"hi link phpIdentifierConst Delimiter
hi link phpParentError Error
hi link phpOctalError  Error
hi link phpTodo  Todo
hi link phpMemberSelector  Structure


hi link phpIntVar Boolean
hi link phpEnvVar Boolean
hi link phpOperator Operator
hi phpVarSelector          guifg=#855500     guibg=NONE        gui=bold      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi link phpRelation Operator
hi link phpIdentifier Identifier
hi link phpIdentifierSimply Identifier




