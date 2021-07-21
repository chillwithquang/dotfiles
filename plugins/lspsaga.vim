lua << EOF
local saga = require("lspsaga")
saga.init_lsp_saga({
  max_preview_lines = 15,
  code_action_keys = { quit = { "q","<Esc>" }, exec = "<CR>" },
  rename_action_keys = {
    quit = "<Esc>",
    exec = "<CR>", -- quit can be a table
  },
  finder_action_keys = {
    quit = { "q","<Esc>" },
    open = "<CR>",
    vsplit = "v",
    split = "s",
  },
})
EOF
" nnoremap <silent><leader>do :Lspsaga code_action<CR>
nnoremap <silent>sd :Lspsaga hover_doc<CR>
nnoremap <leader>rr :Lspsaga rename<CR>
nnoremap <silent>]g :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>[g :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> gh :Lspsaga signature_help<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
