local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " "
-- ESC
map("i", "jj", "<ESC>", opts)

-- NVIM TREE
map("n", "<C-b>", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>o", ":NvimTreeFocus<CR>", opts)
-- Refresh Nvim Tree
map("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)

-- Save and Exit
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)
map("n", "<leader><leader>q", ":q!<CR>", opts)

-- Remove Highlight
map("n", "<leader><CR>", ":noh<CR>", opts)

-- Packer Sync
map("n", "<leader>ps", ":PackerSync<CR>", opts)
-- Source
map("n", "<leader>ll", ":luafile %<CR>", opts)

-- Bufferline
map("n", "<A-Left>", ":bprevious<CR>", opts)
map("n", "<A-Right>", ":bnext<CR>", opts)
map("n", "<leader>e", ":bdelete<CR>", opts)
map("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", opts)
map("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", opts)
map("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", opts)
map("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", opts)
map("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", opts)
map("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", opts)

-- Moving up and Down
map("n", "<A-Up>", ":m -2<CR>==", opts)
map("n", "<A-Down>", ":m .+1<CR>==", opts)
map("v", "<A-Up>", ":m '<-2<CR>gv", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv", opts)

--Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Copying
map("n", "<C-a>", "ggVG", opts)
map("v", "<C-c>", "y", opts)
