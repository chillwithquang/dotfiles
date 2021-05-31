
" Automatically add new cs files to the nearest project on save
" autocmd BufWritePost *.cs call OmniSharp#AddToProject()

"show type information automatically when the cursor stops moving
autocmd CursorHold *.cs OmniSharpTypeLookup
" autocmd CursorHold *.cs call OmniSharp#TypeLookup()

let g:OmniSharp_popup_position = 'peek'
let g:OmniSharp_edit_command = 'tabedit'

if has('nvim')
  let g:OmniSharp_popup_options = {
        \ 'winhl': 'Normal:NormalFloat'
        \}
else
  let g:OmniSharp_popup_options = {
        \ 'highlight': 'Normal',
        \ 'padding': [0, 0, 0, 0],
        \ 'border': [1]
        \}
endif

let g:OmniSharp_popup_mappings = {
      \ 'sigNext': '<C-n>',
      \ 'sigPrev': '<C-p>',
      \ 'pageDown': ['<C-f>', '<PageDown>'],
      \ 'pageUp': ['<C-b>', '<PageUp>']
      \}

let g:OmniSharp_highlight_groups = {
      \ 'ExcludedCode': 'NonText'
      \}

let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_want_snippet=1

let g:sharpenup_create_mappings = 0

autocmd FileType cs nmap <buffer> gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <buffer> gi <Plug>(omnisharp_go_to_implementations)
autocmd FileType cs nmap <buffer> pd <Plug>(omnisharp_preview_definition)
autocmd FileType cs nmap <buffer> pi <Plug>(omnisharp_preview_implementations)
autocmd FileType cs nmap <buffer> gy <Plug>(omnisharp_type_lookup)
autocmd FileType cs nmap <buffer> <leader>fm <Plug>(omnisharp_find_members)
autocmd FileType cs nmap <buffer> <leader>fs <Plug>(omnisharp_find_symbol)
autocmd FileType cs nmap <buffer> <leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nmap <buffer> <leader>fx :OmniSharpFixUsings<CR>
autocmd FileType cs nmap <buffer> <leader>sd <Plug>(omnisharp_documentation)
autocmd FileType cs nmap <buffer> <leader>do <Plug>(omnisharp_code_actions)
autocmd FileType cs nmap <buffer> <leader>rr <Plug>(omnisharp_rename)
autocmd FileType cs nmap <buffer> [[ <Plug>(omnisharp_navigate_up)
autocmd FileType cs nmap <buffer> ]] <Plug>(omnisharp_navigate_down)
autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
autocmd FileType cs nmap <buffer> <leader><leader>f <Plug>(omnisharp_code_format)
autocmd FileType cs nmap <buffer> <leader>gcc <Plug>(omnisharp_global_code_check)
