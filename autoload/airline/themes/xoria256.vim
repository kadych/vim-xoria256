if get(g:, 'loaded_airline', 0)
  let g:airline#themes#xoria256#palette = {}

  let N1 = xoria256#colors('x234_Grey11', 'x110_LightSkyBlue3')
  let N2 = xoria256#colors('x248_Grey66', 'x237_Grey23')
  let N3 = xoria256#colors('x241_Grey39', 'x234_Grey11')
  let g:airline#themes#xoria256#palette.normal = airline#themes#generate_color_map(N1, N2, N3)
  let g:airline#themes#xoria256#palette.normal_modified = {
        \ 'airline_c': xoria256#colors('x180_Tan', 'x234_Grey11') + [''],
        \ }

  let I1 = xoria256#colors('x234_Grey11', 'x150_DarkSeaGreen3')
  let I2 = N2
  let I3 = N3
  let g:airline#themes#xoria256#palette.insert = airline#themes#generate_color_map(I1, I2, I3)
  let g:airline#themes#xoria256#palette.insert_modified = {
        \ 'airline_c': xoria256#colors('x180_Tan', 'x234_Grey11') + [''],
        \ }
  let g:airline#themes#xoria256#palette.insert_paste = {
        \ 'airline_a': [ I1[0], xoria256#g('x180_Tan'), I1[2], xoria256#c('x180_Tan'), '' ],
        \ }

  let R1 = xoria256#colors('x234_Grey11', 'x174_LightPink3')
  let R2 = N2
  let R3 = N3
  let g:airline#themes#xoria256#palette.replace = airline#themes#generate_color_map(R1, R2, R3)
  let g:airline#themes#xoria256#palette.replace_modified = g:airline#themes#xoria256#palette.insert_modified


  let V1 = xoria256#colors('x234_Grey11', 'x146_LightSteelBlue3')
  let V2 = N2
  let V3 = N3
  let g:airline#themes#xoria256#palette.visual = airline#themes#generate_color_map(V1, V2, V3)
  let g:airline#themes#xoria256#palette.visual_modified = {
        \ 'airline_c': xoria256#colors('x180_Tan', 'x234_Grey11') + [''],
        \ }


  let IA1 = xoria256#colors('x248_Grey66', 'x235_Grey15')
  let IA2 = IA1
  let IA3 = IA1
  let g:airline#themes#xoria256#palette.inactive = airline#themes#generate_color_map(IA1, IA2, IA3)
  let g:airline#themes#xoria256#palette.inactive_modified = {
        \ 'airline_c': xoria256#colors('x180_Tan', 'x234_Grey11') + [''],
        \ }
  let g:airline#themes#xoria256#palette.accents = {
        \ 'red': [ xoria256#g('x174_LightPink3'), '', xoria256#c('x174_LightPink3'), '' ]
        \ }
  if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#xoria256#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
          \ N3,
          \ N1,
          \ N2)
  endif
endif
" vim: set ts=2 sts=2 sw=2 et ff=unix:
