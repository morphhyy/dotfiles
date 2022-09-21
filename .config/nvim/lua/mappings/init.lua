local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " "

-- NVIM TREE
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>o", ":NvimTreeFocus<CR>", opts)

-- Save and Exit
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)

-- Remove Highlight
map("n", "<leader><CR>", ":noh<CR>", opts)

-- Refresh Nvim Tree
map("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)

-- Packer Sync
map("n", "<leader>ps", ":PackerSync<CR>", opts)
-- Source
map("n", "<leader>ll", ":luafile %<CR>", opts)

-- Bufferline
map("n", "<A-Left>", ":bprevious<CR>", opts)
map("n", "<A-Right>", ":bnext<CR>", opts)
map("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", opts)
map("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", opts)
map("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", opts)
map("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", opts)
map("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", opts)
map("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", opts)

--Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Commenting
map("n", "<C-_>", "gcc", opts)
