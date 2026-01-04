-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.timeoutlen = 500
vim.o.swapfile = false
vim.o.winborder = "rounded"

-- Keymaps to Source / Save / Quit
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

-- Keymap to format by language
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

-- Disabled arrow to control in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move left!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move right!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move up!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move down!"<CR>')
