if executable('eslint_d')
  let g:ale_javascript_eslint_use_global = 1
  let g:ale_javascript_eslint_executable = 'eslint_d'
endif

let g:ale_linters = {
    \ 'javascriptreact': ['eslint'],
    \ 'typescript': ['tsserver, eslint'],
    \ 'typescriptreact': ['eslint'],
    \ 'vue':['eslint'],
    \}

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace']
  \}

let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = ''
let g:ale_fix_on_save = 1
map <silent> ]g <Plug>(ale_next)
map <silent> [g <Plug>(ale_previous)

nmap <leader><leader>f <Plug>(ale_fix)
