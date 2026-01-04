-- AutoCMD is a code to make easier Nvim usage

-- Disable auto comment a new line
vim.api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- Highliting when copy
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (coping) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
