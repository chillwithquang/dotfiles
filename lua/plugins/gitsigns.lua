require'gitsigns'.setup{
  sign_priority = 6,
  current_line_blame = false,
  signs = {
    add = {text = "+"},
    change = {text = "~"},
    changedelete = {text = "="}
  }
}
