" Vim color file
if &t_Co != 256 && !has('gui_running')
  echomsg ''
  echomsg 'ERR: please use GUI or a 256-color terminal (so that t_Co=256 could be set)'
  echomsg ''
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'xoria256'

let s:colors = {
      \ 'Background': ['#1c1c1c', ''],
      \ 'DarkBackground': ['#131313', ''],
      \ 'LightBackground': ['#262626', ''],
      \ 'Foreground': ['#d0d0d0', ''],
      \ 'DarkForeground': ['#606060', ''],
      \ 'LightForeground': ['#eeeeee', ''],
      \ 'Pink': ['#dfafdf', ''],
      \ 'Orange': ['#dfaf87', ''],
      \ 'Yellow': ['#ffffaf', ''],
      \ 'LightYellow': ['#ffdfaf', ''],
      \ 'Green': ['#afdf87', ''],
      \ 'DarkGreen': ['#8faf87', ''],
      \ 'Red': ['#df8787', ''],
      \ 'Blue': ['#87afdf', ''],
      \ 'DarkBlue': ['#384148', ''],
      \ 'Purple': ['#afafdf', ''],
      \ 'DarkPurple': ['#5f5f87', ''],
      \ 'LightPurple': ['#875f87', ''],
      \ 'Grey': ['#a0a8b0', ''],
      \}

function! s:get_index()
  if has('gui_running')
    return 0
  elseif has('unix')
    return 1
  endif
  return -1
endfunction

function! s:X(name, guifg, guibg, gui)
  let idx = s:get_index()
  let cmd = 'hi '.a:name.' '
  if a:guifg != ''
    let cmd .= 'guifg='.s:colors[a:guifg][idx].' '
  endif
  if a:guibg != ''
    let cmd .= 'guibg='.s:colors[a:guibg][idx].' '
  endif
  if a:gui != ''
    let cmd .= 'gui='.a:gui
  endif
  if idx != -1
    " echomsg cmd
    execute cmd
  endif
endfunction

function! xoria256#g(color_name)
  return s:colors[a:color_name][0]
endfunction

function! xoria256#c(color_name)
  return s:colors[a:color_name][1]
endfunction

call s:X('Normal', 'Foreground', 'Background', 'none') " normal text
call s:X('Cursor', '', 'Orange', '') " the character under the cursor
call s:X('CursorColumn', '', 'LightBackground', '') " the screen column that the cursor is in
call s:X('CursorLine', '', 'LightBackground', 'none') " the screen line that the cursor is in
call s:X('FoldColumn', 'DarkForeground', 'DarkBackground', '') " fold column color
call s:X('Folded', 'LightForeground', 'DarkPurple', '') " line used for closed folds
call s:X('IncSearch', 'Background', 'LightYellow', 'none') " incsearch highlighting
call s:X('LineNr', 'DarkForeground', 'DarkBackground', '') " line number
call s:X('CursorLineNr', 'Yellow', 'DarkBackground', 'none') " like LineNr for the cursor line
call s:X('MatchParen', 'Background', 'Blue', 'bold') " a paired bracket and its match
call s:X('NonText', 'DarkForeground', 'Background', 'bold') " ~ and @ at the end of the window

call s:X('Pmenu', 'Grey', 'DarkBlue', '') " popup menu - noraml item
call s:X('PmenuSel', 'Background', 'Green', 'bold') " popup menu - selected item
call s:X('PmenuSbar', '', 'LightBackground', '') " popup menu - scrollbar
call s:X('PmenuThumb', '', 'DarkForeground', '') " popup menu - thumb of the scrollbar
call s:X('WildMenu', 'Background', 'Green', 'bold') " used in wildmenu competion
call s:X('Menu', 'Green', '', 'bold') " colors for the menus

call s:X('MoreMsg', 'Orange', 'Background', 'none') " -- More -- message
call s:X('ModeMsg', 'Foreground', 'Background', 'bold') " -- INSERT -- message
call s:X('WarningMsg', 'Foreground', 'Background', 'none') " warning messages
call s:X('ErrorMsg', 'Red', 'Background', 'none') " error messages
call s:X('Question', 'Orange', 'Background', 'none') " hit-enter propmpt and yes/no questions

call s:X('Search', 'Background', 'Purple', '')
call s:X('SignColumn', 'LightForeground', 'DarkBackground', '')
call s:X('ColorColumn', '', 'DarkBackground', '')
call s:X('SpecialKey', 'Green', '', '') " meta and special keys listed with :map

call s:X('SpellBad', 'Background', 'Red', '')
call s:X('SpellCap', 'Pink', 'Background', 'underline')
call s:X('SpellRare', 'Pink', 'Background', 'underline')
call s:X('SpellLocal', 'Purple', 'Background', 'underline')

