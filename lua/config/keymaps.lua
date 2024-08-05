-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("discipline.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--Escape
keymap.set("i", "jk", "<Esc>", opts)

--Tab
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
  require("craftzdog.lsp").toggleInlayHints()
end)

-- Move lines up and down in normal mode using Ctrl+j and Ctrl+k
keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move lines up and down in visual mode using Ctrl+j and Ctrl+k
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
