if has('nvim')
  let s:config_home = stdpath('config')
else
  let s:config_home = '~/.config/nvim'
endif

call plug#begin()

    source $HOME/.config/nvim/plugins.vim

call plug#end()

" #TEMPLATES {{{

" Prefill new files created by vim with contents from the following templates
source $HOME/.config/nvim/template.vim

" Basic configure
set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw
set laststatus=2                " Show status line always
set encoding=UTF-8              " Set default encoding to UTF-8
set backspace=indent,eol,start  " Mak1es backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number relativenumber                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=12                " Completion window max size
" set nocursorcolumn              " (turn off to speeds up highlighting)
set nocursorline                " (turn off speeds up highlighting)
set lazyredraw                  " Wait to redraw
set autoread                    " Automatically read changed files
set foldmethod=indent
set foldlevelstart=99
set wrap
set nrformats+=alpha
set cursorline

" au FocusGained,BufEnter * :checktime  " autoload

set guicursor=a:block

"" Fix backspace indent
 set backspace=indent,eol,start

" Css
set iskeyword+=-
" Theme

set termguicolors
" if has("termguicolors")     " set true colors
"     set t_8f=\[[38;2;%lu;%lu;%lum
"     set t_8b=\[[48;2;%lu;%lu;%lum
"     set termguicolors
" endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

syntax enable

" highlight cursorline numbers
hi CursorLineNr gui=bold guifg=#fc394f
hi vertsplit guifg=#7ea04d  guibg=bg
set fillchars+=vert:\⏽

if has('mouse')
  set mouse=a
endif

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

set encoding=utf-8

set updatetime=500   "Vim waits after you stop typing before it triggers the plugin is governed by the setting updatetime

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy

if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" file hidden
set wildmenu
set wildmode=longest:full,full
set wildignore+=**/node_modules/**,/node_modules/*,*/tmp/*,*.so,*.swp,*.zip


""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""

" Map leader
let mapleader=" "

"""""""""""""
" My Config "
"""""""""""""
" au BufNewFile,BufRead *.ejs setfiletype javascript
au FileType html  let b:AutoPairs = AutoPairsDefine({'<%' : ' %>', '<%=': ' %>'})

au BufRead,BufNewFile .eslintrc.json setlocal filetype=json
au BufRead,BufNewFile .babelrc setlocal filetype=json
au BufRead,BufNewFile .prettierrc setlocal filetype=json

au BufRead,BufNewFile .babelrc.js setlocal filetype=javascript
au BufRead,BufNewFile .sequelizerc setlocal filetype=javascript
au BufRead,BufNewFile *.ejs setlocal filetype=html

"Save file
nnoremap <Leader>w :w<CR>

"Save & Quit file
nnoremap <Leader>qq :wqa<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tm :tabmove<cr>

augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

" Rename current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
 if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

map <Leader>rnf :call RenameFile()<cr>

" Get off my lawn
nnoremap <S-h> :vertical resize -5<CR>
nnoremap <S-l> :vertical resize +5<CR>
nnoremap <S-k> :resize -5<CR>
nnoremap <S-j> :resize +5<CR>

noremap <Up>     :echoe "Use k"<CR>
noremap <Down>   :echoe "Use j"<CR>
noremap <Right>  :echoe "Use l"<CR>
noremap <Left>   :echoe "Use h"<CR>

inoremap <Up>     <C-o>:echoe "Use k"<CR>
inoremap <Down>   <C-o>:echoe "Use j"<CR>
inoremap <Right>  <C-o>:echoe "Use l"<CR>
inoremap <Left>   <C-o>:echoe "Use h"<CR>

inoremap <F1> <ESC>

"\\ Vim file
noremap <Leader><Leader>s :so ~/.config/nvim/init.vim<CR> " Source .vimrc file

" Remap split navigation
nnoremap <C-s> <C-w>s
nnoremap <C-v> <C-w>v

vmap < <gv
vmap > >gv

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

"\\ Switch between files
nnoremap <tab> :bp<CR> " Previous buffer file
nnoremap <S-tab> :bn<CR> " Next buffer file

" Move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"\\ highlight iCursor guifg=white guibg=steelblueQuickly select text you just pasted
noremap gV `[v`]

" Yank until end of line
nnoremap Y y$

"""""""""""""""""""""
" PLUGIN CONFIGURE "
""""""""""""""""""""
" set working directory t git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction

" Fugitive
nmap <leader>gaa :Git add .<CR>
nmap <leader>gcm :Git commit<CR>
nmap <leader>gs :Git<CR>
nmap gj :diffget //3<CR>
nmap gf :diffget //2<CR>
nmap <leader>gl :Flog<CR>

" JS config
let g:javascript_plugin_jsdoc = 1
let g:polyglot_disabled = ['jsx', 'tsx']
let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'tsx']

" Easymotion
" s{char}{char} to move to {char}{char} over windows
nmap <Leader>F <Plug>(easymotion-overwin-f)
" Search n-chars
map / <Plug>(easymotion-sn)

" Close tag
let g:closetag_filenames = '*.html,*.js, *.jsx, *.vue'
let g:closetag_emptyTags_caseSensitive = 1

" GitGutter
nmap ]c <Plug>(GitGutterNextHunk)zz
nmap [c <Plug>(GitGutterPrevHunk)zz

for s:f in split(glob(s:config_home . '/plugins/*.vim'), '\n')
  execute 'source' fnameescape(s:f)
endfor

lua require("lsp")
lua require("plugins")