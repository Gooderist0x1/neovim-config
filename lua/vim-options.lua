-- Set the tab width to 2
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.wo.relativenumber = false

local opts= { noremap = true, silent = true }

-- Vim keymaps
--
--           Modes
--
--      normal_mode = "n"
--      insert_mode = "i"
--      visual_mode = "v"
--      visual_block_mode = "x"
--      term_mode = "t"
--      command mode = "c"
--

vim.g.mapleader = " "

-- normal
-- window opts  
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<A-v>", "<C-w>v<C-w>l:terminal<CR>", opts)

-- terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
