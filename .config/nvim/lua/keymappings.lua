local utils = require('utils')
local g = vim.g

g.mapleader = ' '

-- Commenting
utils.map("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
utils.map("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})



