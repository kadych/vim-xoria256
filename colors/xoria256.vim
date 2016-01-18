" Vim color file
" if &t_Co != 256 && !has('gui_running')
"   echomsg ''
"   echomsg 'ERR: please use GUI or a 256-color terminal (so that t_Co=256 could be set)'
"   echomsg ''
"   finish
" endif

set background=dark

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'xoria256'

" {{{ s:colors
let s:colors = {
      \ 'x016_Grey0': ['#000000', 16],
      \ 'x017_NavyBlue': ['#00005f', 17],
      \ 'x018_DarkBlue': ['#000087', 18],
      \ 'x019_Blue3': ['#0000af', 19],
      \ 'x020_Blue3': ['#0000d7', 20],
      \ 'x021_Blue1': ['#0000ff', 21],
      \ 'x022_DarkGreen': ['#005f00', 22],
      \ 'x023_DeepSkyBlue4': ['#005f5f', 23],
      \ 'x024_DeepSkyBlue4': ['#005f87', 24],
      \ 'x025_DeepSkyBlue4': ['#005faf', 25],
      \ 'x026_DodgerBlue3': ['#005fd7', 26],
      \ 'x027_DodgerBlue2': ['#005fff', 27],
      \ 'x028_Green4': ['#008700', 28],
      \ 'x029_SpringGreen4': ['#00875f', 29],
      \ 'x030_Turquoise4': ['#008787', 30],
      \ 'x031_DeepSkyBlue3': ['#0087af', 31],
      \ 'x032_DeepSkyBlue3': ['#0087d7', 32],
      \ 'x033_DodgerBlue1': ['#0087ff', 33],
      \ 'x034_Green3': ['#00af00', 34],
      \ 'x035_SpringGreen3': ['#00af5f', 35],
      \ 'x036_DarkCyan': ['#00af87', 36],
      \ 'x037_LightSeaGreen': ['#00afaf', 37],
      \ 'x038_DeepSkyBlue2': ['#00afd7', 38],
      \ 'x039_DeepSkyBlue1': ['#00afff', 39],
      \ 'x040_Green3': ['#00d700', 40],
      \ 'x041_SpringGreen3': ['#00d75f', 41],
      \ 'x042_SpringGreen2': ['#00d787', 42],
      \ 'x043_Cyan3': ['#00d7af', 43],
      \ 'x044_DarkTurquoise': ['#00d7d7', 44],
      \ 'x045_Turquoise2': ['#00d7ff', 45],
      \ 'x046_Green1': ['#00ff00', 46],
      \ 'x047_SpringGreen2': ['#00ff5f', 47],
      \ 'x048_SpringGreen1': ['#00ff87', 48],
      \ 'x049_MediumSpringGreen': ['#00ffaf', 49],
      \ 'x050_Cyan2': ['#00ffd7', 50],
      \ 'x051_Cyan1': ['#00ffff', 51],
      \ 'x052_DarkRed': ['#5f0000', 52],
      \ 'x053_DeepPink4': ['#5f005f', 53],
      \ 'x054_Purple4': ['#5f0087', 54],
      \ 'x055_Purple4': ['#5f00af', 55],
      \ 'x056_Purple3': ['#5f00d7', 56],
      \ 'x057_BlueViolet': ['#5f00ff', 57],
      \ 'x058_Orange4': ['#5f5f00', 58],
      \ 'x059_Grey37': ['#5f5f5f', 59],
      \ 'x060_MediumPurple4': ['#5f5f87', 60],
      \ 'x061_SlateBlue3': ['#5f5faf', 61],
      \ 'x062_SlateBlue3': ['#5f5fd7', 62],
      \ 'x063_RoyalBlue1': ['#5f5fff', 63],
      \ 'x064_Chartreuse4': ['#5f8700', 64],
      \ 'x065_DarkSeaGreen4': ['#5f875f', 65],
      \ 'x066_PaleTurquoise4': ['#5f8787', 66],
      \ 'x067_SteelBlue': ['#5f87af', 67],
      \ 'x068_SteelBlue3': ['#5f87d7', 68],
      \ 'x069_CornflowerBlue': ['#5f87ff', 69],
      \ 'x070_Chartreuse3': ['#5faf00', 70],
      \ 'x071_DarkSeaGreen4': ['#5faf5f', 71],
      \ 'x072_CadetBlue': ['#5faf87', 72],
      \ 'x073_CadetBlue': ['#5fafaf', 73],
      \ 'x074_SkyBlue3': ['#5fafd7', 74],
      \ 'x075_SteelBlue1': ['#5fafff', 75],
      \ 'x076_Chartreuse3': ['#5fd700', 76],
      \ 'x077_PaleGreen3': ['#5fd75f', 77],
      \ 'x078_SeaGreen3': ['#5fd787', 78],
      \ 'x079_Aquamarine3': ['#5fd7af', 79],
      \ 'x080_MediumTurquoise': ['#5fd7d7', 80],
      \ 'x081_SteelBlue1': ['#5fd7ff', 81],
      \ 'x082_Chartreuse2': ['#5fff00', 82],
      \ 'x083_SeaGreen2': ['#5fff5f', 83],
      \ 'x084_SeaGreen1': ['#5fff87', 84],
      \ 'x085_SeaGreen1': ['#5fffaf', 85],
      \ 'x086_Aquamarine1': ['#5fffd7', 86],
      \ 'x087_DarkSlateGray2': ['#5fffff', 87],
      \ 'x088_DarkRed': ['#870000', 88],
      \ 'x089_DeepPink4': ['#87005f', 89],
      \ 'x090_DarkMagenta': ['#870087', 90],
      \ 'x091_DarkMagenta': ['#8700af', 91],
      \ 'x092_DarkViolet': ['#8700d7', 92],
      \ 'x093_Purple': ['#8700ff', 93],
      \ 'x094_Orange4': ['#875f00', 94],
      \ 'x095_LightPink4': ['#875f5f', 95],
      \ 'x096_Plum4': ['#875f87', 96],
      \ 'x097_MediumPurple3': ['#875faf', 97],
      \ 'x098_MediumPurple3': ['#875fd7', 98],
      \ 'x099_SlateBlue1': ['#875fff', 99],
      \ 'x100_Yellow4': ['#878700', 100],
      \ 'x101_Wheat4': ['#87875f', 101],
      \ 'x102_Grey53': ['#878787', 102],
      \ 'x103_LightSlateGrey': ['#8787af', 103],
      \ 'x104_MediumPurple': ['#8787d7', 104],
      \ 'x105_LightSlateBlue': ['#8787ff', 105],
      \ 'x106_Yellow4': ['#87af00', 106],
      \ 'x107_DarkOliveGreen3': ['#87af5f', 107],
      \ 'x108_DarkSeaGreen': ['#87af87', 108],
      \ 'x109_LightSkyBlue3': ['#87afaf', 109],
      \ 'x110_LightSkyBlue3': ['#87afd7', 110],
      \ 'x111_SkyBlue2': ['#87afff', 111],
      \ 'x112_Chartreuse2': ['#87d700', 112],
      \ 'x113_DarkOliveGreen3': ['#87d75f', 113],
      \ 'x114_PaleGreen3': ['#87d787', 114],
      \ 'x115_DarkSeaGreen3': ['#87d7af', 115],
      \ 'x116_DarkSlateGray3': ['#87d7d7', 116],
      \ 'x117_SkyBlue1': ['#87d7ff', 117],
      \ 'x118_Chartreuse1': ['#87ff00', 118],
      \ 'x119_LightGreen': ['#87ff5f', 119],
      \ 'x120_LightGreen': ['#87ff87', 120],
      \ 'x121_PaleGreen1': ['#87ffaf', 121],
      \ 'x122_Aquamarine1': ['#87ffd7', 122],
      \ 'x123_DarkSlateGray1': ['#87ffff', 123],
      \ 'x124_Red3': ['#af0000', 124],
      \ 'x125_DeepPink4': ['#af005f', 125],
      \ 'x126_MediumVioletRed': ['#af0087', 126],
      \ 'x127_Magenta3': ['#af00af', 127],
      \ 'x128_DarkViolet': ['#af00d7', 128],
      \ 'x129_Purple': ['#af00ff', 129],
      \ 'x130_DarkOrange3': ['#af5f00', 130],
      \ 'x131_IndianRed': ['#af5f5f', 131],
      \ 'x132_HotPink3': ['#af5f87', 132],
      \ 'x133_MediumOrchid3': ['#af5faf', 133],
      \ 'x134_MediumOrchid': ['#af5fd7', 134],
      \ 'x135_MediumPurple2': ['#af5fff', 135],
      \ 'x136_DarkGoldenrod': ['#af8700', 136],
      \ 'x137_LightSalmon3': ['#af875f', 137],
      \ 'x138_RosyBrown': ['#af8787', 138],
      \ 'x139_Grey63': ['#af87af', 139],
      \ 'x140_MediumPurple2': ['#af87d7', 140],
      \ 'x141_MediumPurple1': ['#af87ff', 141],
      \ 'x142_Gold3': ['#afaf00', 142],
      \ 'x143_DarkKhaki': ['#afaf5f', 143],
      \ 'x144_NavajoWhite3': ['#afaf87', 144],
      \ 'x145_Grey69': ['#afafaf', 145],
      \ 'x146_LightSteelBlue3': ['#afafd7', 146],
      \ 'x147_LightSteelBlue': ['#afafff', 147],
      \ 'x148_Yellow3': ['#afd700', 148],
      \ 'x149_DarkOliveGreen3': ['#afd75f', 149],
      \ 'x150_DarkSeaGreen3': ['#afd787', 150],
      \ 'x151_DarkSeaGreen2': ['#afd7af', 151],
      \ 'x152_LightCyan3': ['#afd7d7', 152],
      \ 'x153_LightSkyBlue1': ['#afd7ff', 153],
      \ 'x154_GreenYellow': ['#afff00', 154],
      \ 'x155_DarkOliveGreen2': ['#afff5f', 155],
      \ 'x156_PaleGreen1': ['#afff87', 156],
      \ 'x157_DarkSeaGreen2': ['#afffaf', 157],
      \ 'x158_DarkSeaGreen1': ['#afffd7', 158],
      \ 'x159_PaleTurquoise1': ['#afffff', 159],
      \ 'x160_Red3': ['#d70000', 160],
      \ 'x161_DeepPink3': ['#d7005f', 161],
      \ 'x162_DeepPink3': ['#d70087', 162],
      \ 'x163_Magenta3': ['#d700af', 163],
      \ 'x164_Magenta3': ['#d700d7', 164],
      \ 'x165_Magenta2': ['#d700ff', 165],
      \ 'x166_DarkOrange3': ['#d75f00', 166],
      \ 'x167_IndianRed': ['#d75f5f', 167],
      \ 'x168_HotPink3': ['#d75f87', 168],
      \ 'x169_HotPink2': ['#d75faf', 169],
      \ 'x170_Orchid': ['#d75fd7', 170],
      \ 'x171_MediumOrchid1': ['#d75fff', 171],
      \ 'x172_Orange3': ['#d78700', 172],
      \ 'x173_LightSalmon3': ['#d7875f', 173],
      \ 'x174_LightPink3': ['#d78787', 174],
      \ 'x175_Pink3': ['#d787af', 175],
      \ 'x176_Plum3': ['#d787d7', 176],
      \ 'x177_Violet': ['#d787ff', 177],
      \ 'x178_Gold3': ['#d7af00', 178],
      \ 'x179_LightGoldenrod3': ['#d7af5f', 179],
      \ 'x180_Tan': ['#d7af87', 180],
      \ 'x181_MistyRose3': ['#d7afaf', 181],
      \ 'x182_Thistle3': ['#d7afd7', 182],
      \ 'x183_Plum2': ['#d7afff', 183],
      \ 'x184_Yellow3': ['#d7d700', 184],
      \ 'x185_Khaki3': ['#d7d75f', 185],
      \ 'x186_LightGoldenrod2': ['#d7d787', 186],
      \ 'x187_LightYellow3': ['#d7d7af', 187],
      \ 'x188_Grey84': ['#d7d7d7', 188],
      \ 'x189_LightSteelBlue1': ['#d7d7ff', 189],
      \ 'x190_Yellow2': ['#d7ff00', 190],
      \ 'x191_DarkOliveGreen1': ['#d7ff5f', 191],
      \ 'x192_DarkOliveGreen1': ['#d7ff87', 192],
      \ 'x193_DarkSeaGreen1': ['#d7ffaf', 193],
      \ 'x194_Honeydew2': ['#d7ffd7', 194],
      \ 'x195_LightCyan1': ['#d7ffff', 195],
      \ 'x196_Red1': ['#ff0000', 196],
      \ 'x197_DeepPink2': ['#ff005f', 197],
      \ 'x198_DeepPink1': ['#ff0087', 198],
      \ 'x199_DeepPink1': ['#ff00af', 199],
      \ 'x200_Magenta2': ['#ff00d7', 200],
      \ 'x201_Magenta1': ['#ff00ff', 201],
      \ 'x202_OrangeRed1': ['#ff5f00', 202],
      \ 'x203_IndianRed1': ['#ff5f5f', 203],
      \ 'x204_IndianRed1': ['#ff5f87', 204],
      \ 'x205_HotPink': ['#ff5faf', 205],
      \ 'x206_HotPink': ['#ff5fd7', 206],
      \ 'x207_MediumOrchid1': ['#ff5fff', 207],
      \ 'x208_DarkOrange': ['#ff8700', 208],
      \ 'x209_Salmon1': ['#ff875f', 209],
      \ 'x210_LightCoral': ['#ff8787', 210],
      \ 'x211_PaleVioletRed1': ['#ff87af', 211],
      \ 'x212_Orchid2': ['#ff87d7', 212],
      \ 'x213_Orchid1': ['#ff87ff', 213],
      \ 'x214_Orange1': ['#ffaf00', 214],
      \ 'x215_SandyBrown': ['#ffaf5f', 215],
      \ 'x216_LightSalmon1': ['#ffaf87', 216],
      \ 'x217_LightPink1': ['#ffafaf', 217],
      \ 'x218_Pink1': ['#ffafd7', 218],
      \ 'x219_Plum1': ['#ffafff', 219],
      \ 'x220_Gold1': ['#ffd700', 220],
      \ 'x221_LightGoldenrod2': ['#ffd75f', 221],
      \ 'x222_LightGoldenrod2': ['#ffd787', 222],
      \ 'x223_NavajoWhite1': ['#ffd7af', 223],
      \ 'x224_MistyRose1': ['#ffd7d7', 224],
      \ 'x225_Thistle1': ['#ffd7ff', 225],
      \ 'x226_Yellow1': ['#ffff00', 226],
      \ 'x227_LightGoldenrod1': ['#ffff5f', 227],
      \ 'x228_Khaki1': ['#ffff87', 228],
      \ 'x229_Wheat1': ['#ffffaf', 229],
      \ 'x230_Cornsilk1': ['#ffffd7', 230],
      \ 'x231_Grey100': ['#ffffff', 231],
      \ 'x232_Grey3': ['#080808', 232],
      \ 'x233_Grey7': ['#121212', 233],
      \ 'x234_Grey11': ['#1c1c1c', 234],
      \ 'x235_Grey15': ['#262626', 235],
      \ 'x236_Grey19': ['#303030', 236],
      \ 'x237_Grey23': ['#3a3a3a', 237],
      \ 'x238_Grey27': ['#444444', 238],
      \ 'x239_Grey30': ['#4e4e4e', 239],
      \ 'x240_Grey35': ['#585858', 240],
      \ 'x241_Grey39': ['#626262', 241],
      \ 'x242_Grey42': ['#6c6c6c', 242],
      \ 'x243_Grey46': ['#767676', 243],
      \ 'x244_Grey50': ['#808080', 244],
      \ 'x245_Grey54': ['#8a8a8a', 245],
      \ 'x246_Grey58': ['#949494', 246],
      \ 'x247_Grey62': ['#9e9e9e', 247],
      \ 'x248_Grey66': ['#a8a8a8', 248],
      \ 'x249_Grey70': ['#b2b2b2', 249],
      \ 'x250_Grey74': ['#bcbcbc', 250],
      \ 'x251_Grey78': ['#c6c6c6', 251],
      \ 'x252_Grey82': ['#d0d0d0', 252],
      \ 'x253_Grey85': ['#dadada', 253],
      \ 'x254_Grey89': ['#e4e4e4', 254],
      \ 'x255_Grey93': ['#eeeeee', 255],
      \}
" }}}

function! s:gui_string(name, fg, bg, style)
  let cmd = 'hi '.a:name
  if a:fg != ''
    let cmd .= ' guifg='.s:colors[a:fg][0]
  endif
  if a:bg != ''
    let cmd .= ' guibg='.s:colors[a:bg][0]
  endif
  if a:style != ''
    let cmd .= ' gui='.a:style
  endif
  return cmd
endfunction

function! s:cterm_string(name, fg, bg, style)
  let cmd = 'hi '.a:name
  if a:fg != ''
    let cmd .= ' ctermfg='.s:colors[a:fg][1]
  endif
  if a:bg != ''
    let cmd .= ' ctermbg='.s:colors[a:bg][1]
  endif
  if a:style != ''
    let cmd .= ' cterm='.a:style
  endif
  return cmd
endfunction

function! s:X(name, fg, bg, style)
  if has('gui_running')
    let cmd = s:gui_string(a:name, a:fg, a:bg, a:style)
  else
    let cmd = s:cterm_string(a:name, a:fg, a:bg, a:style)
  endif
  " echomsg cmd
  execute cmd
endfunction

function! xoria256#g(color_name)
  return s:colors[a:color_name][0]
endfunction

function! xoria256#c(color_name)
  return s:colors[a:color_name][1]
endfunction

function! xoria256#colors(fg, bg)
  return [xoria256#g(a:fg), xoria256#g(a:bg), xoria256#c(a:fg), xoria256#c(a:bg)]
endfunction

call s:X('Normal', 'x252_Grey82', 'x234_Grey11', 'none') " normal text
call s:X('Cursor', '', 'x180_Tan', 'none') " the character under the cursor
call s:X('CursorColumn', '', 'x235_Grey15', 'none') " the screen column that the cursor is in
call s:X('CursorLine', '', 'x235_Grey15', 'none') " the screen line that the cursor is in
call s:X('FoldColumn', 'x241_Grey39', 'x233_Grey7', 'none') " fold column color
call s:X('Folded', 'x248_Grey66', 'x237_Grey23', 'none') " line used for closed folds
call s:X('IncSearch', 'x234_Grey11', 'x223_NavajoWhite1', 'none') " incsearch highlighting
call s:X('LineNr', 'x241_Grey39', 'x233_Grey7', 'none') " line number
call s:X('CursorLineNr', 'x229_Wheat1', 'x233_Grey7', 'none') " like LineNr for the cursor line
call s:X('MatchParen', 'x174_LightPink3', 'x237_Grey23', 'bold') " a paired bracket and its match
call s:X('NonText', 'x241_Grey39', 'x234_Grey11', 'bold') " ~ and @ at the end of the window

call s:X('Pmenu', 'x248_Grey66', 'x237_Grey23', 'none') " popup menu - noraml item
call s:X('PmenuSel', 'x234_Grey11', 'x150_DarkSeaGreen3', 'bold') " popup menu - selected item
call s:X('PmenuSbar', '', 'x235_Grey15', 'none') " popup menu - scrollbar
call s:X('PmenuThumb', '', 'x241_Grey39', 'none') " popup menu - thumb of the scrollbar
call s:X('WildMenu', 'x234_Grey11', 'x150_DarkSeaGreen3', 'bold') " used in wildmenu competion
call s:X('Menu', 'x150_DarkSeaGreen3', '', 'bold') " colors for the menus

call s:X('MoreMsg', 'x180_Tan', 'x234_Grey11', 'none') " -- More -- message
call s:X('ModeMsg', 'x252_Grey82', 'x234_Grey11', 'bold') " -- INSERT -- message
call s:X('WarningMsg', 'x252_Grey82', 'x234_Grey11', 'none') " warning messages
call s:X('ErrorMsg', 'x174_LightPink3', 'x234_Grey11', 'none') " error messages
call s:X('Question', 'x180_Tan', 'x234_Grey11', 'none') " hit-enter propmpt and yes/no questions

call s:X('Search', 'x234_Grey11', 'x146_LightSteelBlue3', 'none')
call s:X('SignColumn', 'x255_Grey93', 'x233_Grey7', 'none')
call s:X('ColorColumn', '', 'x233_Grey7', 'none')
call s:X('SpecialKey', 'x150_DarkSeaGreen3', '', 'none') " meta and special keys listed with :map

call s:X('SpellBad', 'x234_Grey11', 'x174_LightPink3', 'none')
call s:X('SpellCap', 'x182_Thistle3', 'x234_Grey11', 'underline')
call s:X('SpellRare', 'x182_Thistle3', 'x234_Grey11', 'underline')
call s:X('SpellLocal', 'x146_LightSteelBlue3', 'x234_Grey11', 'underline')

call s:X('StatusLine', 'x252_Grey82', 'x235_Grey15', 'none')
call s:X('StatusLineNC', 'x248_Grey66', 'x235_Grey15', 'none')

call s:X('TabLine', 'x248_Grey66', 'x237_Grey23', 'none')
call s:X('TabLineSel', 'x252_Grey82', 'x233_Grey7', 'bold')
call s:X('TabLineFill', 'x241_Grey39', 'x235_Grey15', 'none')
call s:X('Title', 'x180_Tan', '', 'none')

call s:X('VertSplit', 'x241_Grey39', 'x235_Grey15', 'none')
call s:X('Visual', 'x255_Grey93', 'x096_Plum4', 'none')
call s:X('VisualNOS', 'x255_Grey93', 'x060_MediumPurple4', 'none')

call s:X('Constant', 'x229_Wheat1', '', 'none') " any constant
call s:X('String', 'x229_Wheat1', '', 'none') " a string constant
call s:X('Character', 'x229_Wheat1', '', 'none') " a character constant: 'c', '\n'
call s:X('Number', 'x180_Tan', '', 'none') " a number constant: 234, 0xff
call s:X('Boolean', 'x180_Tan', '', 'none') " a boolean constant: TRUE, false
call s:X('Float', 'x180_Tan', '', 'none') " a floating point constant: 2.3e10

call s:X('Identifier', 'x182_Thistle3', '', 'none') " any variable name
" call s:X('Function', 'x182_Thistle3', '', 'none') " function name (also: methods for classes)

call s:X('Statement', 'x110_LightSkyBlue3', '', 'none') " any statement
" call s:X('Conditional', 'x110_LightSkyBlue3', '', 'none') " if, then, else, endif, switch, etc.
" call s:X('Repeat', 'x110_LightSkyBlue3', '', 'none') " for, do, while, etc.
" call s:X('Label', 'x110_LightSkyBlue3', '', 'none') " case, default, etc.
" call s:X('Operator', 'x110_LightSkyBlue3', '', 'none') " sizeof, +, *, etc.
" call s:X('Keyword', 'x110_LightSkyBlue3', '', 'none') " any other keyword
" call s:X('Exception', 'x110_LightSkyBlue3', '', 'none') " try, catch, throw

call s:X('PreProc', 'x150_DarkSeaGreen3', '', 'none') " generic Preprocessor
" call s:X('Include', 'x150_DarkSeaGreen3', '', 'none') " preprocessor #include
" call s:X('Define', 'x150_DarkSeaGreen3', '', 'none') " preprocessor #define
" call s:X('Macro', 'x150_DarkSeaGreen3', '', 'none') " same as Define
" call s:X('PreCondit', 'x150_DarkSeaGreen3', '', 'none') " preprocessor #if, #else, #endif, etc.

call s:X('Type', 'x146_LightSteelBlue3', '', 'none') " int, long, char, etc.
" call s:X('StorageClass', 'x146_LightSteelBlue3', '', 'none') " static, register, volatile, etc.
" call s:X('Structure', 'x146_LightSteelBlue3', '', 'none') " struct, union, enum, etc.
" call s:X('Typedef', 'x146_LightSteelBlue3', '', 'none') " a typedef

call s:X('Special', 'x174_LightPink3', '', 'none') " any special symbol
call s:X('SpecialChar', 'x180_Tan', '', 'none') " special character in a constant
" call s:X('Tag', 'x174_LightPink3', '', 'none') " you can use CTRL-] on this
" call s:X('Delimiter', 'x174_LightPink3', '', 'none') " character that needs attention
call s:X('SpecialComment', 'x248_Grey66', '', 'none') " special things inside a comment
" call s:X('Debug', 'x174_LightPink3', '', 'none') " debugging statements

