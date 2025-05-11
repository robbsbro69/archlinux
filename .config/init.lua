-- ~/.config/nvim/init.lua

vim.opt.number = true        -- Show line numbers
vim.opt.relativenumber = true
vim.opt.mouse = 'a'          -- Enable mouse support
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Key mapping example
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '

