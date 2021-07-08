
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer

nnoremap <C-b> :NvimTreeToggle<CR>

nnoremap <leader><leader>r :NvimTreeRefresh<CR>
