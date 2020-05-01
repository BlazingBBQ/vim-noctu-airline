" Color palette
let s:gui_dark_gray = '#2d283e'
let s:cterm_dark_gray = 0
let s:gui_med_gray_hi = '#2d283e'
let s:cterm_med_gray_hi = 0
let s:gui_med_gray_lo = '#58506a'
let s:cterm_med_gray_lo = 8
let s:gui_light_gray = '#9ce3ea'
let s:cterm_light_gray = 14
let s:gui_green = '#52a95d'
let s:cterm_green = 10
let s:gui_blue = '#a9bbeb'
let s:cterm_blue = 12
let s:gui_purple = '#8c35c8'
let s:cterm_purple = 5
let s:gui_orange = '#f0719a'
let s:cterm_orange = 9
let s:gui_red = '#ec2160'
let s:cterm_red = 1
let s:gui_pink = '#ac81c1'
let s:cterm_pink = 13

let g:airline#themes#noctu#palette = {}

" Normal mode
let s:N1 = [s:gui_dark_gray, s:gui_green, s:cterm_dark_gray, s:cterm_green]
let s:N2 = [s:gui_light_gray, s:gui_med_gray_lo, s:cterm_light_gray, s:cterm_med_gray_lo]
let s:N3 = [s:gui_green, s:gui_med_gray_hi, s:cterm_green, s:cterm_med_gray_hi]
let g:airline#themes#noctu#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#noctu#palette.normal_modified = {
      \ 'airline_c': [s:gui_orange, s:gui_med_gray_hi, s:cterm_orange, s:cterm_med_gray_hi, ''],
      \ }

" Insert mode
let s:I1 = [s:gui_med_gray_hi, s:gui_blue, s:cterm_med_gray_hi, s:cterm_blue]
let s:I3 = [s:gui_blue, s:gui_med_gray_hi, s:cterm_blue, s:cterm_med_gray_hi]
let g:airline#themes#noctu#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)
let g:airline#themes#noctu#palette.insert_modified = copy(g:airline#themes#noctu#palette.normal_modified)
let g:airline#themes#noctu#palette.insert_paste = {
      \ 'airline_a': [s:gui_dark_gray, s:gui_orange, s:cterm_dark_gray, s:cterm_orange, ''],
      \ }

" Replace mode
let g:airline#themes#noctu#palette.replace = {
      \ 'airline_a': [s:gui_dark_gray, s:gui_red, s:cterm_dark_gray, s:cterm_red, ''],
      \ 'airline_c': [s:gui_red, s:gui_med_gray_hi, s:cterm_red, s:cterm_med_gray_hi, ''],
      \ }
let g:airline#themes#noctu#palette.replace_modified = copy(g:airline#themes#noctu#palette.insert_modified)

" Visual mode
let s:V1 = [s:gui_dark_gray, s:gui_pink, s:cterm_dark_gray, s:cterm_pink]
let s:V3 = [s:gui_pink, s:gui_med_gray_hi, s:cterm_pink, s:cterm_med_gray_hi]
let g:airline#themes#noctu#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:V3)
let g:airline#themes#noctu#palette.visual_modified = copy(g:airline#themes#noctu#palette.insert_modified)

" Warnings
let s:WI = [s:gui_med_gray_hi, s:gui_red, s:cterm_med_gray_hi, s:cterm_red]
let g:airline#themes#noctu#palette.normal.airline_warning = [ s:WI[0], s:WI[1], s:WI[2], s:WI[3] ]
let g:airline#themes#noctu#palette.normal_modified.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.insert.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.insert_modified.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.visual.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.visual_modified.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.replace.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning
let g:airline#themes#noctu#palette.replace_modified.airline_warning = g:airline#themes#noctu#palette.normal.airline_warning

" Errors
let s:ER = [s:gui_dark_gray, s:gui_red, s:cterm_dark_gray, s:cterm_red]
let g:airline#themes#noctu#palette.normal.airline_error = [ s:ER[0], s:ER[1], s:ER[2], s:ER[3] ]
let g:airline#themes#noctu#palette.normal_modified.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.insert.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.insert_modified.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.visual.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.visual_modified.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.replace.airline_error = g:airline#themes#noctu#palette.normal.airline_error
let g:airline#themes#noctu#palette.replace_modified.airline_error = g:airline#themes#noctu#palette.normal.airline_error

" Inactive window
let s:IA = [s:gui_light_gray, s:gui_med_gray_hi, s:cterm_light_gray, s:cterm_med_gray_hi, '']
let g:airline#themes#noctu#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#noctu#palette.inactive_modified = {
      \ 'airline_c': [s:gui_orange, '', s:cterm_orange, '', ''],
      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#noctu#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui_orange, s:gui_med_gray_hi, s:cterm_orange, s:cterm_med_gray_hi, '' ] ,
      \ [ s:gui_orange, s:gui_med_gray_lo, s:cterm_orange, s:cterm_med_gray_lo, '' ] ,
      \ [ s:gui_dark_gray, s:gui_green, s:cterm_dark_gray, s:cterm_green, 'bold' ] )
