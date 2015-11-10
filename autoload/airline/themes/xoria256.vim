if get(g:, 'loaded_airline', 0)
  let g:airline#themes#xoria256#palette = {}
  let s:N1 = [ xoria256#g('Background'), xoria256#g('Blue'), 17, 190 ]
  let s:N2 = [ xoria256#g('Grey'), xoria256#g('DarkBlue'), 255, 238 ]
  let s:N3 = [ xoria256#g('DarkForeground'), xoria256#g('Background'), 85, 234 ]
  let g:airline#themes#xoria256#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#xoria256#palette.normal_modified = {
        \ 'airline_c': [ xoria256#g('Orange'), xoria256#g('Background'), 255, 53, '' ] ,
        \ }

  let s:I1 = [ xoria256#g('Background'), xoria256#g('Green'), 17, 45 ]
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#xoria256#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#xoria256#palette.insert_modified = {
        \ 'airline_c': [ xoria256#g('Orange'), xoria256#g('Background'), 255, 53, '' ] ,
        \ }
  let g:airline#themes#xoria256#palette.insert_paste = {
        \ 'airline_a': [ s:I1[0], xoria256#g('Orange'), s:I1[2], 172, '' ] ,
        \ }

  let s:R1 = [ xoria256#g('Background'), xoria256#g('Red'), 17, 45 ]
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#xoria256#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#xoria256#palette.replace_modified = g:airline#themes#xoria256#palette.insert_modified


  let s:V1 = [ xoria256#g('Background'), xoria256#g('Purple'), 232, 214 ]
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#xoria256#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#xoria256#palette.visual_modified = {
        \ 'airline_c': [ xoria256#g('Orange'), xoria256#g('Background'), 255, 53, '' ] ,
        \ }


  let s:IA1 = [ xoria256#g('DarkForeground'), xoria256#g('LightBackground'), 239, 234, '' ]
  let s:IA2 = [ xoria256#g('DarkForeground'), xoria256#g('LightBackground'), 239, 235, '' ]
  let s:IA3 = [ xoria256#g('DarkForeground'), xoria256#g('LightBackground'), 239, 236, '' ]
  let g:airline#themes#xoria256#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#xoria256#palette.inactive_modified = {
        \ 'airline_c': [ xoria256#g('Orange'), xoria256#g('Background'), 97, '', '' ] ,
        \ }
  let g:airline#themes#xoria256#palette.accents = {
        \ 'red': [ xoria256#g('Red'), '', 160, '' ]
        \ }
  if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#xoria256#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
          \ s:N3,
          \ s:N1,
          \ s:N2)
  endif
endif
" vim: set ts=2 sts=2 sw=2 et:
