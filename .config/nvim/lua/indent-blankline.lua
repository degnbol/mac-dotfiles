local g = vim.g

-- hide indent characters for blank lines
g.indentLine_enabled = 1
g.indent_blankline_char = "▏"
g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}
g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

