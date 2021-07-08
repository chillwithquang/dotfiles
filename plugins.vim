Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'jremmen/vim-ripgrep'
Plug 'sainnhe/gruvbox-material'
Plug 'relastle/bluewery.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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
" Sudo
" Plug 'lambdalisue/suda.vim'
" let g:suda_smart_edit = 1
Plug 'editorconfig/editorconfig-vim'  " Tab/Space trough projects
Plug 'rbong/vim-flog'
""""""""""nightly""""""""""
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'