call s:X('StatusLine', 'Foreground', 'LightBackground', 'none')
call s:X('StatusLineNC', 'DarkForeground', 'LightBackground', 'none')

call s:X('TabLine', 'Grey', 'DarkBlue', 'none')
call s:X('TabLineSel', 'Foreground', 'DarkBackground', 'bold')
call s:X('TabLineFill', 'DarkForeground', 'LightBackground', 'none')
call s:X('Title', 'Orange', '', '')

call s:X('VertSplit', 'DarkForeground', 'LightBackground', 'none')
call s:X('Visual', 'LightForeground', 'LightPurple', '')
call s:X('VisualNOS', 'LightForeground', 'DarkPurple', '')

call s:X('Constant', 'Yellow', '', '') " any constant
call s:X('String', 'Yellow', '', '') " a string constant
call s:X('Character', 'Yellow', '', '') " a character constant: 'c', '\n'
call s:X('Number', 'Orange', '', '') " a number constant: 234, 0xff
call s:X('Boolean', 'Orange', '', '') " a boolean constant: TRUE, false
call s:X('Float', 'Orange', '', '') " a floating point constant: 2.3e10

call s:X('Identifier', 'Pink', '', '') " any variable name
" call s:X('Function', 'Pink', '', '') " function name (also: methods for classes)

call s:X('Statement', 'Blue', '', 'none') " any statement
" call s:X('Conditional', 'Blue', '', 'none') " if, then, else, endif, switch, etc.
" call s:X('Repeat', 'Blue', '', 'none') " for, do, while, etc.
" call s:X('Label', 'Blue', '', 'none') " case, default, etc.
" call s:X('Operator', 'Blue', '', 'none') " sizeof, +, *, etc.
" call s:X('Keyword', 'Blue', '', 'none') " any other keyword
" call s:X('Exception', 'Blue', '', 'none') " try, catch, throw

call s:X('PreProc', 'Green', '', '') " generic Preprocessor
" call s:X('Include', 'Green', '', '') " preprocessor #include
" call s:X('Define', 'Green', '', '') " preprocessor #define
" call s:X('Macro', 'Green', '', '') " same as Define
" call s:X('PreCondit', 'Green', '', '') " preprocessor #if, #else, #endif, etc.

call s:X('Type', 'Purple', '', 'none') " int, long, char, etc.
" call s:X('StorageClass', 'Purple', '', 'none') " static, register, volatile, etc.
" call s:X('Structure', 'Purple', '', 'none') " struct, union, enum, etc.
" call s:X('Typedef', 'Purple', '', 'none') " a typedef

call s:X('Special', 'Red', '', '') " any special symbol
call s:X('SpecialChar', 'Orange', '', '') " special character in a constant
" call s:X('Tag', 'Red', '', '') " you can use CTRL-] on this
" call s:X('Delimiter', 'Red', '', '') " character that needs attention
call s:X('SpecialComment', 'Grey', '', '') " special things inside a comment
" call s:X('Debug', 'Red', '', '') " debugging statements

call s:X('Ignore', 'Red', 'Background', '') " left blank, hidden
call s:X('Error', 'Red', 'Background', 'undercurl') " any erroneous construct
call s:X('Todo', 'LightYellow', 'Background', 'bold')
call s:X('Underlined', 'Blue', '', 'underline')
call s:X('Comment', 'DarkForeground', '', '')

" call s:X('TagbarComment', 'DarkForeground'
" call s:X('TagbarKind', 'Red'
" call s:X('TagbarNestedKind', 'Purple'
" call s:X('TagbarScope', 'Purple', 'bold'
" call s:X('TagbarType', 'Purple'
" call s:X('TagbarSignature', 'DarkForeground'
" call s:X('TagbarHighlight', 'Foreground' guibg=#3a3a3a gui='bold'
" call s:X('TagbarVisibilityPublic', 'Green', 'bold'
" call s:X('TagbarVisibilityProtected', 'Foreground', 'bold'
" call s:X('TagbarVisibilityPrivate', 'Red', 'bold'
"
call s:X('SyntasticErrorSign', 'Red', 'DarkBackground', 'bold')
call s:X('SyntasticWarningSign', 'DarkGreen', 'DarkBackground', 'bold')
call s:X('SyntasticStyleErrorSign', 'Red', 'DarkBackground', 'bold')
call s:X('SyntasticStyleWarningSign', 'DarkGreen', 'DarkBackground', 'bold')

call s:X('DiffAdd', 'Background', 'Green', '')
call s:X('DiffChange', 'Grey', 'DarkBlue', '')
call s:X('DiffDelete', 'Background', 'Red', '')
call s:X('DiffText', 'DarkBlue', 'Background', '')
" vim: set ts=2 sts=2 sw=2 et:
