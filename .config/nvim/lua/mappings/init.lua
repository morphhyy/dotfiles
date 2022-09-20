local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = ' '

-- NVIM TREE
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>o', ':NvimTreeFocus<CR>', opts)
-- Save and Exit
map('n', '<C-s>', ':w<CR>', opts)
map('n', '<C-q>', ':q<CR>', opts)

-- Remove Highlight
map('n', '<leader><CR>', ':noh<CR>', opts)

-- Refresh Nvim Tree
map('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)

-- Packer Sync
map('n', '<leader>ps', ':PackerSync<CR>', opts)

--Source
map('n', '<leader>lf', ':so %<CR>', opts)
