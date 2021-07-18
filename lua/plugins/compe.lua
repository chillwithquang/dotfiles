vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}

require("compe").setup({
  enabled = true,
  debug = false,
  min_length = 2,
  preselect = "always",
  source_timeout = 200,
  incomplete_delay = 400,
  allow_prefix_unmatch = false,

  source = {
    path = false,
    calc = true,
    buffer = true,
    vsnip = true,
    nvim_lsp = true,
    nvim_lua = true,
    treesitter = false
  },
})

vim.api.nvim_set_keymap(
  "i",
  "<CR>",
  "compe#confirm('<CR>')",
  { expr = true, silent = true }
)

vim.api.nvim_set_keymap(
  "i",
  "<C-y>",
  "compe#complete()",
  { expr = true, silent = true }
)
