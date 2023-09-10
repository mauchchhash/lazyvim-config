-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local n_opts = { noremap = true, silent = false }
local ns_opts = { noremap = true, silent = true }
-- local se_opts = { silent = true, expr = true }

-- Save fle
map("i", ",w", "<Esc>:w<cr>", ns_opts)
map("n", ",w", ":w<cr>", ns_opts)

-- Quit fle
map("n", ",q", "<Esc>:q<cr>", ns_opts)

-- Remove highlight
map("n", ",n", "<cmd>nohl<CR>", n_opts)

-- Duplicate line
map("n", "<A-d>", ":t.<CR>", ns_opts)
map("i", "<A-d>", "<Esc>:t.<CR>gi", ns_opts)

-- Move line / block
map("n", "<A-,>", ":m .-2<CR>==", ns_opts)
map("v", "<A-,>", ":m '<-2<CR>gv-gv", ns_opts)
map("v", "<A-.>", ":m '>+1<CR>gv-gv", ns_opts)
map("n", "<A-.>", ":m .+1<CR>==", ns_opts)

map("i", "<C-l>", "<Esc>A", ns_opts)
map("i", ";w", "<Esc>A;<Esc>:w<cr>", ns_opts)
map("i", ",,", "<Esc>A,", ns_opts)
map("i", [[,>]], "<Esc>A =><space>", ns_opts)
