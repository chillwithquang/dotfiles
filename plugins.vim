" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
" Insert and delete brakets, parens, quotes.
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Better motion
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'


" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Comments
Plug 'tomtom/tcomment_vim'

" Find and Replace
Plug 'jremmen/vim-ripgrep'

Plug 'editorconfig/editorconfig-vim'

" -----------------------------------------------------------------------------
" Theme
" -----------------------------------------------------------------------------
Plug 'sainnhe/gruvbox-material'
Plug 'mhartington/oceanic-next'
Plug 'relastle/bluewery.vim'
Plug 'hzchirs/vim-material'

" -----------------------------------------------------------------------------
" Fuzzy finder
" -----------------------------------------------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
source $HOME/.config/nvim/plugins/fzf.vimrc
" let g:fzf_layout = { 'down': '~40%' }

" -----------------------------------------------------------------------------
" Ctags
" -----------------------------------------------------------------------------
Plug 'junegunn/vim-peekaboo'
" -----------------------------------------------------------------------------
" Vista
" -----------------------------------------------------------------------------
Plug 'liuchengxu/vista.vim'
" -----------------------------------------------------------------------------
" Sidebar
" -----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons',{ 'on': [ 'NERDTreeToggle','NERDTreeFind'] }
autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'

" -----------------------------------------------------------------------------
" LightLine
Plug 'itchyny/lightline.vim'
" ----------------------------------------------------------------
" -----------------------------------------------------------------------------
" Text Objects
" -----------------------------------------------------------------------------
Plug 'tpope/vim-surround'

" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin',{  'on': ['NERDTreeToggle','NERDTreeFind'] }
" Plug 'jreybert/vimagit'
" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'

" Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
let g:vue_pre_processors = ['scss']
" -----------------------------------------------------------------------------
" Autocomplete and Snippets
" -----------------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'SirVer/ultisnips'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/config/snippets']

Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" -----------------------------------------------------------------------------
" HTML & CSS
" -----------------------------------------------------------------------------
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }

" -----------------------------------------------------------------------------
" Float Term
" -----------------------------------------------------------------------------
Plug 'voldikss/vim-floaterm'
"let g:floaterm_keymap_new    = '<Leader>tt'
" let g:floaterm_width = 0.7
" let g:floaterm_height = 0.55
" Linting & Fixing
Plug 'dense-analysis/ale'
" Sudo
" Plug 'lambdalisue/suda.vim'
" let g:suda_smart_edit = 1

Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'
Plug 'jlcrochet/vim-razor'

Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
let g:mkdp_refresh_slow = 1