call s:X('Ignore', 'x174_LightPink3', 'x234_Grey11', 'none') " left blank, hidden
call s:X('Error', 'x174_LightPink3', 'x234_Grey11', 'undercurl') " any erroneous construct
call s:X('Todo', 'x223_NavajoWhite1', 'x234_Grey11', 'bold')
call s:X('Underlined', 'x110_LightSkyBlue3', '', 'underline')
call s:X('Comment', 'x241_Grey39', '', 'none')

" call s:X('TagbarComment', 'x241_Grey39'
" call s:X('TagbarKind', 'x174_LightPink3'
" call s:X('TagbarNestedKind', 'x146_LightSteelBlue3'
" call s:X('TagbarScope', 'x146_LightSteelBlue3', 'bold'
" call s:X('TagbarType', 'x146_LightSteelBlue3'
" call s:X('TagbarSignature', 'x241_Grey39'
" call s:X('TagbarHighlight', 'x252_Grey82' guibg=#3a3a3a gui='bold'
" call s:X('TagbarVisibilityPublic', 'x150_DarkSeaGreen3', 'bold'
" call s:X('TagbarVisibilityProtected', 'x252_Grey82', 'bold'
" call s:X('TagbarVisibilityPrivate', 'x174_LightPink3', 'bold'
"
call s:X('SyntasticErrorSign', 'x174_LightPink3', 'x233_Grey7', 'bold')
call s:X('SyntasticWarningSign', 'x108_DarkSeaGreen', 'x233_Grey7', 'bold')
call s:X('SyntasticStyleErrorSign', 'x174_LightPink3', 'x233_Grey7', 'bold')
call s:X('SyntasticStyleWarningSign', 'x108_DarkSeaGreen', 'x233_Grey7', 'bold')

call s:X('DiffAdd', 'x234_Grey11', 'x150_DarkSeaGreen3', 'none')
call s:X('DiffChange', 'x248_Grey66', 'x237_Grey23', 'none')
call s:X('DiffDelete', 'x234_Grey11', 'x174_LightPink3', 'none')
call s:X('DiffText', 'x237_Grey23', 'x234_Grey11', 'none')
" vim: set ts=2 sts=2 sw=2 et ff=unix fen:
