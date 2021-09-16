" nnoremap <silent> ` :Telescope find_files find_command=rg,--files<CR>
" nnoremap <silent> <leader>ff :Telescope git_files<CR>
" nnoremap <silent> <leader>gc :Telescope git_commits<cr>
" nnoremap <silent> <leader>gb :Telescope git_branches<cr>
" nnoremap <silent> <leader>fg :Telescope live_grep<cr>
" nnoremap <silent> \ :Telescope buffers<cr>
"
" lua << EOF
" local actions = require('telescope.actions')
" -- Global remapping
" ------------------------------
" require('telescope').setup{
"   defaults = {
"     mappings = {
"       i = {
"         ["<esc>"] = actions.close,
"         ["<C-s>"] = actions.select_horizontal,
"       },
"     },
"   }
" }
" EOF
