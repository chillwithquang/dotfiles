local ts_config = require("nvim-treesitter.configs")
  ts_config.setup {
  ensure_installed = {
    "tsx",
    "javascript",
    "typescript",
    "json",
    "yaml",
    "lua",
    "html",
    "css",
    "jsdoc",
    "dockerfile"
  },
  indent = {
    enable = true
  },
  autopairs = {
    enable = true
  },
  highlight = {
    enable = false,
    use_languagetree = true
  },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner"
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[["] = "@class.outer",
      },
    },
  },
  }
