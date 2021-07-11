" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
let g:completion_enable_snippet = "vim-vsnip"
" let g:completion_sorting = "none"
let g:completion_matching_ignore_case = 1
let g:completion_auto_change_source = 1

let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
    \ "\<Plug>(completion_confirm_completion)"  :
    \ "\<c-e>\<CR>" : "\<CR>"


