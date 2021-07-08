nnoremap <silent> ` :Telescope find_files theme=get_dropdown<CR>
nnoremap <silent> <leader>ff :Telescope git_files<CR>
nnoremap <silent> <leader>fc :Telescope git_commits<cr>
nnoremap <silent> <leader>fg :Telescope live_grep<cr>
nnoremap <silent> \ :Telescope buffers<cr>
nnoremap <silent> <leader>ft :Telescope help_tags<cr>
nnoremap <silent> <leader>fe :Telescope file_browser<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
EOF
