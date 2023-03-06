vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- move to other pane
map("n","<C-h>", "<C-w>h",default_opts)
map("n","<C-j>", "<C-w>j",default_opts)
map("n","<C-k>", "<C-w>k",default_opts)
map("n","<C-l>", "<C-w>l",default_opts)
