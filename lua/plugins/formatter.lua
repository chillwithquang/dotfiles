local function is_cfg_present(cfg_name)
  return vim.fn.empty(vim.fn.glob(vim.loop.cwd() .. cfg_name)) ~= 1
end

local prettier = function()
  if is_cfg_present("/.prettierrc") then
    return {
      exe = "prettier",
      args = {
        string.format(
          "--stdin-filepath '%s' --config '%s'",
          vim.api.nvim_buf_get_name(0),
          vim.loop.cwd() .. "/.prettierrc"
        ),
      },
      stdin = true,
    }
  end

  -- fallback to global config
  return {
    exe = "prettier",
    args = {
      string.format(
        "--stdin-filepath '%s' --config '%s'",
        vim.api.nvim_buf_get_name(0),
        vim.fn.stdpath("config") .. "/.prettierrc"
      ),
    },
    stdin = true,
  }
end

local stylua = function()
  return {
    exe = "stylua --config-path ~/.config/nvim/.stylua -",
    stdin = true,
  }
end

require("formatter").setup({
  logging = false,
  filetype = {
    typescriptreact = { prettier },
    javascriptreact = { prettier },
    javascript = { prettier },
    typescript = { prettier },
    jsonc = { prettier },
    json = { prettier },
    html = { prettier },
    css = { prettier },
    scss = { prettier },
    php = { prettier },
    lua = { stylua },
  },
})

-- nnoremap {"gf", "<CMD>Format<CR>", { silent = true }}
-- {"mode":"full","isActive":false}

vim.api.nvim_set_keymap(
  "n",
  "<Leader><Leader>f",
  ":Format<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.tsx,*.json,*.jsonc,*.html,*.css,*.scss,*.lua FormatWrite
augroup END
]],
  true
)
