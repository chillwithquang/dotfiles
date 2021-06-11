Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'jremmen/vim-ripgrep'
Plug 'sainnhe/gruvbox-material'
Plug 'relastle/bluewery.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
source $HOME/.config/nvim/plugins/fzf.vimrc
Plug 'junegunn/vim-peekaboo'
Plug 'liuchengxu/vista.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons',{ 'on': [ 'NERDTreeToggle','NERDTreeFind'] }
autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin',{  'on': ['NERDTreeToggle','NERDTreeFind'] }
Plug 'epilande/vim-es2015-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
Plug 'posva/vim-vue'
let g:vue_pre_processors = ['scss']
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'SirVer/ultisnips'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'ap/vim-css-color'
Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'voldikss/vim-floaterm'
let g:floaterm_keymap_prev   = '<F9>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_width = 0.7
let g:floaterm_height = 0.55
" Linting & Fixing
Plug 'dense-analysis/ale'
" Sudo
" Plug 'lambdalisue/suda.vim'
" let g:suda_smart_edit = 1
Plug 'editorconfig/editorconfig-vim'  " Tab/Space trough projects
Plug 'rbong/vim-flog'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
