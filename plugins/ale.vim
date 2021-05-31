let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'vue':['eslint', 'stylelint', 'tsserver'],
    \ 'cs':['OmniSharp']
    \}

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['prettier', 'eslint'],
  \  'vue': ['eslint', 'stylelint']
  \ }

let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = ''
let g:ale_fix_on_save = 1

map <silent> ]g <Plug>(ale_next)
map <silent> [g <Plug>(ale_previous)

nmap <leader><leader>f <Plug>(ale_fix)
