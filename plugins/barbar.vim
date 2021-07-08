let bufferline = get(g:, 'bufferline', {})
let bufferline.auto_hide = v:false
let bufferline.closable = v:false
let bufferline.icons = "both"

nnoremap <silent>    <leader>1 :BufferGoto 1<CR>
nnoremap <silent>    <leader>2 :BufferGoto 2<CR>
nnoremap <silent>    <leader>3 :BufferGoto 3<CR>
nnoremap <silent>    <leader>4 :BufferGoto 4<CR>
nnoremap <silent>    <leader>5 :BufferGoto 5<CR>
nnoremap <silent>    <leader>6 :BufferGoto 6<CR>
nnoremap <silent>    <leader>7 :BufferGoto 7<CR>
nnoremap <silent>    <leader>8 :BufferGoto 8<CR>
nnoremap <silent>    <leader>9 :BufferGoto 9<CR>
nnoremap <silent>    <leader>tc :BufferClose<CR>
nnoremap <silent>    <leader>to :BufferCloseAllButCurrent<cr>
