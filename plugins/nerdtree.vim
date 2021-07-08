" NERD TREE
" set rtp+=~/.config/nvim/plugged/nerdtree
" set rtp+=~/.config/nvim/plugged/vim-devicons
" set rtp+=~/.config/nvim/plugged/nerdtree-git-plugin
" " autocmd VimEnter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
" let NERDTreeShowLineNumbers=1
" let NERDTreeShowHidden=1
" let g:NERDTreeWinSize=24
" let g:NERDTreeMinimalUI = 1
" let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$', '^\.vscode$', 'node_modules']
"
" map <C-b> :NERDTreeToggle<CR>
" nmap <Leader><Leader>r :NERDTreeRefreshRoot<CR>
"
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
