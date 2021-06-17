local utils = require('utils')
local g = vim.g

g.mapleader = ' '
opt = {noremap = true, silent = true}

-- Commenting
utils.map("n", "<leader>/", ":CommentToggle<CR>", opt)
utils.map("v", "<leader>/", ":CommentToggle<CR>", opt)

-- git
utils.map("n", "<leader>gs", ":Git status -uno<CR>", opt)

