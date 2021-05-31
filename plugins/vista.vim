" Tagbar && vista
let g:vista_sidebar_width = 50
" let g:vista_default_executive = 'coc'

let g:vista_executive_for = {
    \ 'vue': 'coc',
    \ }

let g:vista_update_on_text_changed_delay = 100
let g:vista_blink = [0,0]

noremap <Leader>vv :Vista!!<CR>
noremap <Leader>vt :Vista finder<CR>
